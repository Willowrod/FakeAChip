//
//  AFRegisterPair.swift
//  AFRegisterPair
//
//  Created by Mike Hall on 24/09/2021.
//

import Foundation
class AFRegisterPair: RegisterPair {
    
    
    override init(_ named: String, highValue: UInt8, lowValue: UInt8, id: Int) {
        super.init("AF", highValue: highValue, lowValue: lowValue, id: id)
    }
    
    init(a: Accumilator, f: FlagRegister) {
        super.init("AF", highValue: 0x00, lowValue: 0x00, id: 0)
        registerPair = RegisterPairStruct(high: a, low: f, name: "AF")
        name = "AF"
        }
    
    override func ld(pair: RegisterPair){
            Z80.F.ld(value: pair.registerPair.low.value())
            Z80.A.ld(value: pair.registerPair.high.value())
        
        registerPair.high.register = pair.registerPair.high.register
        registerPair.low.register = pair.registerPair.low.register
    }
    
    override func ld(value: UInt16){
        let high = UInt8(value / 256)
        let low = UInt8(value - UInt16(high) * 256)
            Z80.F.ld(value: low)
            Z80.A.ld(value: high)
        registerPair.high.register = high //.byteValue
        registerPair.low.register = low //.byteValue
    }
    
}
