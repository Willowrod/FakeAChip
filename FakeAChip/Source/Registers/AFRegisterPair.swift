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
    //    if (name == "AF"){
            Z80.F.ld(value: pair.registerPair.low.value())
            Z80.A.ld(value: pair.registerPair.high.value())
            registerPair = RegisterPairStruct(high: Z80.A, low: Z80.F, name: registerPair.name)
//        } else {
//            registerPair = RegisterPairStruct(high: Register(value: pair.registerPair.high.value(), name: registerPair.high.name), low: Register(value: pair.registerPair.low.value(), name: registerPair.low.name), name: registerPair.name)
//        }
    }
    
    override func ld(value: UInt16){
        let high = UInt8(value / 256)
        let low = UInt8(value - UInt16(high) * 256)
 //       if (name == "AF"){
            Z80.F.ld(value: low)
            Z80.A.ld(value: high)
            registerPair = RegisterPairStruct(high: Z80.A, low: Z80.F, name: registerPair.name)
//        } else {
//            registerPair = RegisterPairStruct(high: Register(value: high, name: registerPair.high.name), low: Register(value: low, name: registerPair.low.name), name: registerPair.name)
//        }
    }
    
}
