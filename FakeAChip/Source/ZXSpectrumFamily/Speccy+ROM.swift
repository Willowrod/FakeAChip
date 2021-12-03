//
//  Speccy+ROM.swift
//  Speccy+ROM
//
//  Created by Mike Hall on 24/08/2021.
//

import Foundation

extension Speccy {
    func loadRomInternal(){
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
    
    func expandROMInternal(data: String?){
        if let dataModel = data?.splitToBytesROM(separator: " "){
            writeROM(dataModel: dataModel)
        } else {
            print("Failed to create ROM")
        }
    }
    
    func writeROMInternal(dataModel: [UInt8]){
        //        pauseProcessor = true
        //        interupt = false
        rom = dataModel
        //        pauseProcessor = false
    }
    
    func ldRomInternal(location: Int, value: UInt8){
        if (testMode){
            rom[location] = value
        } else {
            print("Cannot write to ROM from PC:\(thisPC.hex()) to \(UInt16(location).hex()) with value: \(value.hex())")
        }
    }
}
