//
//  Speccy+RAM.swift
//  Speccy+RAM
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
extension Speccy {

    func findRamInternal(data:[UInt8]) -> String{
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
    
    func decRamInternal(location: Int){
        if location < 0x4000 {
            ldRom(location: location, value: fetchRam(location: location).dec())
            return
        }
        ldRam(location: location, value: fetchRam(location: location).dec())
    }
    
    func incRamInternal(location: Int){
        if location < 0x4000 {
            ldRom(location: location, value: fetchRam(location: location).inc())
            return
        }
        ldRam(location: location, value: fetchRam(location: location).inc())
    }
    
    func ldRamInternal(location: Int, value: UInt8){
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
    
    func fetchRamInternal(location: Int) -> UInt8 {
        if location < 0x4000 {
            return rom[location]
        }
        let ramLocation = location - 0x4000
        if ramLocation < ram.count{
            return ram[ramLocation]
        }
        return 0x00
    }
    
    func fetchRamWordInternal(location: Int) -> UInt16 {
        if location < 0x4000 {
            return UInt16(rom[location]) &+ (UInt16(rom[location &+ 1]) * 256)
        }
        let ramLocation = location - 0x4000
        if ramLocation + 1 < ram.count{
            return UInt16(ram[ramLocation]) &+ (UInt16(ram[ramLocation &+ 1]) * 256)
        }
        return 0x00
    }
    
    func memoryDumpInternal(withRom: Bool = true) -> [UInt8]{
        var model: [UInt8] = []
        if withRom {
            model.append(contentsOf: rom)
        }
        model.append(contentsOf: ram)
        return model
    }
    
}
