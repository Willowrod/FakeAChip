//
//  RegisterPair.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class RegisterPair {
    var high = Register()
    var low = Register()
    var name = ""
    
    init(_ named: String, highValue: UInt8, lowValue: UInt8) {
        name = named
        high.ld(value: highValue)
        low.ld(value: lowValue)
    }
    
    func setAF(h: Accumilator, l: FlagRegister) {
        high = h
        low = l
    }
    
    func ld(pair: RegisterPair){
        high = pair.high
        low = pair.low
    }
    
    func ld(value: UInt16){
            high.byteValue = UInt8(value / 256)
            let lowValue = value - UInt16(high.byteValue) * 256
            low.byteValue = UInt8(lowValue)
    }
    
    func dec() {
        ld(value: value() &- 1)
    }
    
    func inc() {
        ld(value: value() &+ 1)
    }
    
//    func sbc(diff: UInt16){
//        let oldValue:UInt16 = value()
//        let carry: UInt16 = UInt16(Z80.F.byteValue) & 1
//        let actualDiff = diff &+ carry
//            ld(value: oldValue &- actualDiff)
//        Z80.F.sign(passedValue: value())
//        Z80.F.carrySB(passedValue: actualDiff, oldValue: oldValue)
//        Z80.F.bits5And3(calculatedValue: value().highByte())
//        Z80.F.zero(passedValue: value())
//        Z80.F.overFlowSB(passedValue: actualDiff.highByte(), oldValue: oldValue.highByte(), newValue: value().highByte())
//        Z80.F.halfCarrySB(passedValue: actualDiff, oldValue: oldValue)
//        Z80.F.negative()
//    }
//    
//    func adc(diff: UInt16){
//        let current:UInt16 = value()
//        var actualDiff = diff
//        if (Z80.F.readBit(bit: Flag.CARRY)){
//            ld(value: current &+ 1 &+ diff)
//            actualDiff = actualDiff &+ 1
//        } else {
//            ld(value: current &+ diff)
//        }
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: current > value())
//        high.byteValue.s53()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: value() == 0)
//        Z80.F.byteValue.set(bit: Flag.OVERFLOW, value: current.highByte().isSet(bit: 7) != high.byteValue.isSet(bit: 7))
//        Z80.F.halfCarry(passedValue: actualDiff.highByte(), oldValue: current.highByte())
//        Z80.F.positive()
//    }
//    
//    func sub(diff: UInt16){
//        let current:UInt16 = value()
//            ld(value: value() &- diff)
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: current < value())
//        Z80.F.byteValue.set(bit: Flag.SUBTRACT)
//    }
//    
    func add(diff: UInt16){
//        let current:UInt16 = value()
//        let newValue: UInt32 = UInt32(value()) &+ UInt32(diff)
//            ld(value: UInt16(newValue & 0xffff))
//        Z80.F.positive()
//        Z80.F.halfCarry(passedValue: diff, oldValue: current)
//        Z80.F.carry(upperByte: UInt8(newValue >> 16))
//        Z80.F.bits5And3(calculatedValue: value())
    }
    
    func ld(high: UInt8, low: UInt8){
        self.high.byteValue = high
        self.low.byteValue = low
    }
    
    func value() -> UInt16{
        return (UInt16(high.byteValue) * 256) + UInt16(low.byteValue)
    }
    
    func swap(spare: RegisterPair){
        ld(value: spare.value())
    }
    
    func setPairs(h: UInt8, l: UInt8){
        high.byteValue = h
        low.byteValue = l
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
    
}
