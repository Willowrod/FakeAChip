//
//  RawZ80Processor.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/11/2021.
//

import Foundation

class RawZ80Processor: Z80 {
  
  
    var rom: [UInt8] = []
    var ram: [UInt8] = []
    var totalRam: UInt16 = 0xffff - 0x4000
 
    
    override init() {
        super.init()
        ram = Array(repeating: 0x00, count: 0xC000)
    }
    
    override func decRam(location: Int){
        ldRam(location: location, value: fetchRam(location: location).dec())
    }
    
    override func incRam(location: Int){
        ldRam(location: location, value: fetchRam(location: location).inc())
    }
    
    override func ldRam(location: Int, value: UInt8){
        if location < ram.count{
            ram[location] = value
            ramUpdated = true
        } else {
            print("Attempting to write to invalid memory location \(String(location, radix: 16)) From \(PC.hex())")
        }
    }
    
    override func fetchRam(location: Int) -> UInt8 {
        if location < ram.count{
        return ram[location]
    }
    return 0x00
    }
    
    override func fetchRamWord(location: Int) -> UInt16 {
        if location + 1 < ram.count{
            return UInt16(ram[location]) &+ (UInt16(ram[location &+ 1]) * 256)
        }
        return 0x00
    }
    
 
    
    override func performIn(port: UInt8, map: UInt8, destination: Register){
//performInInternal(port: port, map: map, destination: destination)
    }
    
    override func performOut(port: UInt8, map: UInt8, source: Register) {
     //performOutInternal(port: port, map: map, source: source)
    }
    
  
}
