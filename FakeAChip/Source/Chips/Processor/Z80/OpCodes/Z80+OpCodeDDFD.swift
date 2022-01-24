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
            reg.registerPair.high.inc()
            instructionComplete(states: 10)
        case 0x25:
            reg.registerPair.high.dec()
            instructionComplete(states: 10)
        case 0x26:
            reg.registerPair.high.ld(value: byte1)
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
            reg.registerPair.low.inc()
            instructionComplete(states: 10)
        case 0x2D:
            reg.registerPair.low.dec()
            instructionComplete(states: 10)
        case 0x2E:
            reg.registerPair.low.ld(value: byte1)
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
            bR().ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x45:
            bR().ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x46:
            bR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x4C:
            cR().ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x4D:
            cR().ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x4E:
            cR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x54:
            dR().ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x55:
            dR().ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x56:
            dR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x5C:
            eR().ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x5D:
            eR().ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x5E:
            eR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x60:
            reg.registerPair.high.ld(value: b())
            instructionComplete(states: 8)
        case 0x61:
            reg.registerPair.high.ld(value: c())
            instructionComplete(states: 8)
        case 0x62:
            reg.registerPair.high.ld(value: d())
            instructionComplete(states: 8)
        case 0x63:
            reg.registerPair.high.ld(value: e())
            instructionComplete(states: 8)
        case 0x64:
            instructionComplete(states: 8)
        case 0x65:
            reg.registerPair.high.ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x66:
            hR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x67:
            reg.registerPair.high.ld(value: a())
            instructionComplete(states: 8)
        case 0x68:
            reg.registerPair.low.ld(value: b())
            instructionComplete(states: 8)
        case 0x69:
            reg.registerPair.low.ld(value: c())
            instructionComplete(states: 8)
        case 0x6A:
            reg.registerPair.low.ld(value: d())
            instructionComplete(states: 8)
        case 0x6B:
            reg.registerPair.low.ld(value: e())
            instructionComplete(states: 8)
        case 0x6C:
            reg.registerPair.low.ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x6D:
            instructionComplete(states: 8)
        case 0x6E:
            lR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x6F:
            reg.registerPair.low.ld(value: a())
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
            aR().ld(value: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x7D:
            aR().ld(value: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x7E:
            aR().ld(value: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x84:
            aR().add(diff: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x85:
            aR().add(diff: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x86:
            aR().add(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x8C:
            aR().aDC(diff: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x8D:
            aR().aDC(diff: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x8E:
            aR().aDC(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x94:
            aR().sub(diff: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x95:
            aR().sub(diff: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x96:
            aR().sub(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0x9C:
            aR().sBC(diff: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0x9D:
            aR().sBC(diff: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0x9E:
            aR().sBC(diff: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xA4:
            aR().aND(byte: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0xA5:
            aR().aND(byte: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0xA6:
            aR().aND(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xAC:
            aR().xOR(byte: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0xAD:
            aR().xOR(byte: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0xAE:
            aR().xOR(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xB4:
            aR().oR(byte: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0xB5:
            aR().oR(byte: reg.registerPair.low.value())
            instructionComplete(states: 8)
        case 0xB6:
            aR().oR(byte: fetchRam(location: targetByte))
            instructionComplete(states: 19, length: 2)
        case 0xBC:
            aR().compare(byte: reg.registerPair.high.value())
            instructionComplete(states: 8)
        case 0xBD:
            aR().compare(byte: reg.registerPair.low.value())
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
