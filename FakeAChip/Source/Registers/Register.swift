//
//  Register.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation

class Register: Base8BitRegister {
    var flagRegister: FlagRegister = FlagRegister(value: 0x00)
    
    init(value: UInt8, flag: FlagRegister = Z80.F) {
        super.init(value: value)
        flagRegister = flag
    }
    
    init(value: UInt8, name: String, flag: FlagRegister = Z80.F) {
        super.init(value: value, name: name)
        flagRegister = flag
    }
    
    
    func inCommand(byte: UInt8){
        flagRegister.clearBit(bit: Flag.HALF_CARRY)
        flagRegister.clearBit(bit: Flag.SUBTRACT)
        flagRegister.clearBit(bit: Flag.SIGN)
        flagRegister.zero(passedValue: byte)
        flagRegister.clearBit(bit: Flag.PARITY)
        ld(value: byte)
    }
    
}
