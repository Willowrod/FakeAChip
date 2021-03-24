//
//  Speccy.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation
import UIKit

class Speccy: Z80 {
    
    static var instance = Speccy()
    let beeper = ZXBeeper()
    
    override init() {
        super.init()
        loadRom()
        beeper.ticksPerFrame = tStatesPerFrame
        ram = Array(repeating: 0x00, count: 0xC000)
    }
    
    var rom: [UInt8] = []
    var ram: [UInt8] = []
    var keyboard: [UInt8] = Array(repeating: 0xFF, count: 8)
    var kempston: UInt8 = 0x00
    var screenImage = ZXBitmap(width: 256, height: 192, color: .blue)
    func loadRom(){
        if (testMode){
            rom = Array(repeating: 0x00, count: 0x4000)
        } else if let filePath = Bundle.main.path(forResource: "ZX48k", ofType: "rom"){
            print("File found - \(filePath)")
            let contents = NSData(contentsOfFile: filePath)
            let data = contents! as Data
            let dataString = data.hexString
            expandROM(data: dataString)
        } else {
            print("file not found")
        }
    }
    
    func expandROM(data: String?){
        if let dataModel = data?.splitToBytesROM(separator: " "){
            writeROM(dataModel: dataModel)
        } else {
            print("Failed to create ROM")
        }
    }
    
    func writeROM(dataModel: [UInt8]){
//        pauseProcessor = true
//        interupt = false
        rom = dataModel
//        pauseProcessor = false
    }
    
    override func findRam(data:[UInt8]) -> String{
        let len = data.count
        var count = 0
        while count < ram.count - len{
            let ramByte = fetchRam(location: count)
            if (ramByte == data[0]){
                var match = true
                for a in 1..<len {
                    if fetchRam(location: count + a) != data[a]{
                        match = false
                    }
                }
                if match {
                    print ("\(String(count, radix: 16)), ")
            }
        }
            count += 1
        }
        return "sweep completed"
    }
    
    func ldRom(location: Int, value: UInt8){
        if (testMode){
        rom[location] = value
        } else {
            print("Cannot write to ROM from PC:\(PC.hex()) to \(UInt16(location).hex()) with value: \(value.hex())")
        }
    }
    
    override func decRam(location: Int){
        if location < 0x4000 {
            ldRom(location: location, value: fetchRam(location: location).dec())
            return
        }
      //  let loc = location - 0x4000
        ldRam(location: location, value: fetchRam(location: location).dec())
    }
    
    override func incRam(location: Int){
        if location < 0x4000 {
            ldRom(location: location, value: fetchRam(location: location).inc())
            return
        }
       //let loc = location - 0x4000
        ldRam(location: location, value: fetchRam(location: location).inc())
    }
    
    override func ldRam(location: Int, value: UInt8){
        if location < 0x4000 {
            ldRom(location: location, value: value)
            return
        }
        let ramLocation = location - 0x4000
        if ramLocation < ram.count{
            ram[ramLocation] = value
            ramUpdated = true
        } else {
            print("Attempting to write to invalid memory location \(String(location, radix: 16)) From \(PC.hex())")
        }
    }
    
    override func fetchRam(location: Int) -> UInt8 {
            if location < 0x4000 {
                return rom[location]
            }
        let ramLocation = location - 0x4000
        if ramLocation < ram.count{
        return ram[ramLocation]
        }
        return 0x00
    }
    
    override func fetchRamWord(location: Int) -> UInt16 {
                if location < 0x4000 {
                    return UInt16(rom[location]) &+ (UInt16(rom[location &+ 1]) * 256)
                }
        let ramLocation = location - 0x4000
        if ramLocation + 1 < ram.count{
        return UInt16(ram[ramLocation]) &+ (UInt16(ram[ramLocation &+ 1]) * 256)
        }
        return 0x00
    }
    
    override func load(file: String, path: String? = nil){
        
            pauseProcessor = true
            interupt = false
       var fileStruct = file.split(separator: ".")
        
        if fileStruct.count > 1{
            let fileType = fileStruct.last
            fileStruct.removeLast()
            let name = fileStruct.joined(separator: ".")
            switch fileType {
            case "sna":
                loadSnapshot(sna: name)
            case "z80":
                loadZ80(z80Snap: name, path: path)
//            case "zip":
//                unzipFile(file: file)
//            case "tzx":
//                importTZX(tzxFile: name)
            default:
                print("Unknown file type = \(file)")
            }
        } else {
            print("Unknown or bad file = \(file)")
        }
        
        interupt = true
            pauseProcessor = false
    }
    
