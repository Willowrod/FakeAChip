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
        
        let part1 = (oldValue & 0x88) >> 3
        let part2 = (diff & 0x88) >> 2
        let part3 = UInt8(byteValue16 & 0x88) >> 1
        
        let lookup = part1 | part2 | part3
        
        byteValue = byteValue16.lowByte()

        let part4 = byteValue16 & 0x100 > 0 ? Z80.cBit : 0
        let part5 = Z80.halfCarrySub[Int(lookup & 0x07)]
        let part6 = Z80.overFlowSub[Int(lookup >> 4)]
        let part7 = Z80.sz53Table[Int(byteValue)]
        
        Z80.F.ld(value: part4 | Z80.nBit | part5 | part6 | part7)

        ld(value: byteValue)
    }
    
    func add(diff: UInt8) {
        var byteValue = value()
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff)
        
        let part1 = (oldValue & 0x88) >> 3
        let part2 = (diff & 0x88) >> 2
        let part3 = UInt8(byteValue16 & 0x88) >> 1
        
        let lookup = part1 | part2 | part3
        
        byteValue = byteValue16.lowByte()
        Z80.F.ld(value: (byteValue16 & 0x100 > 0 ? Z80.cBit : 0 ) | Z80.halfCarryAdd[Int(UInt8(lookup & 0xff) & 0x07)] | Z80.overFlowAdd[Int(UInt8(lookup & 0xff) >> 4)] | Z80.sz53Table[Int(byteValue)])
        
        ld(value: byteValue)
    }
    
    func sBC(diff: UInt8) {
        var byteValue = value()
        let carry = Z80.F.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(diff) &- UInt16(carry)
        byteValue = byteValue16.lowByte()
        let part1 = (oldValue & 0x88) >> 3
        let part2 = (diff & 0x88) >> 2
        let part3 = UInt8(byteValue16 & 0x88) >> 1
        
        let lookup = part1 | part2 | part3
        
        byteValue = byteValue16.lowByte()

        let part4 = byteValue16 & 0x100 > 0 ? Z80.cBit : 0
        let part5 = Z80.halfCarrySub[Int(lookup & 0x07)]
        let part6 = Z80.overFlowSub[Int(lookup >> 4)]
        let part7 = Z80.sz53Table[Int(byteValue)]
        
        Z80.F.ld(value: part4 | Z80.nBit | part5 | part6 | part7)

        ld(value: byteValue)
    }
    
    func aDC(diff: UInt8) {
        var byteValue = value()
        let carry = Z80.F.value() & 1
        let oldValue = byteValue
        let byteValue16: UInt16 = UInt16(byteValue) &+ UInt16(diff) &+ UInt16(carry)
        byteValue = byteValue16.lowByte()
        
        let part1 = (oldValue & 0x88) >> 3
        let part2 = (diff & 0x88) >> 2
        let part3 = UInt8(byteValue16 & 0x88) >> 1
        
        let lookup = part1 | part2 | part3
        
        byteValue = byteValue16.lowByte()
        Z80.F.ld(value: (byteValue16 & 0x100 > 0 ? Z80.cBit : 0 ) | Z80.halfCarryAdd[Int(UInt8(lookup & 0xff) & 0x07)] | Z80.overFlowAdd[Int(UInt8(lookup & 0xff) >> 4)] | Z80.sz53Table[Int(byteValue)])
        
        ld(value: byteValue)
    }
    
    func xOR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue ^ byte
        Z80.F.ld(value: Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func oR(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue | byte
        Z80.F.ld(value: Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func aND(byte: UInt8){
        var byteValue = value()
        byteValue = byteValue & byte
        Z80.F.ld(value: Z80.hBit | Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func xOR(){
        var byteValue = value()
        byteValue = 0
        Z80.F.ld(value: Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func oR(){
        let byteValue = value()
        Z80.F.ld(value: Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func aND(){
        let byteValue = value()
        
        Z80.F.ld(value: Z80.hBit | Z80.sz53pvTable[Int(byteValue)])
        ld(value: byteValue)
    }
    
    func compare(byte: UInt8){
        let byteValue = value()
            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
        
        let part1 = (byteValue & 0x88) >> 3
        let part2 = (byte & 0x88) >> 2
        let part3 = UInt8(byteValue16 & 0x88) >> 1
        
        let lookup = part1 | part2 | part3
        
        let part4 = byteValue16 & 0x100 > 0 ? Z80.cBit : (byteValue16 > 0 ? 0 : Z80.zBit)
        let part5 = Z80.halfCarrySub[Int(lookup & 0x07)]
        let part6 = Z80.overFlowSub[Int(lookup >> 4)]
        let part7 = byte & (Z80.threeBit | Z80.fiveBit) | (UInt8(byteValue16 & 0xff) & Z80.sBit)
        
        Z80.F.ld(value: part4 | Z80.nBit | part5 | part6 | part7)

    }
    
    func cpi(byte: UInt8, bc: UInt16){
//        let byteValue = value()
//            let byteValue16: UInt16 = UInt16(byteValue) &- UInt16(byte)
//            Z80.F.sign(passedValue: byteValue16.lowByte())
//            Z80.F.zero(passedValue: byteValue16.lowByte())
//            Z80.F.set(bit: Flag.OVERFLOW, value: bc &- 1 != 0)
//            Z80.F.halfCarrySB(passedValue: byteValue16.lowByte(), oldValue: byteValue)
//            Z80.F.negative()
        compare(byte: byte)
    }
    
    func rlcA(){
        var byteValue = value()
//        let bit7 = byteValue.isSet(bit: 7)
//        byteValue = byteValue << 1
//        Z80.F.set(bit: Flag.CARRY, value: bit7)
//        byteValue = byteValue.set(bit: 0, value: bit7)
//        Z80.F.clear(bit: Flag.SUBTRACT)
//        Z80.F.clear(bit: Flag.HALF_CARRY)
//        Z80.F.bits5And3(calculatedValue: byteValue)
//        ld(value: byteValue)
        ld(value: (byteValue << 1) | (byteValue >> 7))
        Z80.F.ld(value: (Z80.F.value() & (Z80.pvBit | Z80.zBit | Z80.sBit)) | (value() & (Z80.cBit | Z80.threeBit | Z80.fiveBit)))
    }
    
    func rrcA(){
       var byteValue = value()
//        let bit0 = byteValue.isSet(bit: 0)
//        byteValue = byteValue >> 1
//        Z80.F.set(bit: Flag.CARRY, value: bit0)
//        byteValue = byteValue.set(bit: 7, value: bit0)
//        Z80.F.clear(bit: Flag.SUBTRACT)
//        Z80.F.clear(bit: Flag.HALF_CARRY)
//        Z80.F.bits5And3(calculatedValue: byteValue)
//        ld(value: byteValue)
//        ZilogZ80.f.value = (ZilogZ80.f.value & (ZilogZ80.pvBit | ZilogZ80.zBit | ZilogZ80.sBit)) | (value & ZilogZ80.cBit)
//        value = (value >> 1) | (value << 7)
//        ZilogZ80.f.value |= (value & (ZilogZ80.threeBit | ZilogZ80.fiveBit))
        Z80.F.ld(value: (Z80.F.value() & (Z80.pvBit | Z80.zBit | Z80.sBit)) | (byteValue & Z80.cBit))
        ld(value: (byteValue >> 1) | (byteValue << 7))
        Z80.F.ld(value: Z80.F.value() | (value() & (Z80.threeBit | Z80.fiveBit)))
    }
    
    func rlA(){
        var byteValue = value()
        let nuval = (byteValue << 1) | (Z80.F.value() & Z80.cBit)
        Z80.F.ld(value: (Z80.F.value() & (Z80.pvBit | Z80.zBit | Z80.sBit)) | (nuval & (Z80.threeBit | Z80.fiveBit)) | (byteValue >> 7))
        ld(value: nuval)
    }
    
    func rrA(){
        var byteValue = value()
        let nuval = (byteValue >> 1) | (Z80.F.value() << 7)
        Z80.F.ld(value: (Z80.F.value() & (Z80.pvBit | Z80.zBit | Z80.sBit)) | (nuval & (Z80.threeBit | Z80.fiveBit)) | (byteValue & Z80.cBit))
        ld(value: nuval)
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
