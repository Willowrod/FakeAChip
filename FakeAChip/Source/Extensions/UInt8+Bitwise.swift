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
    
    func inc(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let oldValue = self
        let newValue = self &+ 1
        flagRegister.zero(passedValue: newValue)
        flagRegister.set(bit: Flag.OVERFLOW, value: oldValue == 0x7f)
        flagRegister.halfCarry(passedValue: 1, oldValue: oldValue)
        flagRegister.positive()
        flagRegister.sign(passedValue: newValue)
        flagRegister.bits5And3(calculatedValue: newValue)
        return newValue
    }
    
    func dec(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let oldValue = self
        let newValue = self &- 1
        flagRegister.zero(passedValue: newValue)
        flagRegister.set(bit: Flag.OVERFLOW, value: oldValue == 0x80)
        flagRegister.halfCarrySB(passedValue: 1, oldValue: oldValue)
        flagRegister.negative()
        flagRegister.sign(passedValue: newValue)
        flagRegister.bits5And3(calculatedValue: newValue)
        return newValue
    }
    
    func rlc(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0, value: bit7)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func rrc(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: bit0)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func rl(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0, value: flagRegister.readBit(bit: Flag.CARRY))
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func rr(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: flagRegister.readBit(bit: Flag.CARRY))
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func sla(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.clear(bit: 0)
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func sra(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        let bit7 = self.isSet(bit: 7)
        var newValue = self >> 1
        newValue = newValue.set(bit: 7, value: bit7)
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func sll(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit7 = self.isSet(bit: 7)
        var newValue = self << 1
        newValue = newValue.set(bit: 0)
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func srl(flagRegister: FlagRegister = Z80.F) -> UInt8 {
        let bit0 = self.isSet(bit: 0)
        var newValue = self >> 1
        newValue = newValue.clear(bit: 7)
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.positive()
        flagRegister.set(bit: Flag.ZERO, value: newValue == 0)
        flagRegister.bits5And3(calculatedValue: newValue)
        flagRegister.sign(passedValue: newValue)
        flagRegister.parity(passedValue: newValue)
        return newValue
    }
    
    func testBit(bit: Int, flagRegister: FlagRegister = Z80.F){
        flagRegister.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
        flagRegister.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
        flagRegister.setBit(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: self)
        flagRegister.positive()
        if (bit == 7){
            flagRegister.sign(passedValue: self)
        } else {
            flagRegister.clearBit(bit: Flag.SIGN)
        }
    }
    
    func testBit(bit: Int, memPtr: UInt16, flagRegister: FlagRegister = Z80.F){
        flagRegister.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
        flagRegister.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
        flagRegister.setBit(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: memPtr.highByte())
        flagRegister.positive()
        if (bit == 7){
            flagRegister.sign(passedValue: self)
        } else {
            flagRegister.clearBit(bit: Flag.SIGN)
        }
    }
    
    func s53(flagRegister: FlagRegister = Z80.F) {
        flagRegister.set(bit: Flag.SIGN, value: self.isSet(bit: Flag.SIGN))
        flagRegister.set(bit: 5, value: self.isSet(bit: 5))
        flagRegister.set(bit: 3, value: self.isSet(bit: 3))
    }
    
    func parity(flagRegister: FlagRegister = Z80.F){
        var count = 0
        for _ in 0...7 {
            if self.isSet(bit: 0){
                count += 1
            }
        }
        flagRegister.set(bit: Flag.PARITY, value: count % 2 == 0)
    }
    
}
