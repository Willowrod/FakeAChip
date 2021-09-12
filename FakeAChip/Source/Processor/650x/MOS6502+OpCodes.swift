//
//  6502+OpCodes.swift
//  6502+OpCodes
//
//  Created by Mike Hall on 10/09/2021.
//

import Foundation

extension MOS6502 {
    
    
    func opCode(byte: UInt8){
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let word: UInt16 = (UInt16(byte2) * 256) + UInt16(byte1)
        switch byte {
            
            
        case 0x00: // BRK impl
            instructionComplete(states: 4)
            
            
            
            
            
            
            
        default:
            break
            
        }
    }
}
