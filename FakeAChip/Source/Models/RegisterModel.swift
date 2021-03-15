//
//  RegisterModel.swift
//  inSpeccytor
//
//  Created by Mike Hall on 11/10/2020.
//

import Foundation

struct RegisterModel: Codable {
    // 8 Bit registers
    var primary: RegisterBank = RegisterBank()
    
    // 8 Bit swap registers
    var swap: RegisterBank = RegisterBank()
    
    // 8 Bit other registers
    var registerI: UInt8 = 0
    var registerR: UInt8 = 0
    
    // 16 Bit other registers
    var registerIX: UInt16 = 0
    var registerIY: UInt16 = 0
    var registerSP: UInt16 = 0 // Stack pointer
    var registerPC: UInt16 = 0 // Program counter
    
    var interuptMode: Int = 0
    var interuptEnabled: Bool = false
    
    var borderColour: UInt8 = 0
    
    var shouldReturn: Bool = false
    
    var ramBankSetting: UInt8 = 0
    
    func registerPair(l: UInt8, h: UInt8) -> UInt16{
        return (UInt16(h) * 256) + UInt16(l)
    }
    
}

struct RegisterBank: Codable {
    var registerA: UInt8 = 0
    var registerB: UInt8 = 0
    var registerC: UInt8 = 0
    var registerD: UInt8 = 0
    var registerE: UInt8 = 0
    var registerH: UInt8 = 0
    var registerL: UInt8 = 0
    var registerF: UInt8 = 0
}
