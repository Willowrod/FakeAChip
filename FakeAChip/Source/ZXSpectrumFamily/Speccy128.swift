//
//  Speccy128.swift
//  FakeAChip
//
//  Created by Mike Hall on 06/04/2021.
//

import UIKit

class Speccy128: Speccy {
    
    static var instanceSpectrum128: Speccy128? = nil
    
    
    var ramBanks: [[UInt8]] = []
    var rom128k: [UInt8] = []
    var rom48k: [UInt8] = []
    var swapBank: [UInt8] = []
    var currentSwapBank = 0
    var bankSwitchEnabled = true
    var currentRom: ComputerModel = .Sinclair_Spectrum_128K
    
    override init() {
        super.init()
        loadRom()
        beeper.ticksPerFrame = tStatesPerFrame
       // ram = Array(repeating: 0x00, count: 0xC000)
    }
    
    override func allocateMemory() {
        for _ in 0...7{
        let ramBank = Array(repeating: UInt8(0x00), count: 0x4000)
            ramBanks.append(ramBank)
        }
        let romBank = Array(repeating: UInt8(0x00), count: 0x4000)
        memory.append(romBank)
        memory.append(ramBanks[5])
        memory.append(ramBanks[2])
        memory.append(ramBanks[0])
    }
    
    func swapRom(rom: Int){
        pauseProcessor = true
        switch rom {
        case 0:
            memory[0].removeAll()
            memory[0].append(contentsOf: rom128k)
            currentRom = .Sinclair_Spectrum_128K
        case 1:
            memory[0].removeAll()
            memory[0].append(contentsOf: rom48k)
            currentRom = .Sinclair_Spectrum_48K
        default:
            print("Invalid ROM selected")
        }
        pauseProcessor = false
    }
    
    func swapRam(bank: Int){
        if (bank != currentSwapBank){
            pauseProcessor = true
            ramBanks[currentSwapBank].removeAll()
            ramBanks[currentSwapBank].append(contentsOf: memory[3])
            memory[3].removeAll()
            memory[3].append(contentsOf: ramBanks[bank])
            currentSwapBank = bank
            pauseProcessor = false
        }
    
    }
    
    
    func swapRam(bank: Int, contents:[UInt8]){
        if (bank != currentSwapBank){
            pauseProcessor = true
            ramBanks[currentSwapBank].removeAll()
            ramBanks[currentSwapBank].append(contentsOf: memory[3])
            memory[3].removeAll()
            memory[3].append(contentsOf: ramBanks[bank])
            currentSwapBank = bank
            pauseProcessor = false
        }
    
    }
    
    override func loadZ80(z80Snap: String, path: String? = nil){
        let snapShot = Z80Format(fileName: z80Snap, path: path)
        let banks = snapShot.retrieveRam()
        if (banks.count > 0){
            if banks.count == 1{
        writeRAM(dataModel: banks[0], startAddress: 16384)
            } else {
                writeRAMBanks(dataModel: banks)
            }
    initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
            spareRegister.ld(value: pagingByte)
            performOut(port: 0xfd, map: 0x74, source: spareRegister)
        writeCodeBytes()
        }
    }
    override func writeRAMBanks(dataModel: [[UInt8]]){
      pauseProcessor = true
      for a in 0...7 {
          ramBanks[a].removeAll()
          ramBanks[a].append(contentsOf: dataModel[a])
          
          
              memory[1].removeAll()
          memory[2].removeAll()
          memory[3].removeAll()
              memory[1].append(contentsOf: dataModel[5])
          memory[2].append(contentsOf: dataModel[2])
          memory[3].append(contentsOf: dataModel[0])
      }
      bankSwitchEnabled = true
      writeCodeBytes()
      pauseProcessor = false
     }
  
  override func writeRAM(dataModel: Array<UInt8>, startAddress: Int = 0){
      pauseProcessor = true
      memory[1].removeAll()
  memory[2].removeAll()
  memory[3].removeAll()
      memory[1].append(contentsOf: Array(dataModel[...0x3fff]))
  memory[2].append(contentsOf: Array(dataModel[0x4000...0x7fff]))
  memory[3].append(contentsOf: Array(dataModel[0x8000...]))
      swapRom(rom: 1)
      bankSwitchEnabled = false
      pauseProcessor = false
  }
  
override func loadRom(){
      if let filePath = Bundle.main.path(forResource: "ZX128k", ofType: "rom"){
          print("File found - \(filePath)")
          let contents = NSData(contentsOfFile: filePath)
          let data = contents! as Data
          let dataString = data.hexString
          expandROM(data: dataString)
      } else {
          print("file not found")
      }
  }
  
