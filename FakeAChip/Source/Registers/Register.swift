//
//  Register.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class Register {
    var register: RegisterStruct = RegisterStruct(byteValue: 0xFF)
    var name: String = "Unknown"
    
    init(value: UInt8) {
        register = RegisterStruct(byteValue: value)
    }
    
    init(value: UInt8, name: String) {
        register = RegisterStruct(byteValue: value)
        self.name = name
    }
    
    func value() -> UInt8 {
        return register.byteValue
    }
    
    func hexValue() -> String {
        return String(register.byteValue, radix: 16).uppercased().padded()
    }
    
    func stringValue() -> String {
        return String(register.byteValue)
    }
    
    func ld(value: UInt8){
       // register = RegisterStruct(byteValue: value)
        register.byteValue = value
    }
    
    func setBit(bit: Int) {
        set(bit: bit)
    }
    
    func clearBit(bit: Int) {
        clear(bit: bit)
    }
    
    func set(bit: Int) {
        //register = RegisterStruct(byteValue: register.byteValue | 1 << bit)
        register.byteValue = register.byteValue | 1 << bit
    }
    
    func clear(bit: Int) {
        //register = RegisterStruct(byteValue: register.byteValue & ~(1 << bit))
        register.byteValue = register.byteValue & ~(1 << bit)
    }
    
    func set(bit: Int, value: Bool) {
        if (value){
            setBit(bit: bit)
        } else {
            clearBit(bit: bit)
        }
    }
    
    func readBit(bit: Int) -> Bool {
        return register.byteValue.isSet(bit: bit)
    }
    
    func isSet(bit: Int) -> Bool {
        return readBit(bit: bit)
    }
    
    func inc() {
        ld(value: value().inc())
    }
    
    func dec() {
        ld(value: value().dec())
    }
    
    func rlc(){
        ld(value: value().rlc())
    }
    
    func rrc(){
        ld(value: value().rrc())
    }
    
    func rl(){
        ld(value: value().rl())
    }
    
    func rr(){
        ld(value: value().rr())
    }
    
    func sla(){
        ld(value: value().sla())
    }
    
    func sra(){
        ld(value: value().sra())
    }
    
    func sll(){
        ld(value: value().sll())
    }
    
    func srl(){
        ld(value: value().srl())
    }
    
    func testBit(bit: Int){
        value().testBit(bit: bit)
    }
    
    func inCommand(byte: UInt8){
        Z80.F.clearBit(bit: Flag.HALF_CARRY)
        Z80.F.clearBit(bit: Flag.SUBTRACT)
        Z80.F.clearBit(bit: Flag.SIGN)
        Z80.F.zero(passedValue: byte)
        Z80.F.clearBit(bit: Flag.PARITY)
        ld(value: byte)
    }
    
}
