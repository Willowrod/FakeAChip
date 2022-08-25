//
//  AFRegisterPair.swift
//  AFRegisterPair
//
//  Created by Mike Hall on 24/09/2021.
//

import Foundation
class AFRegisterPair {
    var accumilator: Accumilator
     var flag: FlagRegister
    
    init(a: Accumilator, f: FlagRegister) {
        accumilator = a
        flag = f
        }
    
    func ld(pair: RegisterPair){
        ld(value: pair.value())
    }
    
    func ld(value: UInt16){
        accumilator.ld(value: value.highByte())
        flag.ld(value: value.lowByte())
    }
    
    func value() -> UInt16{
            return (UInt16(accumilator.value()) * 256) + UInt16(flag.value())
        }

        func hex() -> String {
            return value().hex()
        }
    
    func flags() -> String {
        return flag.value().bin()
    }

    var registerPair: RegisterPairStruct {
        RegisterPairStruct(high: accumilator.hexValue(), low: flag.hexValue(), name: "AF")
    }
    
}