  override func expandROM(data: String?){
      if let dataModel = data?.splitToBytesROM(separator: " "){
          //writeROM(dataModel: dataModel)
          rom128k = Array(dataModel[...0x3fff])
          rom48k = Array(dataModel[0x4000...])
          swapRom(rom: 0)
      } else {
          print("Failed to create ROM")
      }
  }
  
  override func performOut(port: UInt8, map: UInt8, source: Register) {
      if (port == 0xfd){
          if map == 0x7f {
// Ram / Rom swap
          if (bankSwitchEnabled){
          let newRamBank = source.value() & 0x07
         // let newScreenBank = source.value() & 0x08
          let newRomBank = source.value() & 0x10
          let disableSwitch = source.value() & 0x20

          swapRam(bank: Int(newRamBank))
          swapRom(rom: newRomBank == 0x00 ? 0 : 1)
          //swapScreen(rom: newScreenBank == 0x00 ? 5 : 7)
          bankSwitchEnabled = disableSwitch == 0
          }
          } else if map == 0xff {
              // AY Port routines
          }
      } else {
          super.performOut(port: port, map: map, source: source)
      }

  }
  
  override func writeROM(dataModel: Array<UInt8>){
      pauseProcessor = true
      interupt = false
      memory.insert(dataModel, at: 0)
      pauseProcessor = false
  }
  
  override func findRam(data:[UInt8]) -> String{
      let len = data.count
      var count = 0
      while count < memory[1].count - len{
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
  
  override func decRam(location: Int){
      if location < 0x4000 {
          print("Cannot write to ROM")
          return
      }
      var ramByte: UInt8 = fetchRam(location: location)
    ramByte = ramByte.dec()
      ldRam(location: location, value: ramByte)
  }
  
  override func incRam(location: Int){
      if location < 0x4000 {
          print("Cannot write to ROM")
          return
      }
      var ramByte: UInt8 = fetchRam(location: location)
    ramByte = ramByte.inc()
      ldRam(location: location, value: ramByte)
  }
  
  override func ldRam(location: Int, value: UInt8){
      if location < 0x4000 {
          print("Cannot write to ROM")
          return
      }
      if location > 0xFFFF {
          print("Past upper RAM limit")
          return
      }
      let bank = location / 0x4000
      let offset = location - (bank * 0x4000)
      memory[bank][offset] = value
  }
    
    override func blitScreen(){
        screenImage.setAttributes(bytes: memory[1][6144...6911], flashing: flashOn)
        screenImage.blit(bytes: memory[1][0...6143])
    }
  
  override func fetchRam(location: Int) -> UInt8 {
//            if location < 0x4000 {
//                return memory[0][location]
//            }
//        let ramLocation = location - 0x4000
//        if ramLocation <= memory[1].count{
//        return memory[1][ramLocation]
//        }
      let bank = location / 0x4000
      let offset = location - (bank * 0x4000)
      return memory[bank][offset]
//       return 0x00
  }
  
  override func fetchRamWord(location: Int) -> UInt16 {
//                if location < 0x4000 {
//                    return UInt16(memory[0][location]) &+ (UInt16(memory[0][location &+ 1]) * 256)
//                }
//        let ramLocation = location - 0x4000
//        if ramLocation < memory[1].count{
//        return UInt16(memory[1][ramLocation]) &+ (UInt16(memory[1][ramLocation &+ 1]) * 256)
      return UInt16(fetchRam(location: location)) &+ (UInt16(fetchRam(location: location &+ 1)) * 256)
//        }
//        return 0x00
  }
  
    override func doAdditionalPreProcessing() {
    }
    
    override func doAdditionalPostProcessing() {
        beeper.updateSample(UInt32(currentTStates), beep: clicks)
    }
    
    static func getSpectrum128Instance() -> Speccy128 {
        if let instance = Speccy128.instanceSpectrum128 {
        return instance
    }
        Speccy128.instanceSpectrum128 = Speccy128()
        return Speccy128.instanceSpectrum128!
    }
    
    override func disengage(){
        pause()
        beeper.stop()
        Speccy128.instanceSpectrum128 = nil
    }
}