    func loadSnapshot(sna: String){
            let snapShot = SNAFormat(fileName: sna)
        //writeRAM(dataModel: snapShot.ramBanks[0], startAddress: 16384)
        var count = 0
        snapShot.ramBanks[0].forEach{ byte in
            ram[count] = byte
            count += 1
        }
        initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
//        writeCodeBytes()
    }
    
    
    func loadZ80(z80Snap: String, path: String? = nil){
        let snapShot = Z80Format(fileName: z80Snap, path: path)
        let banks = snapShot.retrieveRam()
        if (banks.count > 0){
            if banks.count == 1{
              //  ram = Array(repeating: 0x00, count: 0x4000)
                //ram.removeAll()
                var count = 0
                banks[0].forEach{ byte in
                    ram[count] = byte
                    count += 1
                }
            }
        }
        
        initialiseRegisters(header: snapShot.registers)
            header = snapShot.registers
                spareRegister.ld(value: pagingByte)
                performOut(port: 0xfd, map: 0x74, source: spareRegister)
    }
    
    override func startProcessing() {
        DispatchQueue.background(background: {
            self.process()
        }, completion:{
            // when background job finished, do something in main thread
        })
    }
    
    override func blitScreen(){
        screenImage.setAttributes(bytes: ram[6144...6911], flashing: flashOn)
        screenImage.blit(bytes: ram[0...6143])
    }
    
    override func renderFrame(){
        beeper.endFrame()
        flashCount += 1
        if (flashCount >= 16){
            flashCount = 0
            flashOn = !flashOn
        }
        DispatchQueue.main.sync {
            self.blitScreen()
//            self.delegate?.updateView(bitmap: self.screenBuffer)
            if let screen = UIImage.init(bitmap: screenImage){
                data?.vdu = VDU(image: screen)
            }
            let pairs = [AF.registerPair, BC.registerPair, DE.registerPair, HL.registerPair, IX.registerPair, IY.registerPair]
            data?.registerPairs = RegisterSetModel(registerPairs: pairs)
        }
        frameEnds = true
        runInterupt()
    }
    
    override func process(){
        currentTStates = 0
        while true {
            if !pauseProcessor {
                        if (!frameEnds) {
            if (shouldRunInterupt){
                interupt = false
                interupt2 = false
                push(value: PC)
                switch interuptMode {
                case 0:
                    PC = 0x0066
                case 1:
                    PC = 0x0038
                default:
                    let intAddress = (UInt16(I.value()) * 256) + UInt16(R.value())
                    PC = fetchRamWord(location: intAddress)
                    
                }
                halt = false
                shouldRunInterupt = false
            }
            if (halt){
                instructionComplete(states: 4, length: 0)
                halt = false
            } else {
                let byte = fetchRam(location: PC)
                shouldBreak = breakPoints.contains(PC) || shouldStep || shouldForceBreak
                if (shouldBreak){
                    DispatchQueue.main.sync {
//                        delegate?.updateRegisters()
//                        delegate?.updateDebug(line: PC)
                    }
                    while shouldBreak {
                    }
                }
                
                shouldForceBreak = false//
//                if PC >= 0x4000 {
//          print("Next: \(String(PC, radix:16)) Opcode: \(String(byte, radix:16)) AF: \(String(AF.value(), radix: 16)) AF2: \(String(AF2.value(), radix: 16)) (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
//                    //                  print("Next: \(String(PC, radix:16))  AF: \(String(AF.value(), radix: 16)) AF2: \(String(AF2.value(), radix: 16))")
//                    
////                    if PC == 0x0bbe{
////                    print("Breaking here")
////                    }
//               }
                
                opCode(byte: byte)
                beeper.updateSample(UInt32(currentTStates), beep: clicks)
        
            }
            if currentTStates >= tStatesPerFrame {
                currentTStates = 0
                renderFrame()
            }
            
                        }
                        else {
                            let time = Date().timeIntervalSince1970
                            if (frameStarted + 0.02 <= time){
                                frameStarted = time
                                frameEnds = false
                            }
                        }
            }
        }
    }
    
    func runInterupt() {
        if (interupt){
            shouldRunInterupt = true
        }
    }
    
    override func performIn(port: UInt8, map: UInt8, destination: Register){
        if (port == 0xfe){
        switch map{
        case 0xfe:
            destination.inCommand(byte: keyboard[7])
        case 0xfd:
            destination.inCommand(byte: keyboard[6])
        case 0xfb:
            destination.inCommand(byte: keyboard[5])
        case 0xf7:
            destination.inCommand(byte: keyboard[4])
        case 0xef:
            destination.inCommand(byte: keyboard[3])
        case 0xdf:
            destination.inCommand(byte: keyboard[2])
        case 0xbf:
            destination.inCommand(byte: keyboard[1])
        case 0x7f:
            destination.inCommand(byte: keyboard[0])
        default:
            break
        }
        } else if port == 0x7f {
 //           print("Checking for Fuller Joystick")
            //             destination.inCommand(byte: kempston)
        } else if port == 0x1f {
          destination.inCommand(byte: kempston)
 //          print("Checking for Kempston Joystick")
        } else {
 //           print("Checking port \(port.hex())")
        }
    }
    
