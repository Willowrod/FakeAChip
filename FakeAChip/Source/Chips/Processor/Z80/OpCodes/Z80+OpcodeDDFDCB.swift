//
//  Z80+OpcodeDDFDCB.swift
//  inSpeccytor
//
//  Created by Mike Hall on 28/12/2020.
//

import Foundation
extension Z80 {
    
    func opCodeDDFDCB(reg: RegisterPair){
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let targetByte = byte1.isSet(bit: 7) ? reg.value() &- UInt16(byte1.twosCompliment()) : reg.value() &+ UInt16(byte1)
        var changeByte = fetchRam(location: targetByte)
        let opCodeOffset = Int(byte2 / 8)
        let byteWriter = byte2 % 8
        var writeBack = true
        switch opCodeOffset {
        case 0: //RLC
            changeByte = changeByte.rlc()
        case 1: //RRC
            changeByte = changeByte.rrc()
        case 2: //RL
            changeByte = changeByte.rl()
        case 3: //RR
            changeByte = changeByte.rr()
        case 4: //SLA
            changeByte = changeByte.sla()
        case 5: //SRA
            changeByte = changeByte.sra()
        case 6: //SLL // Undocumented
            changeByte = changeByte.sll()
        case 7: //SRL
            changeByte = changeByte.srl()
        case 8...15: //BIT 0
            changeByte.testBitRAM(bit: opCodeOffset - 8)
            writeBack = false
            instructionComplete(states: 20, length: 3)
        case 16...23: // CLEAR
            changeByte = changeByte.clear(bit: opCodeOffset - 16)
        case 24...31: //SET
            changeByte = changeByte.set(bit: opCodeOffset - 24)
        default:
            print("Potential unknown code CB\(String(byte2, radix: 16)) From \(PC.hex())")
            print("-")
            writeBack = false
        }
        if writeBack {
            ldRam(location: targetByte, value: changeByte)
            if byteWriter != 6 {
            writeRegister(byte: byte2, value: changeByte)
            }
            instructionComplete(states: 23, length: 3)
        }
    }
}
