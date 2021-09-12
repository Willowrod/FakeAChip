//
//  Accumilator.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class Accumilator: Register {
    
    func sub(diff: UInt8) {
        var byteValue = value()
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(diff)
        byteValue = byteValue16.lowByte()
        flagRegister.zero(passedValue: byteValue)
        flagRegister.overFlowSB(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        flagRegister.halfCarrySB(passedValue: diff, oldValue: oldValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.negative()
        flagRegister.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func add(diff: UInt8) {
        var byteValue = value()
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff)
        byteValue = byteValue16.lowByte()
        flagRegister.zero(passedValue: byteValue)
        flagRegister.overFlow(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        flagRegister.halfCarry(passedValue: diff, oldValue: oldValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.positive()
        flagRegister.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func sBC(diff: UInt8) {
        var byteValue = value()
        let carry = flagRegister.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(diff) &- UInt16(carry)
        byteValue = byteValue16.lowByte()
        flagRegister.sign(passedValue: byteValue)
        flagRegister.zero(passedValue: byteValue)
        flagRegister.overFlowSB(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        flagRegister.halfCarrySB(passedValue: diff, oldValue: oldValue, carry: carry)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.negative()
        flagRegister.carrySB(passedValue: diff &+ carry, oldValue: oldValue)
        ld(value: byteValue)
    }
    
    func aDC(diff: UInt8) {
        var byteValue = value()
        let carry = flagRegister.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff) &+ UInt16(carry)
        byteValue = byteValue16.lowByte()
        flagRegister.zero(passedValue: byteValue)
        flagRegister.overFlow(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        flagRegister.halfCarry(passedValue: diff, oldValue: oldValue, carry: carry)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.positive()
        flagRegister.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func xOR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue ^ byte
        flagRegister.zero(passedValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.carry(upperByte: 0)
        flagRegister.positive()
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func oR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue | byte
        flagRegister.zero(passedValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.carry(upperByte: 0)
        flagRegister.positive()
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func aND(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue & byte
        flagRegister.zero(passedValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.carry(upperByte: 0)
        flagRegister.positive()
        flagRegister.set(bit: Flag.HALF_CARRY)
        flagRegister.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func xOR(){
        var byteValue = value()
        byteValue = 0
        flagRegister.set(bit: Flag.ZERO)
        flagRegister.clear(bit: Flag.SIGN)
        flagRegister.clear(bit: Flag.CARRY)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func oR(){
        let byteValue = value()
        flagRegister.zero(passedValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.clear(bit: Flag.CARRY)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.parity(passedValue: byteValue)
    }
    
    func aND(){
        let byteValue = value()
        flagRegister.zero(passedValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.clear(bit: Flag.CARRY)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.set(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.parity(passedValue: byteValue)
    }
    
    func compare(byte: UInt8){
        let byteValue = value()
            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
            flagRegister.sign(passedValue: byteValue16.lowByte())
            flagRegister.zero(passedValue: byteValue16.lowByte())
            flagRegister.overFlowSB(passedValue: byte, oldValue: byteValue, newValue: byteValue16.lowByte())
            flagRegister.halfCarrySB(passedValue: byteValue16.lowByte(), oldValue: byteValue)
            flagRegister.bits5And3(calculatedValue: byte)
            flagRegister.negative()
            flagRegister.carry(upperByte: byteValue16.highByte())
    }
    
    func cpi(byte: UInt8, bc: UInt16){
        let byteValue = value()
            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
            flagRegister.sign(passedValue: byteValue16.lowByte())
            flagRegister.zero(passedValue: byteValue16.lowByte())
            flagRegister.set(bit: Flag.OVERFLOW, value: bc &- 1 != 0)
            flagRegister.halfCarrySB(passedValue: byteValue16.lowByte(), oldValue: byteValue)
            flagRegister.negative()
    }
    
    func rlcA(){
        var byteValue = value()
        let bit7 = byteValue.isSet(bit: 7)
        byteValue = byteValue << 1
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        byteValue = byteValue.set(bit: 0, value: bit7)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rrcA(){
        var byteValue = value()
        let bit0 = byteValue.isSet(bit: 0)
        byteValue = byteValue >> 1
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        byteValue = byteValue.set(bit: 7, value: bit0)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rlA(){
        var byteValue = value()
        let bit7 = byteValue.isSet(bit: 7)
        byteValue = byteValue << 1
        byteValue = byteValue.set(bit: 0, value: flagRegister.isSet(bit: Flag.CARRY))
        flagRegister.set(bit: Flag.CARRY, value: bit7)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rrA(){
        var byteValue = value()
        let bit0 = byteValue.isSet(bit: 0)
        byteValue = byteValue >> 1
        byteValue = byteValue.set(bit: 7, value: flagRegister.isSet(bit: Flag.CARRY))
        flagRegister.set(bit: Flag.CARRY, value: bit0)
        flagRegister.clear(bit: Flag.SUBTRACT)
        flagRegister.clear(bit: Flag.HALF_CARRY)
        flagRegister.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func negate(){
        var byteValue = value()
        let oldValue = byteValue
        byteValue = ~byteValue &+ 1
        flagRegister.zero(passedValue: byteValue)
        flagRegister.set(bit: Flag.OVERFLOW, value: oldValue == 0x80)
        flagRegister.halfCarry(passedValue: byteValue, oldValue: oldValue) // This COULD be halfCarrySB
        flagRegister.sign(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        flagRegister.negative()
        flagRegister.set(bit: Flag.CARRY, value: oldValue != 0)
        ld(value: byteValue)
    }
    
    func daA(){ // TODO: Flags!!!!
        var byteValue = value()
        let oldValue = byteValue
        let lower = byteValue.lowerNibble()
        let carry = flagRegister.isSet(bit: Flag.CARRY)
        let halfCarry = flagRegister.isSet(bit: Flag.HALF_CARRY)
        let negative = flagRegister.isSet(bit: Flag.SUBTRACT)
        
        var correction: UInt8 = 0x00
        
        if (lower > 0x09 || halfCarry){
            correction |= 0x06
        }
        
        if (byteValue > 0x99 || carry){
            correction |= 0x60
            flagRegister.set(bit: Flag.CARRY)
        } else {
            flagRegister.clear(bit: Flag.CARRY)
        }
        
        if (negative){
            byteValue = byteValue &- correction
        } else {
            byteValue = byteValue &+ correction
        }
        
        flagRegister.overFlow(passedValue: correction, oldValue: oldValue, newValue: byteValue)
        flagRegister.sign(passedValue: byteValue)
        flagRegister.zero(passedValue: byteValue)
        flagRegister.bits5And3(calculatedValue: byteValue)
        let originalBit4 = oldValue & 0x10
        let computedBit4 = byteValue & 0x10
        if originalBit4 ^ computedBit4 > 0 {
            flagRegister.set(bit: Flag.HALF_CARRY)
        } else {
            flagRegister.clear(bit: Flag.HALF_CARRY)
        }
        ld(value: byteValue)
    }
    
    func cpl(){
        var byteValue = value()
     byteValue = ~byteValue
        flagRegister.set(bit: Flag.HALF_CARRY)
        flagRegister.set(bit: Flag.SUBTRACT)
        flagRegister.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
}
