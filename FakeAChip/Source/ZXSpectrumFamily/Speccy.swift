//
//  Speccy.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation
import UIKit
import Zip
import SwiftUI
import os.log
import ZXDB_SDK

class Speccy: Z80 {
    
    let beeper = ZXBeeper.sharedInstance
    var borderColour: Color = .black
    var tape: TapeDelegate? = nil
    static var instanceSpectrum48: Speccy? = nil
    
    var shouldRestart = false
    
    var commandsPerFrame = 0
    
    override init() {
        super.init()
        loadRom()
        beeper.ticksPerFrame = tStatesPerFrame
        ram = Array(repeating: 0x00, count: 0xC000)
    }
    var framePair = RegisterPair("Frames", highValue: 0x00, lowValue: 0x00, id: -2)
    var edgePair = RegisterPair("Edges", highValue: 0x00, lowValue: 0x00, id: -3)
    var rom: [UInt8] = []
    var ram: [UInt8] = []
    var keyboard: [UInt8] = Array(repeating: 0xFF, count: 8)
    var kempston: UInt8 = 0x00
    var initPc: UInt16 = 0x5B00
    var screenImage = ZXBitmap(width: 256, height: 192, color: .blue)
    var restricted = true
    
    
    static func getSpectrum48Instance() -> Speccy{
        if let instance = Speccy.instanceSpectrum48 {
        return instance
    }
        Speccy.instanceSpectrum48 = Speccy()
        return Speccy.instanceSpectrum48!
    }
    
    override func disengage(){
        pause()
        beeper.stop()
        Speccy.instanceSpectrum48 = nil
        print("Disengaged....")
    }
    
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
    
    override func pause() {
        pauseProcessor = true
        restricted = true
        print("Paused")
    }
    
    override func resume() {
        pauseProcessor = false
        restricted = true
        print("Un Paused")
    }
    
    override func fast() {
        pauseProcessor = false
        restricted = false
        print("Fast forward")
    }
    
