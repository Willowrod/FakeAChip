//
//  RegisterPair.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class RegisterPair {
    
//    var registerPair: RegisterPairStruct
//    var name: String
    
    var registerPairValue: UInt16
    
    public init(_ named: String, highValue: UInt8, lowValue: UInt8, id: Int) {
   //     name = named
//        var first:String = "U"
//        var last:String = "U"
//
//        if let firstLetter = named.first{
//            first = String(firstLetter)
//        }
//
//        if let lastLetter = named.last{
//            last = String(lastLetter)
//        }
        
//        registerPair = RegisterPairStruct(high: Register(value: highValue, name: first), low: Register(value: lowValue, name: last), name: named)
        registerPairValue = UInt16(UInt16(highValue) * UInt16(256)) + UInt16(lowValue)
        //valueFromPairs(high: highValue, low: lowValue)
        
    }
    
    
    
    init(_ named: String, pair: RegisterPair) {
//        var first:String = "U"
//        var last:String = "U"
//
//        if let firstLetter = named.first{
//            first = String(firstLetter)
//        }
//
//        if let lastLetter = named.last{
//            last = String(lastLetter)
//        }
//        registerPair = RegisterPairStruct(high: Register(value: pair.high(), name: first), low: Register(value: pair.low(), name: last), name: named)
//        name = named
        registerPairValue = pair.registerPairValue
    }
    
    func valueFromPairs(high: UInt8, low: UInt8){
        registerPairValue = UInt16(UInt16(high) * UInt16(256)) + UInt16(low)
    }
    
    func high() -> UInt8 {
        //return registerPair.high.value()
        return registerPairValue.highByte()
    }
    
    func low() -> UInt8 {
       // return registerPair.low.value()
        return registerPairValue.lowByte()
    }
    
    func ld(pair: RegisterPair){
        registerPairValue = pair.registerPairValue
//        registerPair.high.register = pair.registerPair.high.register
//        registerPair.low.register = pair.registerPair.low.register
    }
    
    func ld(value: UInt16){
        self.registerPairValue = value
//        let high = UInt8(value / 256)
//        let low = UInt8(value - UInt16(high) * 256)
//        registerPair.high.register = high
//        registerPair.low.register = low
    }
    
    func dec() {
      //  ld(value: value() &- 1)
        registerPairValue = registerPairValue &- 1
    }
    
    func inc() {
      //  ld(value: value() &+ 1)
        registerPairValue = registerPairValue &+ 1
    }
    
    func sbc(diff: UInt16){
        let oldValue:UInt16 = registerPairValue
        let carry: UInt16 = UInt16(Z80.F.value()) & 1
        let actualDiff = diff &+ carry
        ld(value: oldValue &- actualDiff)
        Z80.F.sign(passedValue: registerPairValue)
        Z80.F.carrySB(passedValue: actualDiff, oldValue: oldValue)
        Z80.F.bits5And3(calculatedValue: registerPairValue.highByte())
        Z80.F.zero(passedValue: registerPairValue)
        Z80.F.overFlowSB(passedValue: actualDiff.highByte(), oldValue: oldValue.highByte(), newValue: registerPairValue.highByte())
        Z80.F.halfCarrySB(passedValue: actualDiff, oldValue: oldValue)
        Z80.F.negative()
    }
    
    func adc(diff: UInt16){
        let current:UInt16 = registerPairValue
        var actualDiff = diff
        if (Z80.F.readBit(bit: Flag.CARRY)){
            ld(value: current &+ 1 &+ diff)
            actualDiff = actualDiff &+ 1
        } else {
            ld(value: current &+ diff)
        }
        Z80.F.set(bit: Flag.CARRY, value: current > registerPairValue)
        high().s53()
        Z80.F.set(bit: Flag.ZERO, value: registerPairValue == 0)
        Z80.F.set(bit: Flag.OVERFLOW, value: current.highByte().isSet(bit: 7) != high().isSet(bit: 7))
        Z80.F.halfCarry(passedValue: actualDiff.highByte(), oldValue: current.highByte())
        Z80.F.positive()
    }
    
    func sub(diff: UInt16){
        let current:UInt16 = registerPairValue
        ld(value: registerPairValue &- diff)
        Z80.F.set(bit: Flag.CARRY, value: current < registerPairValue)
        Z80.F.set(bit: Flag.SUBTRACT)
    }
    //
    func add(diff: UInt16){
        let current:UInt16 = registerPairValue
        let newValue: UInt32 = UInt32(registerPairValue) &+ UInt32(diff)
        ld(value: UInt16(newValue & 0xffff))
        Z80.F.positive()
        Z80.F.halfCarry(passedValue: diff, oldValue: current)
        Z80.F.carry(upperByte: UInt8(newValue >> 16))
        Z80.F.bits5And3(calculatedValue: registerPairValue)
    }
    
    func ld(high: UInt8, low: UInt8){
//        registerPair.high.ld(value: high)
//        registerPair.low.ld(value: low)
        valueFromPairs(high: high, low: low)
    }
    
    func ld(word: UInt16){
//        registerPair.high.ld(value: word.highByte())
//        registerPair.low.ld(value: word.lowByte())
        registerPairValue = word
    }
    
    func value() -> UInt16{
        //return (UInt16(registerPair.high.value()) * 256) + UInt16(registerPair.low.value())
        return registerPairValue
    }
    
    func swap(spare: RegisterPair){
        ld(pair: spare)
    }
    
    func setPairs(h: UInt8, l: UInt8){
        ld(high: h, low: l)
    }
    
    func addSelf() {
        add(diff: registerPairValue)
    }
    
    func hex() -> String {
        return String(registerPairValue, radix: 16).padded(size: 4)
    }
    
    func bin() -> String {
        return String(registerPairValue, radix: 2).padded(size: 8)
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
