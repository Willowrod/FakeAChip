//
//  RegisterPair.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class RegisterPair {

    var registerPairValue: UInt16
    
    public init(highValue: UInt8, lowValue: UInt8, id: Int) {
        registerPairValue = UInt16(UInt16(highValue) * UInt16(256)) + UInt16(lowValue)
    }
    
    
    
    init(pair: RegisterPair) {
        registerPairValue = pair.registerPairValue
    }
    
    func valueFromPairs(high: UInt8, low: UInt8){
           registerPairValue = UInt16(UInt16(high) * UInt16(256)) + UInt16(low)
       }
    
    func high() -> UInt8 {
        return registerPairValue.highByte()
    }
    
    func low() -> UInt8 {
        return registerPairValue.lowByte()
    }
    
    func ld(pair: RegisterPair){
        registerPairValue = pair.registerPairValue
    }
    
    func ld(value: UInt16){
        self.registerPairValue = value
    }
    
    func dec() {
        registerPairValue = registerPairValue &- 1
    }
    
    func inc() {
        registerPairValue = registerPairValue &+ 1
    }
    
    func sbc(diff: UInt16){
        let oldValue:UInt16 = value()
        let carry: UInt16 = UInt16(Z80.F.value()) & 1
        let actualDiff = diff &+ carry
        ld(value: oldValue &- actualDiff)
        Z80.F.sign(passedValue: value())
        Z80.F.carrySB(passedValue: actualDiff, oldValue: oldValue)
        Z80.F.bits5And3(calculatedValue: value().highByte())
        Z80.F.zero(passedValue: value())
        Z80.F.overFlowSB(passedValue: actualDiff.highByte(), oldValue: oldValue.highByte(), newValue: value().highByte())
        Z80.F.halfCarrySB(passedValue: actualDiff, oldValue: oldValue)
        Z80.F.negative()
    }
    
    func adc(diff: UInt16){
        var fVal = Z80.F.value()
        let add16temp: UInt32 = UInt32(value()) + UInt32(diff) + UInt32(fVal & Z80.cBit)
        let lookup = ((value() & 0x8800) >> 11) | ((diff & 0x8800) >> 10) | ((UInt16(add16temp & 0xffff) & 0x8800) >> 9)
        ld(value: UInt16(add16temp & 0xffff))
        
        let part1 = (add16temp & 0x10000) > 0 ? Z80.cBit : 0
        let part2 = Z80.overFlowAdd[UInt8(lookup & 0xff) >> 4]
        let part3 = high() & (Z80.threeBit | Z80.fiveBit | Z80.sBit)
        fVal = part1 | part2 | part3 | Z80.halfCarryAdd[UInt8(lookup & 0xff) & 0x07] | (value() > 0 ? 0 : Z80.zBit)
        Z80.F.ld(value: fVal)
        
    }
    
    func sub(diff: UInt16){
        let current:UInt16 = value()
        ld(value: value() &- diff)
        Z80.F.set(bit: Flag.CARRY, value: current < value())
        Z80.F.set(bit: Flag.SUBTRACT)
    }
    
    func add(diff: UInt16){
        let current:UInt16 = value()
        let newValue: UInt32 = UInt32(value()) &+ UInt32(diff)
        ld(value: UInt16(newValue & 0xffff))
        Z80.F.positive()
        Z80.F.halfCarry(passedValue: diff, oldValue: current)
        Z80.F.carry(upperByte: UInt8(newValue >> 16))
        Z80.F.bits5And3(calculatedValue: value())
    }
    
    func ld(high: UInt8, low: UInt8){
        valueFromPairs(high: high, low: low)
    }
    
    func ld(word: UInt16){
        registerPairValue = word
    }
    
    func value() -> UInt16{
        return registerPairValue
    }
    
    func swap(spare: RegisterPair){
        ld(pair: spare)
    }
    
    func setPairs(h: UInt8, l: UInt8){
        ld(high: h, low: l)
    }
    
    func addSelf() {
        add(diff: value())
    }
    
    func hex() -> String {
        return String(value(), radix: 16).padded(size: 4)
    }
    
    func bin() -> String {
        return String(value(), radix: 2).padded(size: 8)
    }
    
    func ldHigh(value: UInt8) {
            valueFromPairs(high: value, low: registerPairValue.lowByte())
        }

        func ldLow(value: UInt8) {
            valueFromPairs(high: registerPairValue.highByte(), low: value)
        }

        func incHigh() {
            valueFromPairs(high: registerPairValue.highByte().inc(), low: registerPairValue.lowByte())
        }

        func incLow() {
            valueFromPairs(high: registerPairValue.highByte(), low: registerPairValue.lowByte().inc())
        }

        func decHigh() {
            valueFromPairs(high: registerPairValue.highByte().dec(), low: registerPairValue.lowByte())
        }

        func decLow() {
            valueFromPairs(high: registerPairValue.highByte(), low: registerPairValue.lowByte().dec())
        }
    
    func inHigh(value: UInt8) {
               Z80.F.clearBit(bit: Flag.HALF_CARRY)
               Z80.F.clearBit(bit: Flag.SUBTRACT)
               Z80.F.clearBit(bit: Flag.SIGN)
               Z80.F.zero(passedValue: value)
               Z80.F.clearBit(bit: Flag.PARITY)
               ldHigh(value: value)
       }

       func inLow(value: UInt8) {
               Z80.F.clearBit(bit: Flag.HALF_CARRY)
               Z80.F.clearBit(bit: Flag.SUBTRACT)
               Z80.F.clearBit(bit: Flag.SIGN)
               Z80.F.zero(passedValue: value)
               Z80.F.clearBit(bit: Flag.PARITY)
               ldLow(value: value)
       }
    
}
