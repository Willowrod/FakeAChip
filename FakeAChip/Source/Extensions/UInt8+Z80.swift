//
//  UInt8+Z80.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation

extension UInt8 {
//    mutating func inc() {
//        let oldValue = self
//        self = self &+ 1
//        Z80.F.zero(passedValue: self)
//        Z80.F.byteValue.set(bit: Flag.OVERFLOW, value: oldValue == 0x7f)
//        Z80.F.halfCarry(passedValue: 1, oldValue: oldValue)
//        Z80.F.positive()
//        Z80.F.sign(passedValue: self)
//        Z80.F.bits5And3(calculatedValue: self)
//    }
//    
//    mutating func dec() {
//        let oldValue = self
//        self = self &- 1
//        Z80.F.zero(passedValue: self)
//        Z80.F.byteValue.set(bit: Flag.OVERFLOW, value: oldValue == 0x80)
//        Z80.F.halfCarrySB(passedValue: 1, oldValue: oldValue)
//        Z80.F.negative()
//        Z80.F.sign(passedValue: self)
//        Z80.F.bits5And3(calculatedValue: self)
//        
//    }
//    
//    mutating func rlc(){
//        let bit7 = self.isSet(bit: 7)
//        self = self << 1
//        self.set(bit: 0, value: bit7)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit7)
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func rrc(){
//        let bit0 = self.isSet(bit: 0)
//        self = self >> 1
//        self.set(bit: 7, value: bit0)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit0)
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func rl(){
//        let bit7 = self.isSet(bit: 7)
//        self = self << 1
//        self.set(bit: 0, value: Z80.F.byteValue.isSet(bit: Flag.CARRY))
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit7)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func rr(){
//        let bit0 = self.isSet(bit: 0)
//        self = self >> 1
//        self.set(bit: 7, value: Z80.F.byteValue.isSet(bit: Flag.CARRY))
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit0)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func sla(){
//        let bit7 = self.isSet(bit: 7)
//        self = self << 1
//        self.clear(bit: 0)
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit7)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func sra(){
//        let bit0 = self.isSet(bit: 0)
//        let bit7 = self.isSet(bit: 7)
//        self = self >> 1
//        self.set(bit: 7, value: bit7)
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit0)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func sll(){
//        let bit7 = self.isSet(bit: 7)
//        self = self << 1
//        self.set(bit: 0)
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit7)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    mutating func srl(){
//        let bit0 = self.isSet(bit: 0)
//        self = self >> 1
//        self.clear(bit: 7)
//        Z80.F.byteValue.set(bit: Flag.CARRY, value: bit0)
//        Z80.F.clearBit(bit: Flag.HALF_CARRY)
//        Z80.F.positive()
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: self == 0)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.sign(passedValue: self)
//        Z80.F.parity(passedValue: self)
//    }
//    
//    func testBit(bit: Int){
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
//        Z80.F.byteValue.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
//        Z80.F.byteValue.set(bit: Flag.HALF_CARRY)
//        Z80.F.bits5And3(calculatedValue: self)
//        Z80.F.positive()
//        if (bit == 7){
//            Z80.F.sign(passedValue: self)
//        } else {
//            Z80.F.clearBit(bit: Flag.SIGN)
//        }
//    }
//    
//    func testBit(bit: Int, memPtr: UInt16){
//        Z80.F.byteValue.set(bit: Flag.ZERO, value: !self.isSet(bit: bit))
//        Z80.F.byteValue.set(bit: Flag.PARITY, value: !self.isSet(bit: bit))
//        Z80.F.byteValue.set(bit: Flag.HALF_CARRY)
//        Z80.F.bits5And3(calculatedValue: memPtr.highByte())
//        Z80.F.positive()
//        if (bit == 7){
//            Z80.F.sign(passedValue: self)
//        } else {
//            Z80.F.clearBit(bit: Flag.SIGN)
//        }
//    }
//    
//    func s53() {
//        Z80.F.byteValue.set(bit: Flag.SIGN, value: self.isSet(bit: Flag.SIGN))
//        Z80.F.byteValue.set(bit: 5, value: self.isSet(bit: 5))
//        Z80.F.byteValue.set(bit: 3, value: self.isSet(bit: 3))
//    }
//    
//    func parity(){
//        var count = 0
//        for _ in 0...7 {
//            if self.isSet(bit: 0){
//                count += 1
//            }
//        }
//        Z80.F.byteValue.set(bit: Flag.PARITY, value: count % 2 == 0)
//    }
}
