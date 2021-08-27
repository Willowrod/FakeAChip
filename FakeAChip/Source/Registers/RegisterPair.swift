//
//  RegisterPair.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class RegisterPair {
    
    var registerPair: RegisterPairStruct
    let name: String
    
    init(_ named: String, highValue: UInt8, lowValue: UInt8, id: Int) {
        name = named
        var first:String = "U"
        var last:String = "U"
        
        if let firstLetter = named.first{
            first = String(firstLetter)
        }
        
        if let lastLetter = named.last{
            last = String(lastLetter)
        }
        
        registerPair = RegisterPairStruct(high: Register(value: highValue, name: first), low: Register(value: lowValue, name: last), name: named)
    }
    
    init(a: Accumilator, f: FlagRegister) {
        registerPair = RegisterPairStruct(high: a, low: f, name: "AF")
        name = "AF"
        }
    
    init(_ named: String, pair: RegisterPair) {
        var first:String = "U"
        var last:String = "U"
        
        if let firstLetter = named.first{
            first = String(firstLetter)
        }
        
        if let lastLetter = named.last{
            last = String(lastLetter)
        }
        registerPair = RegisterPairStruct(high: Register(value: pair.high(), name: first), low: Register(value: pair.low(), name: last), name: named)
        name = named
        }
    
    func high() -> UInt8 {
        return registerPair.high.value()
    }
    
    func low() -> UInt8 {
        return registerPair.low.value()
    }
    
    func ld(pair: RegisterPair){
        if (name == "AF"){
            Z80.F.ld(value: pair.registerPair.low.value())
            Z80.A.ld(value: pair.registerPair.high.value())
            registerPair = RegisterPairStruct(high: Z80.A, low: Z80.F, name: registerPair.name)
        } else {
            registerPair = RegisterPairStruct(high: Register(value: pair.registerPair.high.value(), name: registerPair.high.name), low: Register(value: pair.registerPair.low.value(), name: registerPair.low.name), name: registerPair.name)
        }
    }
    
    func ld(value: UInt16){
        let high = UInt8(value / 256)
        let low = UInt8(value - UInt16(high) * 256)
        if (name == "AF"){
            Z80.F.ld(value: low)
            Z80.A.ld(value: high)
            registerPair = RegisterPairStruct(high: Z80.A, low: Z80.F, name: registerPair.name)
        } else {
            registerPair = RegisterPairStruct(high: Register(value: high, name: registerPair.high.name), low: Register(value: low, name: registerPair.low.name), name: registerPair.name)
        }
    }
    
    func dec() {
        ld(value: value() &- 1)
    }
    
    func inc() {
        ld(value: value() &+ 1)
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
        let current:UInt16 = value()
        var actualDiff = diff
        if (Z80.F.readBit(bit: Flag.CARRY)){
            ld(value: current &+ 1 &+ diff)
            actualDiff = actualDiff &+ 1
        } else {
            ld(value: current &+ diff)
        }
        Z80.F.set(bit: Flag.CARRY, value: current > value())
        registerPair.high.value().s53()
        Z80.F.set(bit: Flag.ZERO, value: value() == 0)
        Z80.F.set(bit: Flag.OVERFLOW, value: current.highByte().isSet(bit: 7) != registerPair.high.value().isSet(bit: 7))
        Z80.F.halfCarry(passedValue: actualDiff.highByte(), oldValue: current.highByte())
        Z80.F.positive()
    }
    
    func sub(diff: UInt16){
        let current:UInt16 = value()
        ld(value: value() &- diff)
        Z80.F.set(bit: Flag.CARRY, value: current < value())
        Z80.F.set(bit: Flag.SUBTRACT)
    }
    //
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
        registerPair.high.ld(value: high)
        registerPair.low.ld(value: low)
    }
    
    func ld(word: UInt16){
        registerPair.high.ld(value: word.highByte())
        registerPair.low.ld(value: word.lowByte())
    }
    
    func value() -> UInt16{
        return (UInt16(registerPair.high.value()) * 256) + UInt16(registerPair.low.value())
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
    
}