    override func performOut(port: UInt8, map: UInt8, source: Register) {
        if (port == 0xfe){ // Change the border colour
                DispatchQueue.main.sync {
        // TO DO:   delegate?.updateBorder(colour: source.byteValue.border())
                }
            clicks = source.value() & 24
        }
        if (port == 0xfd){ // 128k paging
      //      delegate?.updateBorder(colour: source.byteValue.border())
        }
    }
    
    
    override func keyboardInteraction(key: Int, pressed: Bool){
        var bank = -1
        var bit = -1
        switch key{
        case 4: // a
            bank = 6
            bit = 0
        case 5: // b
            bank = 0
            bit = 4
        case 6: // c
            bank = 7
            bit = 3
        case 7: // d
            bank = 6
            bit = 2
        case 8: // e
            bank = 5
            bit = 2
        case 9: // f
            bank = 6
            bit = 3
        case 10: // g
            bank = 6
            bit = 4
        case 11: // h
            bank = 1
            bit = 4
        case 12: // i
            bank = 2
            bit = 2
        case 13: // j
            bank = 1
            bit = 3
        case 14: // k
            bank = 1
            bit = 2
        case 15: // l
            bank = 1
            bit = 1
        case 16: // m
            bank = 0
            bit = 2
        case 17: // n
            bank = 0
            bit = 3
        case 18: // o
            bank = 2
            bit = 1
        case 19: // p
            bank = 2
            bit = 0
        case 20: // q
            bank = 5
            bit = 0
        case 21: // r
            bank = 5
            bit = 3
        case 22: // s
            bank = 6
            bit = 1
        case 23: // t
            bank = 5
            bit = 4
        case 24: // u
            bank = 2
            bit = 3
        case 25: // v
            bank = 7
            bit = 4
        case 26: // w
            bank = 5
            bit = 1
        case 27: // x
            bank = 7
            bit = 2
        case 28: // y
            bank = 2
            bit = 4
        case 29: // z
            bank = 7
            bit = 1
        case 30: // 1
            bank = 4
            bit = 0
        case 31: // 2
            bank = 4
            bit = 1
        case 32: // 3
            bank = 4
            bit = 2
        case 33: // 4
            bank = 4
            bit = 3
        case 34: // 5
            bank = 4
            bit = 4
        case 35: // 6
            bank = 3
            bit = 4
        case 36: // 7
            bank = 3
            bit = 3
        case 37: // 8
            bank = 3
            bit = 2
        case 38: // 9
            bank = 3
            bit = 1
        case 39: // 0
            bank = 3
            bit = 0
        case 40: // enter
            bank = 1
            bit = 0
        case 44: // space
            bank = 0
            bit = 0
        case 225: // LShift (CS)
            bank = 7
            bit = 0
        case 224: // LCnt (SS)
            bank = 0
            bit = 1
            
        default:
            bank = -1
            bit = -1
        }
        if bank >= 0 && bit >= 0 {
            keyboard[bank] = pressed ? keyboard[bank].clear(bit: bit) : keyboard[bank].set(bit: bit)
        }
    }
    
    
    override func keyboardInteraction(bank: Int, bit: Int, pressed: Bool) {
        keyboard[bank] = pressed ? keyboard[bank].clear(bit: bit) : keyboard[bank].set(bit: bit)
    }
    
    override func joystickInteraction(key: Int, pressed: Bool){
        // Kempston 000FUDLR
        switch key{
        case 0: // Left
            kempston = pressed ? kempston.set(bit: 1) : kempston.clear(bit: 1)
        case 1: // Right
            kempston = pressed ? kempston.set(bit: 0) : kempston.clear(bit: 0)
        case 2: // Up
            kempston = pressed ? kempston.set(bit: 3) : kempston.clear(bit: 3)
        case 3: // Down
            kempston = pressed ? kempston.set(bit: 2) : kempston.clear(bit: 2)
        case 4: // LFire
            kempston = pressed ? kempston.set(bit: 4) : kempston.clear(bit: 4)
        case 5: // RFire
            kempston = pressed ? kempston.set(bit: 4) : kempston.clear(bit: 4)
        default:
         break
        }
        
        
    }
    
    
    func update(){
        AF.inc()
        if AF.value() == 0x00 {
            BC.inc()
            if BC.value() == 0x00 {
                DE.inc()
                if DE.value() == 0x00 {
                    HL.inc()
                    if HL.value() == 0x00 {
                        IX.inc()
                        if IX.value() == 0x00 {
                            IY.inc()
                        }
                    }
                }
            }
        }
    }
}
