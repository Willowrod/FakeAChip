//
//  UInt8+Bitwise.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
extension UInt8 {
    mutating func clear(bit: Int){
        self = (self & ~(1 << bit))
    }
    
    mutating func set(bit: Int){
        self = (self | (1 << bit))
    }
    
    mutating func set(bit: Int, value: Bool){
        if (value){
            set(bit: bit)
        } else {
            clear(bit: bit)
        }
    }
    
    func twosCompliment() -> UInt8 {
        return ~self &+ 1
    }
    
    func lowerNibble() -> UInt8 {
        return self & 15
    }
    
    func upperNibble() -> UInt8 {
        return (self & 240) >> 4
    }
    
  
    
    func hex() -> String {
        return String(self, radix: 16).padded(size: 2)
    }
    
    func bin() -> String {
        return String(self, radix: 2).padded(size: 8)
    }
    
//    func createCodeByte(lineNumber: Int = 0) -> CodeByteModel {
//        return CodeByteModel(withHex: "\(self.hex())", line: lineNumber)
//    }
    
}
