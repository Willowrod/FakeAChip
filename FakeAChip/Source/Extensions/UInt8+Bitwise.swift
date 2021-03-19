//
//  UInt8+Bitwise.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
extension UInt8 {
    func clear(bit: Int) -> UInt8 {
        return (self & ~(1 << bit))
    }
    
     func set(bit: Int) -> UInt8 {
        return (self | (1 << bit))
    }
    
    func set(bit: Int, value: Bool) -> UInt8 {
        if (value){
           return set(bit: bit)
        } else {
           return clear(bit: bit)
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
    
    func inc() -> UInt8 {
        let oldValue = self
        let newValue = self &+ 1
        Z80.F.zero(passedValue: newValue)
        Z80.F.set(bit: Flag.OVERFLOW, value: oldValue == 0x7f)
        Z80.F.halfCarry(passedValue: 1, oldValue: oldValue)
        Z80.F.positive()
        Z80.F.sign(passedValue: newValue)
        Z80.F.bits5And3(calculatedValue: newValue)
        return newValue
    }
    
    func dec() -> UInt8 {
        let oldValue = self
        let newValue = self &- 1
        Z80.F.zero(passedValue: newValue)
        Z80.F.set(bit: Flag.OVERFLOW, value: oldValue == 0x80)
        Z80.F.halfCarrySB(passedValue: 1, oldValue: oldValue)
        Z80.F.negative()
        Z80.F.sign(passedValue: newValue)
        Z80.F.bits5And3(calculatedValue: newValue)
        return newValue
    }
    
    func rlc() -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0, value: bit7)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func rrc() -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: bit0)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func rl() -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0, value: Z80.F.readBit(bit: Flag.CARRY))
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func rr() -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: Z80.F.readBit(bit: Flag.CARRY))
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func sla() -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.clear(bit: 0)
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func sra() -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        let bit7 = self.isSet(bit: 7)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: bit7)
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func sll() -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0)
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func srl() -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.clear(bit: 7)
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.positive()
        Z80.F.set(bit: Flag.ZERO, value: newValue == 0)
        Z80.F.bits5And3(calculatedValue: newValue)
        Z80.F.sign(passedValue: newValue)
        Z80.F.parity(passedValue: newValue)
        return newValue
    }
    
    func testBit(bit: Int){
        Z80.F.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
        Z80.F.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
        Z80.F.setBit(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: self)
        Z80.F.positive()
        if (bit == 7){
            Z80.F.sign(passedValue: self)
        } else {
            Z80.F.clearBit(bit: Flag.SIGN)
        }
    }
    
    func testBit(bit: Int, memPtr: UInt16){
        Z80.F.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
        Z80.F.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
        Z80.F.setBit(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: memPtr.highByte())
        Z80.F.positive()
        if (bit == 7){
            Z80.F.sign(passedValue: self)
        } else {
            Z80.F.clearBit(bit: Flag.SIGN)
        }
    }
    
    func s53() {
        Z80.F.set(bit: Flag.SIGN, value: self.isSet(bit: Flag.SIGN))
        Z80.F.set(bit: 5, value: self.isSet(bit: 5))
        Z80.F.set(bit: 3, value: self.isSet(bit: 3))
    }
    
    func parity(){
        var count = 0
        for _ in 0...7 {
            if self.isSet(bit: 0){
                count += 1
            }
        }
        Z80.F.set(bit: Flag.PARITY, value: count % 2 == 0)
    }
    
//    func createCodeByte(lineNumber: Int = 0) -> CodeByteModel {
//        return CodeByteModel(withHex: "\(self.hex())", line: lineNumber)
//    }
    
}
