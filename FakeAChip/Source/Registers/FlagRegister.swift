//
//  FlagRegister.swift
//  inSpeccytor
//
//  Created by Mike Hall on 29/12/2020.
//

import Foundation
class FlagRegister: Register {
    private let FLAG_CARRY: UInt8 = 1
    private let FLAG_NEGATIVE: UInt8 = 2
    private let FLAG_PARITYOVERFLOW: UInt8 = 4
    private let FLAG_3: UInt8 = 8
    private let FLAG_HALFCARRY: UInt8 = 16
    private let FLAG_5: UInt8 = 32
    private let FLAG_35: UInt8 = 40
    private let FLAG_ZERO: UInt8 = 64
    private let FLAG_SIGN: UInt8 = 128
    
    
    
    override func ld(value: UInt8){
        register = RegisterStruct(byteValue: value)
    }
    
    func bits5And3(calculatedValue: UInt16){
        var byteValue = value()
        byteValue = byteValue & ~FLAG_3 | calculatedValue.highByte() & FLAG_3
        byteValue = byteValue & ~FLAG_5 | calculatedValue.highByte() & FLAG_5
        ld(value: byteValue)
    }
    
    func bits5And3(calculatedValue: UInt8){
        var byteValue = value()
        byteValue = byteValue & ~FLAG_35
        byteValue |= calculatedValue & FLAG_3
        byteValue |= calculatedValue & FLAG_5
        ld(value: byteValue)
    }
    
    func bits5And3OR(calculatedValue: UInt8){
        var byteValue = value()
        byteValue |= calculatedValue & FLAG_3
        byteValue |= calculatedValue & FLAG_5
        ld(value: byteValue)
    }
    
    func parity(passedValue: UInt8){
        var byteValue = value()
        var count = 0
        for a in 0...7 {
            if passedValue.isSet(bit: a){
                count += 1
            }
        }
        byteValue = count % 2 == 0 ? byteValue | FLAG_PARITYOVERFLOW : byteValue & ~FLAG_PARITYOVERFLOW
        ld(value: byteValue)
    }
    
    func sign(passedValue: UInt8){
        var byteValue = value()
        byteValue = byteValue & ~FLAG_SIGN | passedValue & FLAG_SIGN
        ld(value: byteValue)
    }
    
    func sign(passedValue: UInt16){
        var byteValue = value()
        byteValue = byteValue & ~FLAG_SIGN | passedValue.highByte() & FLAG_SIGN
        ld(value: byteValue)
    }
    
    func zero(passedValue: UInt8){
        passedValue == 0 ? setBit(bit: Flag.ZERO) : clearBit(bit: Flag.ZERO)
    }

    func zero(passedValue: UInt16){
        passedValue == 0 ? setBit(bit: Flag.ZERO) : clearBit(bit: Flag.ZERO)
    }

    func negative(){
        setBit(bit: Flag.SUBTRACT)
    }

    func positive(){
        clearBit(bit: Flag.SUBTRACT)
    }

    func carry(upperByte: UInt8){
        var byteValue = value()
        byteValue = byteValue & ~FLAG_CARRY | upperByte & FLAG_CARRY
        ld(value: byteValue)
    }

    func carrySB(passedValue: UInt8, oldValue: UInt8){
        if oldValue < passedValue {
            setBit(bit: Flag.CARRY)
        } else {
            clearBit(bit: Flag.CARRY)
        }
    }

    func carrySB(passedValue: UInt16, oldValue: UInt16){
        if oldValue < passedValue {
            setBit(bit: Flag.CARRY)
        } else {
            clearBit(bit: Flag.CARRY)
        }
    }

    func overFlow(passedValue: UInt8, oldValue: UInt8, newValue: UInt8){
    if oldValue & FLAG_SIGN == passedValue & FLAG_SIGN && newValue & FLAG_SIGN != oldValue & FLAG_SIGN {
            setBit(bit: Flag.OVERFLOW)
        } else {
            clearBit(bit: Flag.OVERFLOW)
        }
    }

    func overFlowSB(passedValue: UInt8, oldValue: UInt8, newValue: UInt8){
            let ov = (oldValue & FLAG_SIGN) > 0
            let pv = (passedValue & FLAG_SIGN) > 0
            let cv = (newValue & FLAG_SIGN) > 0
        if (ov == pv) {
            clearBit(bit: Flag.OVERFLOW)
        } else if pv == cv {
            setBit(bit: Flag.OVERFLOW)
        } else {
            clearBit(bit: Flag.OVERFLOW)
        }
    }

    func overFlowSB(passedValue: UInt16, oldValue: UInt16, newValue: UInt16){
        overFlow(passedValue: passedValue.highByte(), oldValue: oldValue.highByte(), newValue: newValue.highByte())
    }

    func halfCarry(passedValue: UInt8, oldValue: UInt8, carry: UInt8 = 0){
        if (oldValue.lowerNibble() &+ passedValue.lowerNibble() &+ carry.lowerNibble()) & 0x10 > 0 {
            setBit(bit: Flag.HALF_CARRY)
        } else {
            clearBit(bit: Flag.HALF_CARRY)
        }
    }

    func halfCarrySB(passedValue: UInt8, oldValue: UInt8, carry: UInt8 = 0){
        if (oldValue.lowerNibble() &- passedValue.lowerNibble()) & 0x10 > 0 {
            setBit(bit: Flag.HALF_CARRY)
        } else {
            clearBit(bit: Flag.HALF_CARRY)
        }
    }

    func halfCarry(passedValue: UInt16, oldValue: UInt16){
        let passedBits: UInt16 = passedValue & 0x0fff
        let oldBits: UInt16 = oldValue & 0x0fff
        if (passedBits &+ oldBits) & 0x1000 > 0 {
            setBit(bit: Flag.HALF_CARRY)
        } else {
            clearBit(bit: Flag.HALF_CARRY)
        }
    }

    func halfCarrySB(passedValue: UInt16, oldValue: UInt16){
        let passedBits: UInt16 = passedValue & 0x0fff
        let oldBits: UInt16 = oldValue & 0x0fff
        if (oldBits &- passedBits) & 0x1000 > 0 {
            setBit(bit: Flag.HALF_CARRY)
        } else {
            clearBit(bit: Flag.HALF_CARRY)
        }
    }

    func scf(acc: UInt8){
        clearBit(bit: Flag.HALF_CARRY)
        clearBit(bit: Flag.SUBTRACT)
        setBit(bit: Flag.CARRY)
        bits5And3OR(calculatedValue: acc)
    }

    func ccf(acc: UInt8){
        var byteValue = value()
        byteValue = byteValue.set(bit: Flag.HALF_CARRY, value: byteValue.isSet(bit: Flag.CARRY))
        byteValue = byteValue.clear(bit: Flag.SUBTRACT)
        byteValue = byteValue.set(bit: Flag.CARRY, value: !byteValue.isSet(bit: Flag.CARRY))
        bits5And3OR(calculatedValue: acc)
        ld(value: byteValue)
    }
    
}