    override func reboot() {
        pause()
        PC = 0x00
        tape = nil
        resume()
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
       // print("Loading RAM at \(location) with \(value)")
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
    
    override func download() {
    //        guard let url = URL(string: "https://worldofspectrum.net/pub/sinclair/games/a/Airwolf.tzx.zip") else {
    //            return
    //        }
    //        Network.common.download(url: url) { (path: String?, error: ZXDBError?) in
    //            if error == nil {
    //                print("Path: \(path!)")
    //                self.unzipFile(path: path)
    //            } else {
    //                print("Error: \(error!.getAllMessages())")
    //            }
    //        }
     //   if #available(macCatalyst 15.0, *) {
            
                  if #available(iOS 15.0, *) {
            async {
                await asyncDownload()
            }
        } else {
            // Fallback on earlier versions
        }
    }
    
func asyncDownload() async {
               let availableTitles = try? await ZXDB().asyncSearch("Spellbound")
    availableTitles?.forEach { item in
        print(item)
    }
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
                        case "zip":
                            unzipFile(file: file)
                        case "tzx":
                            importTZX(tzxFile: file, path: path)
            default:
                print("Unknown file type = \(file)")
            }
        } else {
            print("Unknown or bad file = \(file)")
        }
        jumpPoints.removeAll()
        interupt = true
        pauseProcessor = false
    }
    
    func unzipFile(file: String){
        let fm = FileManager.default
        do {
            
            let filePath = Bundle.main.url(forResource: file.replacingOccurrences(of: ".zip", with: ""), withExtension: "zip")!
            let unzipDirectory = try Zip.quickUnzipFile(filePath)
            let items = try fm.contentsOfDirectory(atPath: unzipDirectory.path)
            if (items.count > 0){
                load(file: items[0], path: unzipDirectory.path)
            }
        }
        catch {
          print("Something went wrong")
        }
    }
    
    func unzipFile(path: String?){
        let fm = FileManager.default
        do {
            if let myPath = path {
                guard let url = URL(string: myPath) else {
                print("Error Unzipping")
                return
            }
                let unzipDirectory = try Zip.quickUnzipFile(url)
            let items = try fm.contentsOfDirectory(atPath: unzipDirectory.path)
            if (items.count > 0){
                load(file: items[0], path: unzipDirectory.path)
            }
            }
        }
        catch {
          print("Something went wrong")
        }
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
                var count = 0
                banks[0].forEach{ byte in
                    if count < ram.count {
                       // print ("count: \(count) - banks[0].count: \(banks[0].count)")
                    ram[count] = byte
                    count += 1
                    } else {
                        print ("RAM overflow!")
                    }
                }
                print("RAM import complete")
            }
        }
        
        initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
        spareRegister.ld(value: pagingByte)
        performOut(port: 0xfd, map: 0x74, source: spareRegister)
    }
    
    func importTZX(tzxFile: String, path: String? = nil){
        if let filePath = path, filePath.count > 0 {
        let file = "\(filePath)/\(tzxFile)"
        if let contents = NSData(contentsOfFile: file) {
            let data = contents as Data
            let dataString = data.hexString
            let tzx = TZXFormat.init(data: dataString)
            loadingTStates = 0
            tape = tzx
        }
        } else if let filePath = Bundle.main.path(forResource: tzxFile.replacingOccurrences(of: ".tzx", with: ""), ofType: "tzx"){
      //      pause()
            print("File found - \(filePath)")
            let contents = NSData(contentsOfFile: filePath)
            let data = contents! as Data
            let dataString = data.hexString
            let tzx = TZXFormat.init(data: dataString)
            loadingTStates = 0
            tape = tzx
        } else {
            //hexView.text = "- - - - - - - -"
            print("file not found")
        }
    }
    
    func initialPC() -> UInt16 {
        return initPc
    }
    
    override func startProcessing() {
        processing = true
        self.resume()
        DispatchQueue.background(background: {
            self.process()
        }, completion:{
            if self.shouldRestart {
                self.startProcessing()
            }
        })
    }
    
    override func stopProcessing() {
        self.pause()
        processing = false
    }
    
    override func blitScreen(){
        screenImage.setAttributes(bytes: ram[6144...6911], flashing: flashOn)
        screenImage.blit(bytes: ram[0...6143])
    }
    
    override func renderFrame(){
        if restricted {
        beeper.endFrame()
        }
        flashCount += 1
        if (flashCount >= 16){
            flashCount = 0
            flashOn = !flashOn
        }
//      //
            self.blitScreen()
        let pairs = [AF.registerPair, BC.registerPair, DE.registerPair, HL.registerPair, IX.registerPair, IY.registerPair, framePair.registerPair, edgePair.registerPair]
            if let screen = UIImage.init(bitmap: screenImage){
                DispatchQueue.main.sync {
                data?.vdu = VDU(image: screen, border: borderColour)
                data?.registerPairs = RegisterSetModel(registerPairs: pairs)
            }
        }
        frameEnds = true
        runInterupt()
    }
    
    override func process(){
        currentTStates = 0
        
        print ("Spectrum on - processing: \(processing)")
        while processing {
            framePair.inc()
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

                        shouldForceBreak = false
                        self.doAdditionalPreProcessing()

                        opCode(byte: byte)
//                        edgePair.ld(value: UInt16(PC))
//
//                        if PC > 0x4000{
//                            print("Running snapshot")
//                        } else {
//
//                        }
//
//                        if PC == 0x05fa{
//                            print("New edge found - TState: \(currentTStates) A: \(a().hex()) F: (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
//                        }
                        self.doAdditionalPostProcessing()

                    }
                    if currentTStates >= tStatesPerFrame {
                        currentTStates = 0
                        renderFrame()
                    }
                } else {
                    let time = Date().timeIntervalSince1970
                    if (!restricted || frameStarted + 0.02 <= time){
                        frameStarted = time
                        frameEnds = false
                    }
                }
            }
        }
    }
    
    func doAdditionalPreProcessing(){
        
    }
    
    func doAdditionalPostProcessing(){
        if restricted {
        beeper.updateSample(UInt32(currentTStates), beep: clicks)
        }
    }
    
    func runInterupt() {
        if (interupt){
            shouldRunInterupt = true
        }
    }
    
    static let logHandler = OSLog(subsystem: "com.willowrod.FakeAChip", category: .pointsOfInterest)
    
    override func performIn(port: UInt8, map: UInt8, destination: Register){
//        let signpostID = OSSignpostID(log: Speccy.logHandler)
//        os_signpost(.begin, log: Speccy.logHandler, name: "PerformingIn", signpostID: signpostID)
//        defer {
//            os_signpost(.end, log: Speccy.logHandler, name: "PerformingIn", signpostID: signpostID)
//        }
        if (port == 0xfe){
     
            var byteVal: UInt8 = 0x1f
            switch map{
            case 0xfe:
                byteVal = keyboard[7] //destination.inCommand(byte: keyboard[7])
            case 0xfd:
                byteVal = keyboard[6] //destination.inCommand(byte: keyboard[6] & ear)
            case 0xfb:
                byteVal = keyboard[5] //destination.inCommand(byte: keyboard[5] & ear)
            case 0xf7:
                byteVal = keyboard[4] //destination.inCommand(byte: keyboard[4] & ear)
            case 0xef:
                byteVal = keyboard[3] //destination.inCommand(byte: keyboard[3] & ear)
            case 0xdf:
                byteVal = keyboard[2] //destination.inCommand(byte: keyboard[2] & ear)
            case 0xbf:
                byteVal = keyboard[1] //destination.inCommand(byte: keyboard[1] & ear)
            case 0x7f:
                byteVal = keyboard[0] //destination.inCommand(byte: keyboard[0] & ear)
            default:
                break
            }
//            byteVal = byteVal.set(bit: 6, value: true)
            if let data = tape?.fetchData(tState: loadingTStates){
                byteVal = byteVal.set(bit: 6, value: data.signal)
                if data.reset {
                    loadingTStates = 0
                  //  edgePair.inc()
                }
            } else {
                tape = nil
            }
            destination.inCommand(byte: byteVal)
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
 //           DispatchQueue.main.sync {
                updateBorder(source.value())
//                clicks = source.value() & 24
 //           }
        }
        if (port == 0xfd){ // 128k paging
        }
    }
    
    func borderColour(_ colour: UInt8) -> Color {
        let zxColour = colour.border()
        return Color(red: Double(zxColour.r), green: Double(zxColour.g), blue: Double(zxColour.b), opacity: 1)
    }
    
    func updateBorder(_ colour: UInt8) {
//        let newColour = borderColour(colour)
//        if borderColour == newColour{
//            return
//        }
        borderColour = borderColour(colour)
//        if let data = data {
//            data.vdu = VDU(image: data.vdu.image, border: newColour)
//        }
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
    
    override func initialiseRegisters(header: RegisterModel){
        testRegisters()
        aR().ld(value:header.primary.registerA)
        Z80.fR().ld(value:header.primary.registerF)
        bR().ld(value:header.primary.registerB)
        cR().ld(value:header.primary.registerC)
        dR().ld(value:header.primary.registerD)
        eR().ld(value:header.primary.registerE)
        hR().ld(value:header.primary.registerH)
        lR().ld(value:header.primary.registerL)
        
        BC2.ld(value:header.registerPair(l: header.swap.registerC, h: header.swap.registerB))
        DE2.ld(value:header.registerPair(l: header.swap.registerE, h: header.swap.registerD))
        HL2.ld(value:header.registerPair(l: header.swap.registerL, h: header.swap.registerH))
        AF2.ld(value:header.registerPair(l: header.swap.registerF, h: header.swap.registerA))
        
        SP = header.registerSP
        ix().ld(value: header.registerIX)
        iy().ld(value: header.registerIY)
        
        I.ld(value: header.registerI)
        R.ld(value: header.registerR)
        
        interuptMode = header.interuptMode
        interupt = header.interuptEnabled
        interupt2 = interupt
        
        if (header.shouldReturn){
            ret()
            initPc = PC
        } else {
            PC = header.registerPC
            initPc = PC
        }
        pagingByte = header.ramBankSetting
        updateBorder(header.borderColour)
    }
    
    override func memoryDump(withRom: Bool = true) -> [UInt8]{
        var model: [UInt8] = []
        if withRom {
            model.append(contentsOf: rom)
        }
            model.append(contentsOf: ram)
        return model
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
