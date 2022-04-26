//
//  RegisterModel.swift
//  inSpeccytor
//
//  Created by Mike Hall on 11/10/2020.
//

import Foundation

public struct ZXRegisterSnapshot: Codable {
    // 8 Bit registers
    public var primary: ZXStandardRegisterBank = ZXStandardRegisterBank()
    
    // 8 Bit swap registers
    public var swap: ZXStandardRegisterBank = ZXStandardRegisterBank()
    
    // 8 Bit other registers
    public var registerI: UInt8 = 0
    public var registerR: UInt8 = 0
    
    // 16 Bit other registers
    public var registerIX: UInt16 = 0
    public var registerIY: UInt16 = 0
    public var registerSP: UInt16 = 0 // Stack pointer
    public var registerPC: UInt16 = 0 // Program counter
    
    public var interuptMode: Int = 0
    public var interuptEnabled: Bool = false
    
    public var borderColour: UInt8 = 0
    
    public var shouldReturn: Bool = false
    
    public var ramBankSetting: UInt8 = 0
    
    public func registerPair(l: UInt8, h: UInt8) -> UInt16{
        return (UInt16(h) * 256) + UInt16(l)
    }
    
}

public struct ZXStandardRegisterBank: Codable {
    public var registerA: UInt8 = 0
    public var registerB: UInt8 = 0
    public var registerC: UInt8 = 0
    public var registerD: UInt8 = 0
    public var registerE: UInt8 = 0
    public var registerH: UInt8 = 0
    public var registerL: UInt8 = 0
    public var registerF: UInt8 = 0
}
