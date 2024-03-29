//
//  Z80+OpCodeDDFD.swift
//  inSpeccytor
//
//  Created by Mike Hall on 28/12/2020.
//

import Foundation

extension Z80 {
    
    func opCodeDDFD(reg: RegisterPair, byte: UInt8){
        PC = PC &+ 1
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let word: UInt16 = (UInt16(byte2) * 256) + UInt16(byte1)
        let targetByte = byte1.isSet(bit: 7) ? reg.value() &- UInt16(byte1.twosCompliment()) : reg.value() &+ UInt16(byte1)
        switch byte {
        case 0x09:
            reg.add(diff: bc().value())
            instructionComplete(states: 15)
        case 0x19:
            reg.add(diff: de().value())
            instructionComplete(states: 15)
        case 0x21:
            reg.ld(value: word)
            instructionComplete(states: 14, length: 3)
        case 0x22:
            ldRam(location: word, value: reg.value())
            instructionComplete(states: 20, length: 3)
        case 0x23:
            reg.inc()
            instructionComplete(states: 10)
        case 0x24:
            reg.incHigh()
            instructionComplete(states: 10)
        case 0x25:
            reg.decHigh()
            instructionComplete(states: 10)
        case 0x26:
            reg.ldHigh(value: byte1)
            instructionComplete(states: 8, length: 2)
        case 0x29:
            reg.add(diff: reg.value())
            instructionComplete(states: 15)
        case 0x2A:
            reg.ld(value: fetchRamWord(location: word))
            instructionComplete(states: 20, length: 3)
        case 0x2B:
            reg.dec()
            instructionComplete(states: 10)
        case 0x2C:
            reg.incLow()
            instructionComplete(states: 10)
        case 0x2D:
            reg.decLow()
            instructionComplete(states: 10)
        case 0x2E:
            reg.ldLow(value: byte1)
            instructionComplete(states: 8, length: 2)
        case 0x34:
            incRam(location: Int(targetByte))
            instructionComplete(states: 23, length: 2)
        case 0x35:
            decRam(location: Int(targetByte))
            instructionComplete(states: 23, length: 2)
        case 0x36:
            ldRam(location: targetByte, value: byte2)
            instructionComplete(states: 19, length: 3)
        case 0x39:
            reg.add(diff: SP)
            instructionComplete(states: 15)
        case 0x44:
            ldB(value: reg.high())
            instructionComplete(states: 8)
        case 0x45:
            ldB(value: reg.low())
            instructionComplete(states: 8)
        case 0x46:
            ldB(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x4C:
            ldC(value: reg.high())
            instructionComplete(states: 8)
        case 0x4D:
            ldC(value: reg.low())
            instructionComplete(states: 8)
        case 0x4E:
            ldC(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x54:
            ldD(value: reg.high())
            instructionComplete(states: 8)
        case 0x55:
            ldD(value: reg.low())
            instructionComplete(states: 8)
        case 0x56:
            ldD(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x5C:
            ldE(value: reg.high())
            instructionComplete(states: 8)
        case 0x5D:
            ldE(value: reg.low())
            instructionComplete(states: 8)
        case 0x5E:
            ldE(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x60:
            reg.ldHigh(value: b())
            instructionComplete(states: 8)
        case 0x61:
            reg.ldHigh(value: c())
            instructionComplete(states: 8)
        case 0x62:
            reg.ldHigh(value: d())
            instructionComplete(states: 8)
        case 0x63:
            reg.ldHigh(value: e())
            instructionComplete(states: 8)
        case 0x64:
            instructionComplete(states: 8)
        case 0x65:
            reg.ldHigh(value: reg.low())
            instructionComplete(states: 8)
        case 0x66:
            ldH(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x67:
            reg.ldHigh(value: a())
            instructionComplete(states: 8)
        case 0x68:
            reg.ldLow(value: b())
            instructionComplete(states: 8)
        case 0x69:
            reg.ldLow(value: c())
            instructionComplete(states: 8)
        case 0x6A:
            reg.ldLow(value: d())
            instructionComplete(states: 8)
        case 0x6B:
            reg.ldLow(value: e())
            instructionComplete(states: 8)
        case 0x6C:
            reg.ldLow(value: reg.high())
            instructionComplete(states: 8)
        case 0x6D:
            instructionComplete(states: 8)
        case 0x6E:
            ldL(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x6F:
            reg.ldLow(value: a())
            instructionComplete(states: 8)
        case 0x70:
            ldRam(location: targetByte, value: b())
            instructionComplete(states: 19, length: 2)
        case 0x71:
            ldRam(location: targetByte, value: c())
            instructionComplete(states: 19, length: 2)
        case 0x72:
            ldRam(location: targetByte, value: d())
            instructionComplete(states: 19, length: 2)
        case 0x73:
            ldRam(location: targetByte, value: e())
            instructionComplete(states: 19, length: 2)
        case 0x74:
            ldRam(location: targetByte, value: h())
            instructionComplete(states: 19, length: 2)
        case 0x75:
            ldRam(location: targetByte, value: l())
            instructionComplete(states: 19, length: 2)
        case 0x77:
            ldRam(location: targetByte, value: a())
            instructionComplete(states: 19, length: 2)
        case 0x7C:
            aR().ld(value: reg.high())
            instructionComplete(states: 8)
        case 0x7D:
            aR().ld(value: reg.low())
            instructionComplete(states: 8)
        case 0x7E:
            aR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x84:
            aR().add(diff: reg.high())
            instructionComplete(states: 8)
        case 0x85:
            aR().add(diff: reg.low())
            instructionComplete(states: 8)
        case 0x86:
            aR().add(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x8C:
            aR().aDC(diff: reg.high())
            instructionComplete(states: 8)
        case 0x8D:
            aR().aDC(diff: reg.low())
            instructionComplete(states: 8)
        case 0x8E:
            aR().aDC(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x94:
            aR().sub(diff: reg.high())
            instructionComplete(states: 8)
        case 0x95:
            aR().sub(diff: reg.low())
            instructionComplete(states: 8)
        case 0x96:
            aR().sub(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x9C:
            aR().sBC(diff: reg.high())
            instructionComplete(states: 8)
        case 0x9D:
            aR().sBC(diff: reg.low())
            instructionComplete(states: 8)
        case 0x9E:
            aR().sBC(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xA4:
            aR().aND(byte: reg.high())
            instructionComplete(states: 8)
        case 0xA5:
            aR().aND(byte: reg.low())
            instructionComplete(states: 8)
        case 0xA6:
            aR().aND(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xAC:
            aR().xOR(byte: reg.high())
            instructionComplete(states: 8)
        case 0xAD:
            aR().xOR(byte: reg.low())
            instructionComplete(states: 8)
        case 0xAE:
            aR().xOR(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xB4:
            aR().oR(byte: reg.high())
            instructionComplete(states: 8)
        case 0xB5:
            aR().oR(byte: reg.low())
            instructionComplete(states: 8)
        case 0xB6:
            aR().oR(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xBC:
            aR().compare(byte: reg.high())
            instructionComplete(states: 8)
        case 0xBD:
            aR().compare(byte: reg.low())
            instructionComplete(states: 8)
        case 0xBE:
            aR().compare(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xE1:
            reg.ld(value: pop())
            instructionComplete(states: 19)
        case 0xE3:
            let oldReg = reg.value()
            reg.ld(value: fetchRamWord(location: SP))
            ldRam(location: SP, value: oldReg)
            instructionComplete(states: 19)
        case 0xE5:
            push(value: reg.value())
            instructionComplete(states: 19)
        case 0xE9:
            jump(location: reg.value())
            instructionComplete(states: 8, length: 0)
        case 0xF9:
            SP = reg.value()
            instructionComplete(states: 10, length: 1)
        case 0xCB:
            opCodeDDFDCB(reg: reg)
        default:
            print("Potential Unknown code ED\(String(byte, radix: 16)) From \(PC.hex())")
            print("-")
        }
        R = R &+ 1
                if R >= 0x80 {
                    R = 0x0
                }
    }
}
