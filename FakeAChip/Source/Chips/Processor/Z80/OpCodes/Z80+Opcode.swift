//
//  Z80+Opcode.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
import os

extension Z80 {
    
    func opCode(byte: UInt8){
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let word: UInt16 = (UInt16(byte2) * 256) + UInt16(byte1)
        switch byte {
        
        case 0xCB:
            opCodeCB(byte: byte1)
            break
        case 0xDD:
            opCodeDDFD(reg: IX, byte: byte1)
            
            break
        case 0xED:
            opCodeED(byte: byte1)
            
            break
        case 0xFD:
            opCodeDDFD(reg: IY, byte: byte1)
            
        case 0:
            instructionComplete(states: 4)
        case 0x01:
            bc().ld(value: word)
            instructionComplete(states: 10, length: 3)
        case 0x02:
            ldRam(location: bc().value(), value: a())
            instructionComplete(states: 7)
        case 0x03:
            bc().inc()
            instructionComplete(states: 6)
        case 0x04:
            bR().inc()
            instructionComplete(states: 4)
        case 0x05:
            bR().dec()
            instructionComplete(states: 4)
        case 0x06:
            bR().ld(value: byte1)
            instructionComplete(states: 7, length: 2)
        case 0x07:
            aR().rlcA()
            instructionComplete(states: 4)
        case 0x08:
            exchange(working: af(), spare: af2())
            instructionComplete(states: 4)
        case 0x09:
            let oldval = hl().value()
            hl().add(diff: bc().value())
            instructionComplete(states: 11)
        case 0x0A:
            aR().ld(value: fetchRam(location: bc().value()))
            instructionComplete(states: 7)
        case 0x0B:
            bc().dec()
            instructionComplete(states: 6)
        case 0x0C:
            cR().inc()
            instructionComplete(states: 4)
        case 0x0D:
            cR().dec()
            instructionComplete(states: 4)
        case 0x0E:
            cR().ld(value: byte1)
            instructionComplete(states: 7, length: 2)
        case 0x0F:
            aR().rrcA()
            instructionComplete(states: 4)
        case 0x10:
            bR().ld(value: b() &- 1)
            if (b() == 0){
                instructionComplete(states: 8, length: 2)
            } else {
                relativeJump(twos: byte1)
                instructionComplete(states: 13, length: 0)
            }
        case 0x11: //LD DE,nn
            de().ld(value: word)
            instructionComplete(states: 10, length: 3)
        case 0x12:
            ldRam(location: de().value(), value: a())
            instructionComplete(states: 7)
        case 0x13:
            de().inc()
            instructionComplete(states: 6)
        case 0x14:
            dR().inc()
            instructionComplete(states: 4)
        case 0x15:
            dR().dec()
            instructionComplete(states: 4)
        case 0x16:
            dR().ld(value: byte1)
            instructionComplete(states: 7, length: 2)
        case 0x17:
            aR().rlA()
            instructionComplete(states: 4)
            break
        case 0x18:
            relativeJump(twos: byte1)
            instructionComplete(states: 12, length: 0)
        case 0x19:
            let oldval = hl()
            hl().add(diff: de().value())
            instructionComplete(states: 15)
        case 0x1A:
            aR().ld(value: fetchRam(location: de().value()))
            instructionComplete(states: 7)
        case 0x1B:
            de().dec()
            instructionComplete(states: 6)
        case 0x1C:
            eR().inc()
            instructionComplete(states: 4)
        case 0x1D:
            eR().dec()
            instructionComplete(states: 4)
        case 0x1E:
            eR().ld(value: byte1)
            instructionComplete(states: 7, length: 2)
        case 0x1F:
            aR().rrA()
            instructionComplete(states: 4)
        case 0x20:
            if (f().isSet(bit: Flag.ZERO)){
                instructionComplete(states: 7, length: 2)
            } else {
                relativeJump(twos: byte1)
                instructionComplete(states: 12, length: 0)
            }
        case 0x21:
            hl().ld(value: word)
            instructionComplete(states: 7, length: 3)
        case 0x22:
            ldRam(location: word, value: l())
            ldRam(location: word &+ 1, value: h())
            instructionComplete(states: 16, length: 3)
        case 0x23:
            hl().inc()
            instructionComplete(states: 6)
        case 0x24:
            hR().inc()
            instructionComplete(states: 4)
        case 0x25:
            hR().dec()
            instructionComplete(states: 4)
        case 0x26:
            hR().ld(value: byte1)
            instructionComplete(states: 7, length: 2)
        case 0x27:
            aR().daA()
            instructionComplete(states: 4)
        case 0x28:
            if (f().isSet(bit: Flag.ZERO)){
                relativeJump(twos: byte1)
                instructionComplete(states: 12, length: 0)
                // kurrentOpCode= "JP, Z (Zero flag set, Jump by \(byte1.hex()) to \(PC.hex()))"
            } else {
                instructionComplete(states: 7, length: 2)
                // kurrentOpCode= "JP, Z (Zero flag set, no jump)"
            }
        case 0x29:
            let oldval = HL
            hl().addSelf()
            // kurrentOpCode= "ADD HL, HL (\(oldval.hex()) + \(oldval.hex()) = \(HL.hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD HL,HL", m: " ", l: 1)
        case 0x2A:
            lR().ld(value: fetchRam(location: word))
            hR().ld(value: fetchRam(location: word &+ 1))
            // kurrentOpCode= "LD HL, (nn) (LD HL, \(word.hex()))"
            instructionComplete(states: 16, length: 3) //returnOpCode(v: code, c: "LD HL,($$)", m: " ", l: 3, t: .DATA)
        case 0x2B:
            hl().dec()
            // kurrentOpCode= "DEC HL (HL = \(HL.hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC HL", m: " ", l: 1)
        case 0x2C:
            lR().inc()
            // kurrentOpCode= "INC L (L = \(l().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC L", m: " ", l: 1)
        case 0x2D:
            lR().dec()
            // kurrentOpCode= "DEC L (L = \(l().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC L", m: " ", l: 1)
        case 0x2E:
            lR().ld(value: byte1)
            // kurrentOpCode= "LD L, n (LD L, \(byte1.hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD L,±", m: " ", l: 2)
        case 0x2F:
            //            aR().compare(value: a())
            // kurrentOpCode= "CPL ()"
            aR().cpl()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP L", m: " ", l: 1)
        case 0x30:
            if (f().isSet(bit: Flag.CARRY)){
                instructionComplete(states: 7, length: 2)
                // kurrentOpCode= "JP, NC (Carry flag set, No jump)"
            } else {
                relativeJump(twos: byte1)
                // kurrentOpCode= "JP, NC (Carry flag not set, Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 12, length: 0)
            }
        case 0x31:
            // kurrentOpCode= "LD SP, nn (LD SP, \(word.hex()))"
            SP = word
            instructionComplete(states: 10, length: 3) //returnOpCode(v: code, c: "LD SP,$$", m: " ", l: 3, t: .DATA)
        case 0x32:
            // kurrentOpCode= "LD (nn), A (LD \(word.hex()), \(a().hex()))"
            ldRam(location: word, value: a())
            instructionComplete(states: 13, length: 3) //returnOpCode(v: code, c: "LD ($$),A", m: " ", l: 3, t: .DATA)
        case 0x33:
            SP = SP &+ 1
            // kurrentOpCode= "INC SP (SP = \(SP.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "INC SP", m: " ", l: 1)
        case 0x34:
            incRam(location: Int(hl().value())) // ram[Int(hl().value())] = ram[Int(hl().value())] &+ 1
            // kurrentOpCode= "INC (HL) (Value at \(HL.hex()) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "INC (HL)", m: " ", l: 1)
        case 0x35:
            decRam(location: Int(hl().value())) // ram[Int(hl().value())] = ram[Int(hl().value())] &- 1
            // kurrentOpCode= "DEC (HL) (Value at \(HL.hex()) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "DEC (HL)", m: " ", l: 1)
        case 0x36:
            ldRam(location: Int(hl().value()), value: byte1) //  ram[Int(hl().value())] = byte1
            // kurrentOpCode= "LD (HL), n (LD \(HL.hex()), \(byte1.hex()))"
            instructionComplete(states: 10, length: 2) //returnOpCode(v: code, c: "LD (HL),$$", m: " ", l: 3, t: .DATA)
        case 0x37:
            Z80.F.scf(acc: a())
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SCF", m: " ", l: 1)
        case 0x38:
            if (!f().isSet(bit: Flag.CARRY)){
                // kurrentOpCode= "JP, C (Carry flag not set, No jump)"
                instructionComplete(states: 7, length: 2)
            } else {
                relativeJump(twos: byte1)
                // kurrentOpCode= "JP, C (Carry flag set, Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 12, length: 0)
            }
        //returnOpCode(v: code, c: "JR C, ##", m: "If the Carry flag is set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
        case 0x39:
            let oldval = HL
            hl().add(diff: SP)
            // kurrentOpCode= "ADD HL, SP (\(oldval.hex()) + \(SP.hex()) = \(HL.hex())"
            instructionComplete(states: 15) //returnOpCode(v: code, c: "ADD HL,SP", m: " ", l: 1)
        case 0x3A:
            aR().ld(value: fetchRam(location: word))
            // kurrentOpCode= "LD A, (nn) (LD A with the value of RAM location \(word.hex()) \(a().hex())"
            instructionComplete(states: 13, length: 3) //returnOpCode(v: code, c: "LD A,($$)", m: " ", l: 3, t: .DATA)
        case 0x3B:
            SP = SP &- 1
            // kurrentOpCode= "DEC SP (SP = \(SP.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "DEC SP", m: " ", l: 1)
        case 0x3C:
            aR().inc()
            // kurrentOpCode= "INC A (A = \(a().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC A", m: " ", l: 1)
        case 0x3D:
            aR().dec()
            // kurrentOpCode= "DEC A (A = \(a().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC A", m: " ", l: 1)
        case 0x3E: // LD A,$$
            aR().ld(value: byte1)
            // kurrentOpCode= "LD A, n (LD A, \(byte1.hex()))"
            instructionComplete(states: 7, length: 2)
        case 0x3F:
            Z80.F.ccf(acc: a())
            // kurrentOpCode= "CCF ()"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CCF", m: " ", l: 1)
        case 0x40:
            // kurrentOpCode= "LD B,B (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,B", m: " ", l: 1)
        case 0x41:
            bR().ld(value: c())
            // kurrentOpCode= "LD B,C (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,C", m: " ", l: 1)
        case 0x42:
            bR().ld(value: d())
            // kurrentOpCode= "LD B,D (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,D", m: " ", l: 1)
        case 0x43:
            bR().ld(value: e())
            // kurrentOpCode= "LD B,E (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,E", m: " ", l: 1)
        case 0x44:
            bR().ld(value: h())
            // kurrentOpCode= "LD B,H (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,H", m: " ", l: 1)
        case 0x45:
            bR().ld(value: l())
            // kurrentOpCode= "LD B,L (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,L", m: " ", l: 1)
        case 0x46:
            bR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD B,(HL) (Where HL is \(HL.hex()) -  B = \(b().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD B,(HL)", m: " ", l: 1)
        case 0x47: //LD B,A
            bR().ld(value: a())
            // kurrentOpCode= "LD B,A (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,A", m: "Load register B with the value of register A", l: 1)
        case 0x48:
            cR().ld(value: b())
            // kurrentOpCode= "LD C,B (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,B", m: " ", l: 1)
        case 0x49:
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,C", m: " ", l: 1)
            // kurrentOpCode= "LD C,C (C = \(c().hex()))"
        case 0x4A:
            cR().ld(value: d())
            // kurrentOpCode= "LD C,D (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,D", m: " ", l: 1)
        case 0x4B:
            cR().ld(value: e())
            // kurrentOpCode= "LD C,E (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,E", m: " ", l: 1)
        case 0x4C:
            cR().ld(value: h())
            // kurrentOpCode= "LD C,H (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,H", m: " ", l: 1)
        case 0x4D:
            cR().ld(value: l())
            // kurrentOpCode= "LD C,L (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,L", m: " ", l: 1)
        case 0x4E:
            cR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD C,(HL) (Where HL is \(HL.hex()) -  C = \(c().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD C,(HL)", m: " ", l: 1)
        case 0x4F:
            cR().ld(value: a())
            // kurrentOpCode= "LD C,A (B = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,A", m: " ", l: 1)
        case 0x50:
            dR().ld(value: b())
            // kurrentOpCode= "LD D,B (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,B", m: " ", l: 1)
        case 0x51:
            dR().ld(value: c())
            // kurrentOpCode= "LD D,C (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,C", m: " ", l: 1)
        case 0x52:
            // kurrentOpCode= "LD D,D (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,D", m: " ", l: 1)
        case 0x53:
            dR().ld(value: e())
            // kurrentOpCode= "LD D,E (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,E", m: " ", l: 1)
        case 0x54:
            dR().ld(value: h())
            // kurrentOpCode= "LD D,H (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,H", m: " ", l: 1)
        case 0x55:
            dR().ld(value: l())
            // kurrentOpCode= "LD D,L (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,L", m: " ", l: 1)
        case 0x56:
            dR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD D,(HL) (Where HL is \(HL.hex()) -  D = \(d().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD D,(HL)", m: " ", l: 1)
        case 0x57:
            dR().ld(value: a())
            // kurrentOpCode= "LD D,A (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,A", m: " ", l: 1)
        case 0x58:
            eR().ld(value: b())
            // kurrentOpCode= "LD E,B (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,B", m: " ", l: 1)
        case 0x59:
            eR().ld(value: c())
            // kurrentOpCode= "LD E,C (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,C", m: " ", l: 1)
        case 0x5A:
            eR().ld(value: d())
            // kurrentOpCode= "LD E,D (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,D", m: " ", l: 1)
        case 0x5B:
            // kurrentOpCode= "LD E,E (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,E", m: " ", l: 1)
        case 0x5C:
            eR().ld(value: h())
            // kurrentOpCode= "LD E,H (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,H", m: " ", l: 1)
        case 0x5D:
            eR().ld(value: l())
            // kurrentOpCode= "LD E,L (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,L", m: " ", l: 1)
        case 0x5E:
            eR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD E,(HL) (Where HL is \(HL.hex()) -  E = \(e().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD E,(HL)", m: " ", l: 1)
        case 0x5F:
            eR().ld(value: a())
            // kurrentOpCode= "LD E,A (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,A", m: " ", l: 1)
        case 0x60:
            hR().ld(value: b())
            // kurrentOpCode= "LD H,B (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,B", m: " ", l: 1)
        case 0x61:
            hR().ld(value: c())
            // kurrentOpCode= "LD H,C (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,C", m: " ", l: 1)
        case 0x62:
            hR().ld(value: d())
            // kurrentOpCode= "LD H,D (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,D", m: " ", l: 1)
        case 0x63:
            hR().ld(value: e())
            // kurrentOpCode= "LD H,E (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,E", m: " ", l: 1)
        case 0x64:
            // kurrentOpCode= "LD H,H (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,H", m: " ", l: 1)
        case 0x65:
            hR().ld(value: l())
            // kurrentOpCode= "LD H,L (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,L", m: " ", l: 1)
        case 0x66:
            hR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD H,(HL) (Where HL is \(HL.hex()) -  H = \(h().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD H,(HL)", m: " ", l: 1)
        case 0x67:
            hR().ld(value: a())
            // kurrentOpCode= "LD H,A (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,A", m: " ", l: 1)
        case 0x68:
            lR().ld(value: b())
            // kurrentOpCode= "LD L,B (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,B", m: " ", l: 1)
        case 0x69:
            lR().ld(value: c())
            // kurrentOpCode= "LD L,C (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,C", m: " ", l: 1)
        case 0x6A:
            lR().ld(value: d())
            // kurrentOpCode= "LD L,D (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,D", m: " ", l: 1)
        case 0x6B:
            lR().ld(value: e())
            // kurrentOpCode= "LD L,E (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,E", m: " ", l: 1)
        case 0x6C:
            lR().ld(value: h())
            // kurrentOpCode= "LD L,H (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,H", m: " ", l: 1)
        case 0x6D:
            // kurrentOpCode= "LD L,L (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,L", m: " ", l: 1)
        case 0x6E:
            lR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD L,(HL) (Where HL is \(HL.hex()) -  L = \(l().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD L,(HL)", m: " ", l: 1)
        case 0x6F:
            lR().ld(value: a())
            // kurrentOpCode= "LD L,A (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,A", m: " ", l: 1)
        case 0x70:
            ldRam(location: Int(hl().value()), value: b()) //  ram[Int(hl().value())] = b()
            // kurrentOpCode= "LD (HL), B (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x71:
            ldRam(location: Int(hl().value()), value: c()) //  ram[Int(hl().value())] = c()
            // kurrentOpCode= "LD (HL), C (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x72:
            ldRam(location: Int(hl().value()), value: d()) //  ram[Int(hl().value())] = d()
            // kurrentOpCode= "LD (HL), D (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x73:
            ldRam(location: Int(hl().value()), value: e()) //  ram[Int(hl().value())] = e()
            // kurrentOpCode= "LD (HL), E (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x74:
            let oldHL = HL
            ldRam(location: Int(hl().value()), value:  h()) //  ram[Int(hl().value())] = h()
            // kurrentOpCode= "LD (HL), H (Where HL is \(oldHL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x75:
            let oldHL = HL
            ldRam(location: Int(hl().value()), value: l()) //  ram[Int(hl().value())] = l()
            // kurrentOpCode= "LD (HL), L (Where HL is \(oldHL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x76:
            halt = true
            // kurrentOpCode= "HALT (Pause until next interupt)"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "HALT", m: " ", l: 1)
        case 0x77:
            ldRam(location: Int(hl().value()), value: a()) // ram[Int(hl().value())] = a()
            // kurrentOpCode= "LD (HL), A (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x78:
            aR().ld(value: b())
            // kurrentOpCode= "LD A,B (A = \(a().hex()))"
            instructionComplete(states: 4)
        case 0x79:
            aR().ld(value: c())
            // kurrentOpCode= "LD A,B (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,C", m: " ", l: 1)
        case 0x7A:
            aR().ld(value: d())
            // kurrentOpCode= "LD A,D (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,D", m: " ", l: 1)
        case 0x7B:
            aR().ld(value: e())
            // kurrentOpCode= "LD A,E (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,E", m: " ", l: 1)
        case 0x7C:
            aR().ld(value: h())
            // kurrentOpCode= "LD A,H (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,H", m: " ", l: 1)
        case 0x7D:
            aR().ld(value: l())
            // kurrentOpCode= "LD A,L (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,L", m: " ", l: 1)
        case 0x7E:
            aR().ld(value: fetchRam(registerPair: hl()))
            // kurrentOpCode= "LD A,(HL) (Where HL is \(HL.hex()) -  A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,(HL)", m: " ", l: 1)
        case 0x7F:
            // kurrentOpCode= "LD A,A (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,A", m: " ", l: 1)
        case 0x80:
            
            aR().add(diff: b())
            // kurrentOpCode= "ADD A,B (\(oldA.hex()) + \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,B", m: " ", l: 1)
        case 0x81:
            
            aR().add(diff: c())
            // kurrentOpCode= "ADD A,C (\(oldA.hex()) + \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,C", m: " ", l: 1)
        case 0x82:
            
            aR().add(diff: d())
            // kurrentOpCode= "ADD A,D (\(oldA.hex()) + \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,D", m: " ", l: 1)
        case 0x83:
            
            aR().add(diff: e())
            // kurrentOpCode= "ADD A,E (\(oldA.hex()) + \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,E", m: " ", l: 1)
        case 0x84:
            
            aR().add(diff: h())
            // kurrentOpCode= "ADD A,H (\(oldA.hex()) + \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,H", m: " ", l: 1)
        case 0x85:
            
            aR().add(diff: l())
            // kurrentOpCode= "ADD A,L (\(oldA.hex()) + \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,L", m: " ", l: 1)
        case 0x86:
            
            aR().add(diff: fetchRam(location: hl().value()))
            // kurrentOpCode= "ADD A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) + \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "ADD A,(HL)", m: " ", l: 1)
        case 0x87:
            
            aR().add(diff: a())
            // kurrentOpCode= "ADD A,A (\(oldA.hex()) + \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,A", m: " ", l: 1)
        case 0x88:
            
            aR().aDC(diff: b())
            // kurrentOpCode= "ADC A,B (\(oldA.hex()) +(with carry) \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,B", m: " ", l: 1)
        case 0x89:
            
            aR().aDC(diff: c())
            // kurrentOpCode= "ADC A,C (\(oldA.hex()) +(with carry) \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,C", m: " ", l: 1)
        case 0x8A:
            
            aR().aDC(diff: d())
            // kurrentOpCode= "ADC A,D (\(oldA.hex()) +(with carry) \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,D", m: " ", l: 1)
        case 0x8B:
            
            aR().aDC(diff: e())
            // kurrentOpCode= "ADC A,E (\(oldA.hex()) +(with carry) \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,E", m: " ", l: 1)
        case 0x8C:
            
            aR().aDC(diff: h())
            // kurrentOpCode= "ADC A,H (\(oldA.hex()) +(with carry) \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,H", m: " ", l: 1)
        case 0x8D:
            
            aR().aDC(diff: l())
            // kurrentOpCode= "ADC A,L (\(oldA.hex()) +(with carry) \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,L", m: " ", l: 1)
        case 0x8E:
            
            aR().aDC(diff: fetchRam(registerPair: hl()))
            // kurrentOpCode= "ADC A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) + \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,(HL)", m: " ", l: 1)
        case 0x8F:
            aR().aDC(diff: a())
            // kurrentOpCode= "ADC A,A (\(oldA.hex()) +(with carry) \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,A", m: " ", l: 1)
        case 0x90:
            aR().sub(diff: b())
            // kurrentOpCode= "SUB A,B (\(oldA.hex()) - \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,B", m: " ", l: 1)
        case 0x91:
            aR().sub(diff: c())
            // kurrentOpCode= "SUB A,C (\(oldA.hex()) - \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,C", m: " ", l: 1)
        case 0x92:
            aR().sub(diff: d())
            // kurrentOpCode= "SUB A,D (\(oldA.hex()) - \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,D", m: " ", l: 1)
        case 0x93:
            aR().sub(diff: e())
            // kurrentOpCode= "SUB A,E (\(oldA.hex()) - \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,E", m: " ", l: 1)
        case 0x94:
            aR().sub(diff: h())
            // kurrentOpCode= "SUB A,H (\(oldA.hex()) - \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,H", m: " ", l: 1)
        case 0x95:
            aR().sub(diff: l())
            // kurrentOpCode= "SUB A,L (\(oldA.hex()) - \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,L", m: " ", l: 1)
        case 0x96:
            aR().sub(diff: fetchRam(location: hl().value()))
            // kurrentOpCode= "SUB A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) - \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "SUB A,(HL)", m: " ", l: 1)
        case 0x97:
            aR().sub(diff: a())
            // kurrentOpCode= "SUB A,A (\(oldA.hex()) - \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,A", m: " ", l: 1)
        case 0x98:
            aR().sBC(diff: b())
            // kurrentOpCode= "SBC A,B (\(oldA.hex()) - (with carry) \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,B", m: " ", l: 1)
        case 0x99:
            aR().sBC(diff: c())
            // kurrentOpCode= "SBC A,C (\(oldA.hex()) - (with carry) \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,C", m: " ", l: 1)
        case 0x9A:
            aR().sBC(diff: d())
            // kurrentOpCode= "SBC A,D (\(oldA.hex()) - (with carry) \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,D", m: " ", l: 1)
        case 0x9B:
            aR().sBC(diff: e())
            // kurrentOpCode= "SBC A,E (\(oldA.hex()) - (with carry) \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,E", m: " ", l: 1)
        case 0x9C:
            aR().sBC(diff: h())
            // kurrentOpCode= "SBC A,H (\(oldA.hex()) - (with carry) \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,H", m: " ", l: 1)
        case 0x9D:
            aR().sBC(diff: l())
            // kurrentOpCode= "SBC A,L (\(oldA.hex()) - (with carry) \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,L", m: " ", l: 1)
        case 0x9E:
            aR().sBC(diff: fetchRam(location: hl().value()))
            // kurrentOpCode= "SBC A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) - \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "SBC A,(HL)", m: " ", l: 1)
        case 0x9F:
            aR().sBC(diff: a())
            // kurrentOpCode= "SBC A,A (\(oldA.hex()) - (with carry) \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,A", m: " ", l: 1)
        case 0xA0:
            aR().aND(byte: b())
            // kurrentOpCode= "AND A,B (\(oldA.hex()) & \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND B", m: " ", l: 1)
        case 0xA1:
            aR().aND(byte: c())
            // kurrentOpCode= "AND A,C (\(oldA.hex()) & \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND C", m: " ", l: 1)
        case 0xA2:
            aR().aND(byte: d())
            // kurrentOpCode= "AND A,D (\(oldA.hex()) & \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND D", m: " ", l: 1)
        case 0xA3:
            aR().aND(byte: e())
            // kurrentOpCode= "AND A,E (\(oldA.hex()) & \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND E", m: " ", l: 1)
        case 0xA4:
            aR().aND(byte: h())
            // kurrentOpCode= "AND A,H (\(oldA.hex()) & \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND H", m: " ", l: 1)
        case 0xA5:
            aR().aND(byte: l())
            // kurrentOpCode= "AND A,L (\(oldA.hex()) & \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND L", m: " ", l: 1)
        case 0xA6:
            aR().aND(byte: fetchRam(location: hl().value()))
            // kurrentOpCode= "AND A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) & \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "AND (HL)", m: " ", l: 1)
        case 0xA7:
            aR().aND()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND A", m: " ", l: 1)
            // kurrentOpCode= "AND A,A (\(oldA.hex()) & \(oldA.hex()) = \(a().hex()))"
        case 0xA8:
            aR().xOR(byte: b())
            // kurrentOpCode= "XOR A,B (\(oldA.hex()) ^ \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR B", m: " ", l: 1)
        case 0xA9:
            aR().xOR(byte: c())
            // kurrentOpCode= "XOR A,C (\(oldA.hex()) ^ \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR C", m: " ", l: 1)
        case 0xAA:
            aR().xOR(byte: d())
            // kurrentOpCode= "XOR A,D (\(oldA.hex()) ^ \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR D", m: " ", l: 1)
        case 0xAB:
            aR().xOR(byte: e())
            // kurrentOpCode= "XOR A,E (\(oldA.hex()) ^ \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR E", m: " ", l: 1)
        case 0xAC:
            aR().xOR(byte: h())
            // kurrentOpCode= "XOR A,H (\(oldA.hex()) ^ \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR H", m: " ", l: 1)
        case 0xAD:
            aR().xOR(byte: l())
            // kurrentOpCode= "XOR A,L (\(oldA.hex()) ^ \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR L", m: " ", l: 1)
        case 0xAE:
            aR().xOR(byte: fetchRam(location: hl().value()))
            // kurrentOpCode= "XOR A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) ^ \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "XOR (HL)", m: " ", l: 1)
        case 0xAF:
            aR().xOR()
            // kurrentOpCode= "XOR A,B (\(oldA.hex()) ^ \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR A", m: " ", l: 1)
        case 0xB0:
            aR().oR(byte: b())
            // kurrentOpCode= "OR A,B (\(oldA.hex()) | \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR B", m: " ", l: 1)
        case 0xB1:
            aR().oR(byte: c())
            // kurrentOpCode= "OR A,C (\(oldA.hex()) | \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR C", m: " ", l: 1)
        case 0xB2:
            aR().oR(byte: d())
            // kurrentOpCode= "OR A,D (\(oldA.hex()) | \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR D", m: " ", l: 1)
        case 0xB3:
            aR().oR(byte: e())
            // kurrentOpCode= "OR A,E (\(oldA.hex()) | \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR E", m: " ", l: 1)
        case 0xB4:
            aR().oR(byte: h())
            // kurrentOpCode= "OR A,H (\(oldA.hex()) | \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR H", m: " ", l: 1)
        case 0xB5:
            aR().oR(byte: l())
            // kurrentOpCode= "OR A,L (\(oldA.hex()) | \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR L", m: " ", l: 1)
        case 0xB6:
            aR().oR(byte: fetchRam(location: hl().value()))
            // kurrentOpCode= "OR A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) | \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7)
        case 0xB7:
            aR().oR()
            // kurrentOpCode= "OR A,A (\(oldA.hex()) | \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR A", m: " ", l: 1)
        case 0xB8:
            aR().compare(byte: b())
            // kurrentOpCode= "CP A,B (CP \(oldA.hex()), \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP B", m: " ", l: 1)
        case 0xB9:
            aR().compare(byte: c())
            // kurrentOpCode= "CP A,C (CP \(oldA.hex()), \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP C", m: " ", l: 1)
        case 0xBA:
            aR().compare(byte: d())
            // kurrentOpCode= "CP A,D (CP \(oldA.hex()), \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP D", m: " ", l: 1)
        case 0xBB:
            aR().compare(byte: e())
            // kurrentOpCode= "CP A,E (CP \(oldA.hex()), \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP E", m: " ", l: 1)
        case 0xBC:
            aR().compare(byte: h())
            // kurrentOpCode= "CP A,H (CP \(oldA.hex()), \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP H", m: " ", l: 1)
        case 0xBD:
            aR().compare(byte: l())
            // kurrentOpCode= "CP A,L (CP \(oldA.hex()), \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP L", m: " ", l: 1)
        case 0xBE:
            aR().compare(byte: fetchRam(registerPair: hl()))
            // kurrentOpCode= "CP A,(HL) (Where HL is \(HL.hex()) - CP \(oldA.hex()), \(fetchRam(location: hl().value())))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "CP (HL)", m: " ", l: 1)
        case 0xBF:
            aR().compare(byte: a())
            // kurrentOpCode= "CP A,A (CP \(oldA.hex()), \(oldA.hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP A", m: " ", l: 1)
        case 0xC0:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                ret()
                // kurrentOpCode= "RET NZ - Zero flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                // kurrentOpCode= "RET NZ - Zero flag set, No return"
                instructionComplete(states: 5, length: 1)
            }
        //returnOpCode(v: code, c: "RET NZ", m: " ", l: 1)
        case 0xC1:
            bc().ld(value: pop())
            // kurrentOpCode= "POP BC (BC = \(BC.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "POP BC", m: " ", l: 1)
        case 0xC2:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                jump(location: word)
                // kurrentOpCode= "JP NZ, nn - Zero flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "JP NZ, nn - Zero flag set, No Jump"
            } //returnOpCode(v: code, c: "JP NZ,$$", m: " ", l: 3, t: .CODE)
        case 0xC3: //JP $$
            jump(location: word)
            // kurrentOpCode= "JP nn - Jump to \(PC.hex())"
            instructionComplete(states: 10, length: 0) //returnOpCode(v: code, c: "JP $$", m: "Jump to routine at memory location $$", l: 3, e: true, t: .CODE)
        case 0xC4:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                call(location: word, length: 3)
                // kurrentOpCode= "CALL NZ, nn - Zero flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                // kurrentOpCode= "CALL NZ, nn - Zero flag set, No Call"
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "CALL NZ,$$", m: " ", l: 3, t: .CODE)
        case 0xC5:
            push(value: bc().value())
            // kurrentOpCode= "PUSH BC (BC = \(BC.hex())"
            instructionComplete(states: 11)//returnOpCode(v: code, c: "PUSH BC", m: " ", l: 1)
        case 0xC6:
            aR().add(diff: byte1)
            // kurrentOpCode= "ADD A,n (\(oldA.hex()) + \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "ADD A,±", m: " ", l: 2)
        case 0xC7:
            call(location: 0x0000, length: 1)
            // kurrentOpCode= "RST 0 (Call 0x0000)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST 0", m: " ", l: 1)
        case 0xC8:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                ret()
                // kurrentOpCode= "RET Z - Zero flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                // kurrentOpCode= "RET Z - Zero flag not set, No return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET Z", m: " ", l: 1)
        case 0xC9:
            ret()
            // kurrentOpCode= "RET, Return to \(PC.hex())"
            instructionComplete(states: 10, length: 0) //returnOpCode(v: code, c: "RET", m: " ", l: 1, e: true)
        case 0xCA:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                jump(location: word)
                // kurrentOpCode= "JP Z, nn - Zero flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                // kurrentOpCode= "JP NZ, nn - Zero flag not set, No Jump"
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "JP Z, $$", m: "If the Zero flag is set in register F, jump to routine at memory location $$", l: 3, t: .CODE)
            //
            //
            break
        case 0xCC:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                call(location: word, length: 3)
                // kurrentOpCode= "CALL Z, nn - Zero flag set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                // kurrentOpCode= "CALL Z, nn - Zero flag not set, No Call"
                instructionComplete(states: 10, length: 3)
            }
        //returnOpCode(v: code, c: "CALL Z,$$", m: " ", l: 3, t: .CODE)
        case 0xCD:
            call(location: word, length: 3)
            // kurrentOpCode= "CALL nn - Call \(word.hex())"
            instructionComplete(states: 17, length: 0) //returnOpCode(v: code, c: "CALL $$", m: " ", l: 3, t: .CODE)
        case 0xCE:
            aR().aDC(diff: byte1)
            // kurrentOpCode= "ADC A,n (\(oldA.hex()) + (with carry) \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "ADC A,±", m: " ", l: 2)
        case 0xCF:
            call(location: 0x0008)
            // kurrentOpCode= "RST $8 (Call 0x0008)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &08", m: " ", l: 1)
        case 0xD0:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                ret()
                // kurrentOpCode= "RET NC - Carry flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                // kurrentOpCode= "RET C - Carry flag set, No Return"
                instructionComplete(states: 5, length: 1)
            }
        //returnOpCode(v: code, c: "RET NC", m: " ", l: 1)
        case 0xD1:
            de().ld(value: pop())
            // kurrentOpCode= "POP DE (DE = \(DE.hex())"
            instructionComplete(states: 11)  //returnOpCode(v: code, c: "POP DE", m: " ", l: 1)
        case 0xD2:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                jump(location: word)
                // kurrentOpCode= "JP NC - Carry flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "JP C - Carry flag set, No Jump"
            } //returnOpCode(v: code, c: "JP NC,$$", m: " ", l: 3, t: .CODE)
        case 0xD3: // TODO OUT (±),A
            performOut(port: byte1, map: byte2, source: aR())
            // kurrentOpCode= "OUT A - XXX"
            instructionComplete(states: 11, length: 2) //returnOpCode(v: code, c: "OUT (±),A", m: " ", l: 2)
        case 0xD4:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                call(location: word, length: 3)
                // kurrentOpCode= "CALL NC - Carry flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                // kurrentOpCode= "CALL C - Carry flag set, No Call"
                instructionComplete(states: 10, length: 3)
            }
        case 0xD5:
            push(value: de().value())
            // kurrentOpCode= "PUSH DE (DE = \(DE.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH DE", m: " ", l: 1)
        case 0xD6:
            aR().sub(diff: byte1)
            // kurrentOpCode= "SUB A,n (\(oldA.hex()) - \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "SUB A,±", m: " ", l: 2)
        case 0xD7:
            call(location: 0x0010)
            // kurrentOpCode= "RST $10 (Call 0x0010)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &10", m: " ", l: 1)
        case 0xD8:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                ret()
                // kurrentOpCode= "RET C - Carry flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                instructionComplete(states: 5, length: 1)
                // kurrentOpCode= "RET C - Carry flag not set, No Return"
            } //returnOpCode(v: code, c: "RET C", m: " ", l: 1)
        case 0xD9:
            exchangeAll()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EXX", m: " ", l: 1)
            // kurrentOpCode= "EXX - Exchange registers for spares"
        case 0xDA:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                jump(location: word)
                // kurrentOpCode= "JP C - Carry flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "JP C - Carry flag not set, No Jump"
            } //returnOpCode(v: code, c: "JP C,$$", m: " ", l: 3, t: .CODE)
        case 0xDB: // TODO: IN
       performIn(port: byte1, map: a(), destination: aR())
            instructionComplete(states: 11, length: 2)
            // kurrentOpCode= "IN A, (n) - IN \(oldA.hex()), (\(byte1.hex())) = \(a().hex())"
        case 0xDC:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                call(location: word, length: 3)
                instructionComplete(states: 17, length: 0)
                // kurrentOpCode= "CALL C - Carry flag set, Call \(PC.hex())"
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "CALL C - Carry flag not set, No Call"
            } //returnOpCode(v: code, c: "CALL C,$$", m: " ", l: 3, t: .CODE)
        case 0xDE:
            aR().sBC(diff: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "SBC A,±", m: " ", l: 2)
            // kurrentOpCode= "SBC A,n (\(oldA.hex()) - (with carry) \(byte1.hex()) = \(a().hex()))"
        case 0xDF:
            call(location: 0x0018)
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &18", m: " ", l: 1)
            // kurrentOpCode= "RST $18 (Call 0x0018)"
        case 0xE0:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                ret()
                // kurrentOpCode= "RET NP - Parity flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                // kurrentOpCode= "RET NP - Parity flag set, No Return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET PO", m: " ", l: 1)
        case 0xE1:
            hl().ld(value: pop())
            // kurrentOpCode= "POP HL (HL = \(HL.hex())"
            instructionComplete(states: 11)  //returnOpCode(v: code, c: "POP HL", m: " ", l: 1)
        case 0xE2:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                jump(location: word)
                // kurrentOpCode= "JP NP - Parity flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "JP NP - Parity flag set, No Jump"
            } //returnOpCode(v: code, c: "JP PO,$$", m: " ", l: 3, t: .CODE)
        case 0xE3:
            let oldHL = hl().value()
            hl().ld(value: fetchRamWord(location: SP))
            ldRam(location: SP, value: oldHL)
            // kurrentOpCode= "EX (SP), HL"
            instructionComplete(states: 19) //returnOpCode(v: code, c: "EX (SP),HL", m: " ", l: 1)
        case 0xE4:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                call(location: word, length: 3)
                // kurrentOpCode= "CALL NP - Parity flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "CALL NP - Parity flag set, No Call"
            } //returnOpCode(v: code, c: "CALL PO,$$", m: " ", l: 3, t: .CODE)
        case 0xE5:
            push(value: hl().value())
            // kurrentOpCode= "PUSH HL (HL = \(HL.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH HL", m: " ", l: 1)
        case 0xE6:
            aR().aND(byte: byte1)
            // kurrentOpCode= "AND A,n (\(oldA.hex()) & \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "AND ±", m: "Update A to only contain bytes set in both A and the value ±", l: 2)
            break
        case 0xE7:
            call(location: 0x0020)
            // kurrentOpCode= "RST $20 (Call 0x0020)"
            instructionComplete(states: 11, length: 0)//returnOpCode(v: code, c: "RST &20", m: " ", l: 1)
        case 0xE8:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                ret()
                // kurrentOpCode= "RET P - Parity flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                // kurrentOpCode= "RET P - Parity flag notset, No Return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET PE", m: " ", l: 1)
        case 0xE9:
            jump(location: hl().value())
            // kurrentOpCode= "JP HL"
            instructionComplete(states: 4, length: 0) //returnOpCode(v: code, c: "JP (HL)", m: " ", l: 1)
        case 0xEA:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                jump(location: word)
                // kurrentOpCode= "JP P - Parity flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "JP P - Parity flag notset, No Jump"
            } //returnOpCode(v: code, c: "JP PE,$$", m: " ", l: 3, t: .CODE)
        case 0xEB:
            exchange(working: de(), spare: hl())
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EX DE,HL", m: " ", l: 1)
        case 0xEC:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                call(location: word, length: 3)
                // kurrentOpCode= "CALL P - Parity flag set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                // kurrentOpCode= "CALL P - Parity flag notset, No Call"
            } //returnOpCode(v: code, c: "CALL PE,$$", m: " ", l: 3, t: .CODE)
        case 0xEE:
            aR().xOR(byte: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "XOR ±", m: " ", l: 2)
        case 0xEF:
            call(location: 0x0028)
            // kurrentOpCode= "RST $28 (Call 0x0028)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &28", m: " ", l: 1)
        case 0xF0:
            if (!Z80.F.isSet(bit: Flag.SIGN)){
                ret()
                instructionComplete(states: 11, length: 0)
            } else {
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET P", m: " ", l: 1)
        case 0xF1:
            af().ld(value: pop())
            // kurrentOpCode= "POP AF (AF = \(AF.hex())"
            instructionComplete(states: 11)  //returnOpCode(v: code, c: "POP AF", m: " ", l: 1)
        case 0xF2:
            if (!Z80.F.isSet(bit: Flag.SIGN)){
                jump(location: word)
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "JP P,$$", m: " ", l: 3, t: .CODE)
        case 0xF3:
            interupt = false
            interupt2 = false
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DI", m: " ", l: 1)
        case 0xF4:
            if (!Z80.F.isSet(bit: Flag.SIGN)){
                call(location: word, length: 3)
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "CALL P,$$", m: " ", l: 3, t: .CODE)
        case 0xF5:
            push(value: af().value())
            // kurrentOpCode= "PUSH AF (AF = \(AF.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH AF", m: " ", l: 1)
        case 0xF6:
            aR().oR(byte: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "OR ±", m: " ", l: 2)
        case 0xF7:
            call(location: 0x0030)
            // kurrentOpCode= "RST $30 (Call 0x0030)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &30", m: " ", l: 1)
        case 0xF8:
            if (Z80.F.isSet(bit: Flag.SIGN)){
                ret()
                instructionComplete(states: 11, length: 0)
            } else {
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET M", m: " ", l: 1)
        case 0xF9:
            SP = hl().value()
            instructionComplete(states: 6) //returnOpCode(v: code, c: "LD SP,HL", m: " ", l: 1)
        case 0xFA:
            if (Z80.F.isSet(bit: Flag.SIGN)){
                jump(location: word)
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "JP M,$$", m: " ", l: 3, t: .CODE)
        case 0xFB:
            interupt = true
            interupt2 = true
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EI", m: " ", l: 1)
        case 0xFC:
            if (Z80.F.isSet(bit: Flag.SIGN)){
                call(location: word, length: 3)
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "CALL M,$$", m: " ", l: 3, t: .CODE)
        case 0xFE:
            aR().compare(byte: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "CP ±", m: " ", l: 2)
        case 0xFF:
            call(location: 0x0038)
            // kurrentOpCode= "RST $38 (Call 0x0038)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &38", m: " ", l: 1)
        default:
                        print("Unknown code \(String(byte, radix: 16)) From \(PC.hex())")
                        print("-")
            instructionComplete(states: 4, length: 0)
        }
        R.inc()
    }
    
}
