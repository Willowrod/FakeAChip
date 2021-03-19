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
        Z80.F.zero(passedValue: byteValue)
        Z80.F.overFlowSB(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        Z80.F.halfCarrySB(passedValue: diff, oldValue: oldValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.negative()
        Z80.F.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func add(diff: UInt8) {
        var byteValue = value()
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff)
        byteValue = byteValue16.lowByte()
        Z80.F.zero(passedValue: byteValue)
        Z80.F.overFlow(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        Z80.F.halfCarry(passedValue: diff, oldValue: oldValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.positive()
        Z80.F.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func sBC(diff: UInt8) {
        var byteValue = value()
        let carry = Z80.F.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(diff) &- UInt16(carry)
        byteValue = byteValue16.lowByte()
        Z80.F.sign(passedValue: byteValue)
        Z80.F.zero(passedValue: byteValue)
        Z80.F.overFlowSB(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        Z80.F.halfCarrySB(passedValue: diff, oldValue: oldValue, carry: carry)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.negative()
        Z80.F.carrySB(passedValue: diff &+ carry, oldValue: oldValue)
        ld(value: byteValue)
    }
    
    func aDC(diff: UInt8) {
        var byteValue = value()
        let carry = Z80.F.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff) &+ UInt16(carry)
        byteValue = byteValue16.lowByte()
        Z80.F.zero(passedValue: byteValue)
        Z80.F.overFlow(passedValue: diff, oldValue: oldValue, newValue: byteValue)
        Z80.F.halfCarry(passedValue: diff, oldValue: oldValue, carry: carry)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.positive()
        Z80.F.carry(upperByte: byteValue16.highByte())
        ld(value: byteValue)
    }
    
    func xOR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue ^ byte
        Z80.F.zero(passedValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.carry(upperByte: 0)
        Z80.F.positive()
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func oR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue | byte
        Z80.F.zero(passedValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.carry(upperByte: 0)
        Z80.F.positive()
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func aND(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue & byte
        Z80.F.zero(passedValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.carry(upperByte: 0)
        Z80.F.positive()
        Z80.F.set(bit: Flag.HALF_CARRY)
        Z80.F.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func xOR(){
        var byteValue = value()
        byteValue = 0
        Z80.F.set(bit: Flag.ZERO)
        Z80.F.clear(bit: Flag.SIGN)
        Z80.F.clear(bit: Flag.CARRY)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.parity(passedValue: byteValue)
        ld(value: byteValue)
    }
    
    func oR(){
        let byteValue = value()
        Z80.F.zero(passedValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.clear(bit: Flag.CARRY)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.parity(passedValue: byteValue)
    }
    
    func aND(){
        let byteValue = value()
        Z80.F.zero(passedValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.clear(bit: Flag.CARRY)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.set(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.parity(passedValue: byteValue)
    }
    
    func compare(byte: UInt8){
        let byteValue = value()
            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
            Z80.F.sign(passedValue: byteValue16.lowByte())
            Z80.F.zero(passedValue: byteValue16.lowByte())
            Z80.F.overFlowSB(passedValue: byte, oldValue: byteValue, newValue: byteValue16.lowByte())
            Z80.F.halfCarrySB(passedValue: byteValue16.lowByte(), oldValue: byteValue)
            Z80.F.bits5And3(calculatedValue: byte)
            Z80.F.negative()
            Z80.F.carry(upperByte: byteValue16.highByte())
    }
    
    func cpi(byte: UInt8, bc: UInt16){
        let byteValue = value()
            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
            Z80.F.sign(passedValue: byteValue16.lowByte())
            Z80.F.zero(passedValue: byteValue16.lowByte())
            Z80.F.set(bit: Flag.OVERFLOW, value: bc &- 1 != 0)
            Z80.F.halfCarrySB(passedValue: byteValue16.lowByte(), oldValue: byteValue)
            Z80.F.negative()
    }
    
    func rlcA(){
        var byteValue = value()
        let bit7 = byteValue.isSet(bit: 7)
        byteValue = byteValue << 1
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        byteValue = byteValue.set(bit: 0, value: bit7)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rrcA(){
        var byteValue = value()
        let bit0 = byteValue.isSet(bit: 0)
        byteValue = byteValue >> 1
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        byteValue = byteValue.set(bit: 7, value: bit0)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rlA(){
        var byteValue = value()
        let bit7 = byteValue.isSet(bit: 7)
        byteValue = byteValue << 1
        byteValue = byteValue.set(bit: 0, value: Z80.F.isSet(bit: Flag.CARRY))
        Z80.F.set(bit: Flag.CARRY, value: bit7)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func rrA(){
        var byteValue = value()
        let bit0 = byteValue.isSet(bit: 0)
        byteValue = byteValue >> 1
        byteValue = byteValue.set(bit: 7, value: Z80.F.isSet(bit: Flag.CARRY))
        Z80.F.set(bit: Flag.CARRY, value: bit0)
        Z80.F.clear(bit: Flag.SUBTRACT)
        Z80.F.clear(bit: Flag.HALF_CARRY)
        Z80.F.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
    func negate(){
        var byteValue = value()
        let oldValue = byteValue
        byteValue = ~byteValue &+ 1
        Z80.F.zero(passedValue: byteValue)
        Z80.F.set(bit: Flag.OVERFLOW, value: oldValue == 0x80)
        Z80.F.halfCarry(passedValue: byteValue, oldValue: oldValue) // This COULD be halfCarrySB
        Z80.F.sign(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        Z80.F.negative()
        Z80.F.set(bit: Flag.CARRY, value: oldValue != 0)
        ld(value: byteValue)
    }
    
    func daA(){ // TODO: Flags!!!!
        var byteValue = value()
        let oldValue = byteValue
        let lower = byteValue.lowerNibble()
        let carry = Z80.F.isSet(bit: Flag.CARRY)
        let halfCarry = Z80.F.isSet(bit: Flag.HALF_CARRY)
        let negative = Z80.F.isSet(bit: Flag.SUBTRACT)
        
        var correction: UInt8 = 0x00
        
        if (lower > 0x09 || halfCarry){
            correction |= 0x06
        }
        
        if (byteValue > 0x99 || carry){
            correction |= 0x60
            Z80.F.set(bit: Flag.CARRY)
        } else {
            Z80.F.clear(bit: Flag.CARRY)
        }
        
        if (negative){
            byteValue = byteValue &- correction
        } else {
            byteValue = byteValue &+ correction
        }
        
        Z80.F.overFlow(passedValue: correction, oldValue: oldValue, newValue: byteValue)
        Z80.F.sign(passedValue: byteValue)
        Z80.F.zero(passedValue: byteValue)
        Z80.F.bits5And3(calculatedValue: byteValue)
        let originalBit4 = oldValue & 0x10
        let computedBit4 = byteValue & 0x10
        if originalBit4 ^ computedBit4 > 0 {
            Z80.F.set(bit: Flag.HALF_CARRY)
        } else {
            Z80.F.clear(bit: Flag.HALF_CARRY)
        }
        ld(value: byteValue)
    }
    
    func cpl(){
        var byteValue = value()
     byteValue = ~byteValue
        Z80.F.set(bit: Flag.HALF_CARRY)
        Z80.F.set(bit: Flag.SUBTRACT)
        Z80.F.bits5And3(calculatedValue: byteValue)
        ld(value: byteValue)
    }
    
}
