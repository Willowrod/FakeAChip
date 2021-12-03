//
//  Z80+Opcode.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
import os

extension Z80 {
    
    func opCodeDebug(byte: UInt8) {
        currentOpCode = "Unknown"
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let word: UInt16 = (UInt16(byte2) * 256) + UInt16(byte1)
        tick = CFAbsoluteTimeGetCurrent()//Date().timeIntervalSince1970
        let oldA = a()
        let oldPC = PC
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
            
        case 0: // NOP
            instructionComplete(states: 4)
            currentOpCode = "NOP"
        //        break
        case 0x01: //LD BC,$$
            currentOpCode = "LD BC, nn (LD BC, \(word.hex()))"
            bc().ld(value: word)
            instructionComplete(states: 10, length: 3)
        case 0x02: //LD (BC),A
            currentOpCode = "LD (BC), A (LD \(BC.hex()), \(a().hex()))"
            ldRam(location: bc().value(), value: a())
            instructionComplete(states: 7)
        case 0x03:
            bc().inc()
            currentOpCode = "INC BC (BC = \(BC.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "INC BC", m: " ", l: 1)
        case 0x04:
            BC.incHigh()
            currentOpCode = "INC B (B = \(b().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC B", m: " ", l: 1)
        case 0x05:
            BC.decHigh()
            currentOpCode = "DEC B (B = \(b().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC B", m: " ", l: 1)
        case 0x06:
            currentOpCode = "LD B, n (LD B, \(byte1.hex()))"
            ldB(value: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD B,±", m: " ", l: 2)
        case 0x07:
            currentOpCode = "RLC A (Rotate Accumilator Left + Carry)"
            aR().rlcA()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "RLC A", m: " ", l: 1)
        case 0x08:
            currentOpCode = "EX AF, AF'"
            exchangeAF()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EX AF,AF'", m: " ", l: 1)
        case 0x09:
            let oldval = hl().value()
            hl().add(diff: bc().value())
            currentOpCode = "ADD HL, BC (\(oldval.hex()) + \(BC.hex()) = \(HL.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "ADD HL,BC", m: " ", l: 1)
        case 0x0A:
            ldA(value: fetchRam(location: bc().value()))
            currentOpCode = "LD A, (BC) (LD A, \(a().hex()) where BC is \(BC.hex())"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD A,(BC)", m: " ", l: 1)
        case 0x0B:
            bc().dec()
            currentOpCode = "DEC BC (BC = \(BC.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "DEC BC", m: " ", l: 1)
        case 0x0C:
            BC.incLow()
            currentOpCode = "INC C (C = \(c().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC C", m: " ", l: 1)
        case 0x0D:
            BC.decLow()
            currentOpCode = "DEC C (C = \(c().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC C", m: " ", l: 1)
        case 0x0E:
            currentOpCode = "LD C, n (LD C, \(byte1.hex()))"
            ldC(value: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD C,±", m: " ", l: 2)
        case 0x0F:
            currentOpCode = "RRC A (Rotate Accumilator Right + Carry)"
            aR().rrcA()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "RRC A", m: " ", l: 1)
        case 0x10:
            ldB(value: b() &- 1)
            if (b() == 0){
                currentOpCode = "DJNZ, DIS (B=0, No Jump)"
                instructionComplete(states: 8, length: 2)
            } else {
                relativeJump(twos: byte1)
                currentOpCode = "DJNZ, DIS (B=\(b().hex()), Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 13, length: 0)
            }//returnOpCode(v: code, c: "DJNZ##", m: " ", l: 2, t: .RELATIVE)
        case 0x11: //LD DE,nn
            de().ld(value: word)
            currentOpCode = "LD DE, nn (LD DE, \(word.hex()))"
            instructionComplete(states: 10, length: 3) //returnOpCode(v: code, c: "LD DE,$$", m: " ", l: 3, t: .DATA)
        case 0x12:
            currentOpCode = "LD (DE), A (LD \(DE.hex()), \(word.hex()))"
            ldRam(location: de().value(), value: a())
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD (DE),A", m: " ", l: 1)
        case 0x13:
            de().inc()
            currentOpCode = "INC DE (DE = \(DE.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "INC DE", m: " ", l: 1)
        case 0x14:
            DE.incHigh()
            currentOpCode = "INC D (D = \(d().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC D", m: " ", l: 1)
        case 0x15:
            DE.decHigh()
            currentOpCode = "DEC D (D = \(d().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC D", m: " ", l: 1)
        case 0x16:
            currentOpCode = "LD D, n (LD D, \(byte1.hex()))"
            ldD(value: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD D,±", m: " ", l: 2)
        case 0x17:
            aR().rlA()
            currentOpCode = "RLA (Rotate Accumilator Left)"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "RL A", m: " ", l: 1)
            break
        case 0x18:
            relativeJump(twos: byte1)
            currentOpCode = "JP, DIS (Jump by \(byte1.hex()) to \(PC.hex()))"
            instructionComplete(states: 12, length: 0) //returnOpCode(v: code, c: "JR ##", m: "Jump to routine at memory offset 2s $$ (##)", l: 2, e: true, t: .RELATIVE)
        
        case 0x19:
            let oldval = hl()
            hl().add(diff: de().value())
            currentOpCode = "ADD HL, DE (\(oldval.hex()) + \(DE.hex()) = \(HL.hex())"
            instructionComplete(states: 15) //returnOpCode(v: code, c: "ADD HL,DE", m: " ", l: 1)
        case 0x1A:
            ldA(value: fetchRam(location: de().value()))
            currentOpCode = "LD A, (DE) (LD A, \(a().hex()) where DE is \(DE.hex())"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD A,(DE)", m: " ", l: 1)
        case 0x1B:
            de().dec()
            currentOpCode = "DEC DE (DE = \(DE.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "DEC DE", m: " ", l: 1)
        case 0x1C:
            DE.incLow()
            currentOpCode = "INC E (E = \(e().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC E", m: " ", l: 1)
        case 0x1D:
            DE.decLow()
            currentOpCode = "DEC E (E = \(e().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC E", m: " ", l: 1)
        case 0x1E:
            currentOpCode = "LD E, n (LD E, \(byte1.hex()))"
            ldE(value: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD E,±", m: " ", l: 2)
        case 0x1F:
            currentOpCode = "RRA (Rotate Accumilator Right)"
            aR().rrA()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "RRA", m: " ", l: 1)
        case 0x20:
            if (f().isSet(bit: Flag.ZERO)){
                currentOpCode = "JP, NZ (Zero flag set, no jump)"
                instructionComplete(states: 7, length: 2)
            } else {
                relativeJump(twos: byte1)
                currentOpCode = "JP, NZ (Zero flag not set, Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 12, length: 0)
            }
        case 0x21:
            hl().ld(value: word)
            currentOpCode = "LD HL, nn (LD HL, \(word.hex()))"
            instructionComplete(states: 7, length: 3) //returnOpCode(v: code, c: "LD HL,$$", m: "Load the register pair HL with the value $$", l: 3, t: .DATA)
        case 0x22:
            currentOpCode = "LD (nn), HL (LD \(word.hex()), \(HL.hex()))"
            ldRam(location: word, value: l())
            ldRam(location: word &+ 1, value: h())
            instructionComplete(states: 16, length: 3) //returnOpCode(v: code, c: "LD ($$),HL", m: " ", l: 3, t: .DATA)
        case 0x23:
            hl().inc()
            currentOpCode = "INC HL (HL = \(HL.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "INC HL", m: " ", l: 1)
        case 0x24:
            HL.incHigh()
            currentOpCode = "INC H (H = \(h().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC H", m: " ", l: 1)
        case 0x25:
            HL.incLow()
            currentOpCode = "DEC H (H = \(h().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC H", m: " ", l: 1)
        case 0x26:
            currentOpCode = "LD H, (nn) (LD H, \(byte1.hex()))"
            ldH(value: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD H,$$", m: " ", l: 2, t: .DATA)
        case 0x27:
            currentOpCode = "DAA (Decimal Adjust Accumilator)"
            aR().daA()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DAA", m: " ", l: 1)
        case 0x28:
            if (f().isSet(bit: Flag.ZERO)){
                relativeJump(twos: byte1)
                instructionComplete(states: 12, length: 0)
                currentOpCode = "JP, Z (Zero flag set, Jump by \(byte1.hex()) to \(PC.hex()))"
            } else {
                instructionComplete(states: 7, length: 2)
                currentOpCode = "JP, Z (Zero flag set, no jump)"
            }
        case 0x29:
            let oldval = HL
            hl().addSelf()
            currentOpCode = "ADD HL, HL (\(oldval.hex()) + \(oldval.hex()) = \(HL.hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD HL,HL", m: " ", l: 1)
        case 0x2A:
            ldL(value: fetchRam(location: word))
            ldH(value: fetchRam(location: word &+ 1))
            currentOpCode = "LD HL, (nn) (LD HL, \(word.hex()))"
            instructionComplete(states: 16, length: 3) //returnOpCode(v: code, c: "LD HL,($$)", m: " ", l: 3, t: .DATA)
        case 0x2B:
            hl().dec()
            currentOpCode = "DEC HL (HL = \(HL.hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC HL", m: " ", l: 1)
        case 0x2C:
            HL.incLow()
            currentOpCode = "INC L (L = \(l().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC L", m: " ", l: 1)
        case 0x2D:
            HL.decLow()
            currentOpCode = "DEC L (L = \(l().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC L", m: " ", l: 1)
        case 0x2E:
            ldL(value: byte1)
            currentOpCode = "LD L, n (LD L, \(byte1.hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "LD L,±", m: " ", l: 2)
        case 0x2F:
            //            aR().compare(value: a())
            currentOpCode = "CPL ()"
            aR().cpl()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP L", m: " ", l: 1)
        case 0x30:
            if (f().isSet(bit: Flag.CARRY)){
                instructionComplete(states: 7, length: 2)
                currentOpCode = "JP, NC (Carry flag set, No jump)"
            } else {
                relativeJump(twos: byte1)
                currentOpCode = "JP, NC (Carry flag not set, Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 12, length: 0)
            }
        case 0x31:
            currentOpCode = "LD SP, nn (LD SP, \(word.hex()))"
            SP = word
            instructionComplete(states: 10, length: 3) //returnOpCode(v: code, c: "LD SP,$$", m: " ", l: 3, t: .DATA)
        case 0x32:
            currentOpCode = "LD (nn), A (LD \(word.hex()), \(a().hex()))"
            ldRam(location: word, value: a())
            instructionComplete(states: 13, length: 3) //returnOpCode(v: code, c: "LD ($$),A", m: " ", l: 3, t: .DATA)
        case 0x33:
            SP = SP &+ 1
            currentOpCode = "INC SP (SP = \(SP.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "INC SP", m: " ", l: 1)
        case 0x34:
            incRam(location: Int(hl().value())) // ram[Int(hl().value())] = ram[Int(hl().value())] &+ 1
            currentOpCode = "INC (HL) (Value at \(HL.hex()) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "INC (HL)", m: " ", l: 1)
        case 0x35:
            decRam(location: Int(hl().value())) // ram[Int(hl().value())] = ram[Int(hl().value())] &- 1
            currentOpCode = "DEC (HL) (Value at \(HL.hex()) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "DEC (HL)", m: " ", l: 1)
        case 0x36:
            ldRam(location: Int(hl().value()), value: byte1) //  ram[Int(hl().value())] = byte1
            currentOpCode = "LD (HL), n (LD \(HL.hex()), \(byte1.hex()))"
            instructionComplete(states: 10, length: 2) //returnOpCode(v: code, c: "LD (HL),$$", m: " ", l: 3, t: .DATA)
        case 0x37:
            Z80.F.scf(acc: a())
            currentOpCode = "SCF ()"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SCF", m: " ", l: 1)
        case 0x38:
            if (!f().isSet(bit: Flag.CARRY)){
                currentOpCode = "JP, C (Carry flag not set, No jump)"
                instructionComplete(states: 7, length: 2)
            } else {
                relativeJump(twos: byte1)
                currentOpCode = "JP, C (Carry flag set, Jump by \(byte1.hex()) to \(PC.hex()))"
                instructionComplete(states: 12, length: 0)
            }
        //returnOpCode(v: code, c: "JR C, ##", m: "If the Carry flag is set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
        case 0x39:
            let oldval = HL
            hl().add(diff: SP)
            currentOpCode = "ADD HL, SP (\(oldval.hex()) + \(SP.hex()) = \(HL.hex())"
            instructionComplete(states: 15) //returnOpCode(v: code, c: "ADD HL,SP", m: " ", l: 1)
        case 0x3A:
            ldA(value: fetchRam(location: word))
            currentOpCode = "LD A, (nn) (LD A with the value of RAM location \(word.hex()) \(a().hex())"
            instructionComplete(states: 13, length: 3) //returnOpCode(v: code, c: "LD A,($$)", m: " ", l: 3, t: .DATA)
        case 0x3B:
            SP = SP &- 1
            currentOpCode = "DEC SP (SP = \(SP.hex())"
            instructionComplete(states: 6) //returnOpCode(v: code, c: "DEC SP", m: " ", l: 1)
        case 0x3C:
            aR().inc()
            currentOpCode = "INC A (A = \(a().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "INC A", m: " ", l: 1)
        case 0x3D:
            aR().dec()
            currentOpCode = "DEC A (A = \(a().hex())"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "DEC A", m: " ", l: 1)
        case 0x3E: // LD A,$$
            ldA(value: byte1)
            currentOpCode = "LD A, n (LD A, \(byte1.hex()))"
            instructionComplete(states: 7, length: 2)
        case 0x3F:
            Z80.F.ccf(acc: a())
            currentOpCode = "CCF ()"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CCF", m: " ", l: 1)
        case 0x40:
            currentOpCode = "LD B,B (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,B", m: " ", l: 1)
        case 0x41:
            ldB(value: c())
            currentOpCode = "LD B,C (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,C", m: " ", l: 1)
        case 0x42:
            ldB(value: d())
            currentOpCode = "LD B,D (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,D", m: " ", l: 1)
        case 0x43:
            ldB(value: e())
            currentOpCode = "LD B,E (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,E", m: " ", l: 1)
        case 0x44:
            ldB(value: h())
            currentOpCode = "LD B,H (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,H", m: " ", l: 1)
        case 0x45:
            ldB(value: l())
            currentOpCode = "LD B,L (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,L", m: " ", l: 1)
        case 0x46:
            ldB(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD B,(HL) (Where HL is \(HL.hex()) -  B = \(b().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD B,(HL)", m: " ", l: 1)
        case 0x47: //LD B,A
            ldB(value: a())
            currentOpCode = "LD B,A (B = \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD B,A", m: "Load register B with the value of register A", l: 1)
        case 0x48:
            ldC(value: b())
            currentOpCode = "LD C,B (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,B", m: " ", l: 1)
        case 0x49:
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,C", m: " ", l: 1)
            currentOpCode = "LD C,C (C = \(c().hex()))"
        case 0x4A:
            ldC(value: d())
            currentOpCode = "LD C,D (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,D", m: " ", l: 1)
        case 0x4B:
            ldC(value: e())
            currentOpCode = "LD C,E (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,E", m: " ", l: 1)
        case 0x4C:
            ldC(value: h())
            currentOpCode = "LD C,H (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,H", m: " ", l: 1)
        case 0x4D:
            ldC(value: l())
            currentOpCode = "LD C,L (C = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,L", m: " ", l: 1)
        case 0x4E:
            ldC(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD C,(HL) (Where HL is \(HL.hex()) -  C = \(c().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD C,(HL)", m: " ", l: 1)
        case 0x4F:
            ldC(value: a())
            currentOpCode = "LD C,A (B = \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD C,A", m: " ", l: 1)
        case 0x50:
            ldD(value: b())
            currentOpCode = "LD D,B (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,B", m: " ", l: 1)
        case 0x51:
            ldD(value: c())
            currentOpCode = "LD D,C (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,C", m: " ", l: 1)
        case 0x52:
            currentOpCode = "LD D,D (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,D", m: " ", l: 1)
        case 0x53:
            ldD(value: e())
            currentOpCode = "LD D,E (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,E", m: " ", l: 1)
        case 0x54:
            ldD(value: h())
            currentOpCode = "LD D,H (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,H", m: " ", l: 1)
        case 0x55:
            ldD(value: l())
            currentOpCode = "LD D,L (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,L", m: " ", l: 1)
        case 0x56:
            ldD(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD D,(HL) (Where HL is \(HL.hex()) -  D = \(d().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD D,(HL)", m: " ", l: 1)
        case 0x57:
            ldD(value: a())
            currentOpCode = "LD D,A (D = \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD D,A", m: " ", l: 1)
        case 0x58:
            ldE(value: b())
            currentOpCode = "LD E,B (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,B", m: " ", l: 1)
        case 0x59:
            ldE(value: c())
            currentOpCode = "LD E,C (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,C", m: " ", l: 1)
        case 0x5A:
            ldE(value: d())
            currentOpCode = "LD E,D (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,D", m: " ", l: 1)
        case 0x5B:
            currentOpCode = "LD E,E (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,E", m: " ", l: 1)
        case 0x5C:
            ldE(value: h())
            currentOpCode = "LD E,H (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,H", m: " ", l: 1)
        case 0x5D:
            ldE(value: l())
            currentOpCode = "LD E,L (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,L", m: " ", l: 1)
        case 0x5E:
            ldE(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD E,(HL) (Where HL is \(HL.hex()) -  E = \(e().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD E,(HL)", m: " ", l: 1)
        case 0x5F:
            ldE(value: a())
            currentOpCode = "LD E,A (E = \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD E,A", m: " ", l: 1)
        case 0x60:
            ldH(value: b())
            currentOpCode = "LD H,B (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,B", m: " ", l: 1)
        case 0x61:
            ldH(value: c())
            currentOpCode = "LD H,C (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,C", m: " ", l: 1)
        case 0x62:
            ldH(value: d())
            currentOpCode = "LD H,D (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,D", m: " ", l: 1)
        case 0x63:
            ldH(value: e())
            currentOpCode = "LD H,E (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,E", m: " ", l: 1)
        case 0x64:
            currentOpCode = "LD H,H (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,H", m: " ", l: 1)
        case 0x65:
            ldH(value: l())
            currentOpCode = "LD H,L (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,L", m: " ", l: 1)
        case 0x66:
            ldH(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD H,(HL) (Where HL is \(HL.hex()) -  H = \(h().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD H,(HL)", m: " ", l: 1)
        case 0x67:
            ldH(value: a())
            currentOpCode = "LD H,A (H = \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD H,A", m: " ", l: 1)
        case 0x68:
            ldL(value: b())
            currentOpCode = "LD L,B (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,B", m: " ", l: 1)
        case 0x69:
            ldL(value: c())
            currentOpCode = "LD L,C (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,C", m: " ", l: 1)
        case 0x6A:
            ldL(value: d())
            currentOpCode = "LD L,D (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,D", m: " ", l: 1)
        case 0x6B:
            ldL(value: e())
            currentOpCode = "LD L,E (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,E", m: " ", l: 1)
        case 0x6C:
            ldL(value: h())
            currentOpCode = "LD L,H (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,H", m: " ", l: 1)
        case 0x6D:
            currentOpCode = "LD L,L (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,L", m: " ", l: 1)
        case 0x6E:
            ldL(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD L,(HL) (Where HL is \(HL.hex()) -  L = \(l().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "LD L,(HL)", m: " ", l: 1)
        case 0x6F:
            ldL(value: a())
            currentOpCode = "LD L,A (L = \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD L,A", m: " ", l: 1)
        case 0x70:
            ldRam(location: Int(hl().value()), value: b()) //  ram[Int(hl().value())] = b()
            currentOpCode = "LD (HL), B (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x71:
            ldRam(location: Int(hl().value()), value: c()) //  ram[Int(hl().value())] = c()
            currentOpCode = "LD (HL), C (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x72:
            ldRam(location: Int(hl().value()), value: d()) //  ram[Int(hl().value())] = d()
            currentOpCode = "LD (HL), D (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x73:
            ldRam(location: Int(hl().value()), value: e()) //  ram[Int(hl().value())] = e()
            currentOpCode = "LD (HL), E (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x74:
            let oldHL = HL
            ldRam(location: Int(hl().value()), value:  h()) //  ram[Int(hl().value())] = h()
            currentOpCode = "LD (HL), H (Where HL is \(oldHL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x75:
            let oldHL = HL
            ldRam(location: Int(hl().value()), value: l()) //  ram[Int(hl().value())] = l()
            currentOpCode = "LD (HL), L (Where HL is \(oldHL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x76:
            halt = true
            currentOpCode = "HALT (Pause until next interupt)"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "HALT", m: " ", l: 1)
        case 0x77:
            ldRam(location: Int(hl().value()), value: a()) // ram[Int(hl().value())] = a()
            currentOpCode = "LD (HL), A (Where HL is \(HL.hex()) - (HL) = \(fetchRam(location: HL.value()))"
            instructionComplete(states: 7)
        case 0x78:
            ldA(value: b())
            currentOpCode = "LD A,B (A = \(a().hex()))"
            instructionComplete(states: 4)
        case 0x79:
            ldA(value: c())
            currentOpCode = "LD A,B (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,C", m: " ", l: 1)
        case 0x7A:
            ldA(value: d())
            currentOpCode = "LD A,D (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,D", m: " ", l: 1)
        case 0x7B:
            ldA(value: e())
            currentOpCode = "LD A,E (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,E", m: " ", l: 1)
        case 0x7C:
            ldA(value: h())
            currentOpCode = "LD A,H (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,H", m: " ", l: 1)
        case 0x7D:
            ldA(value: l())
            currentOpCode = "LD A,L (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,L", m: " ", l: 1)
        case 0x7E:
            ldA(value: fetchRam(registerPair: hl()))
            currentOpCode = "LD A,(HL) (Where HL is \(HL.hex()) -  A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,(HL)", m: " ", l: 1)
        case 0x7F:
            currentOpCode = "LD A,A (A = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "LD A,A", m: " ", l: 1)
        case 0x80:
            
            aR().add(diff: b())
            currentOpCode = "ADD A,B (\(oldA.hex()) + \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,B", m: " ", l: 1)
        case 0x81:
            
            aR().add(diff: c())
            currentOpCode = "ADD A,C (\(oldA.hex()) + \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,C", m: " ", l: 1)
        case 0x82:
            
            aR().add(diff: d())
            currentOpCode = "ADD A,D (\(oldA.hex()) + \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,D", m: " ", l: 1)
        case 0x83:
            
            aR().add(diff: e())
            currentOpCode = "ADD A,E (\(oldA.hex()) + \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,E", m: " ", l: 1)
        case 0x84:
            
            aR().add(diff: h())
            currentOpCode = "ADD A,H (\(oldA.hex()) + \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,H", m: " ", l: 1)
        case 0x85:
            
            aR().add(diff: l())
            currentOpCode = "ADD A,L (\(oldA.hex()) + \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,L", m: " ", l: 1)
        case 0x86:
            
            aR().add(diff: fetchRam(location: hl().value()))
            currentOpCode = "ADD A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) + \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "ADD A,(HL)", m: " ", l: 1)
        case 0x87:
            
            aR().add(diff: a())
            currentOpCode = "ADD A,A (\(oldA.hex()) + \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADD A,A", m: " ", l: 1)
        case 0x88:
            
            aR().aDC(diff: b())
            currentOpCode = "ADC A,B (\(oldA.hex()) +(with carry) \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,B", m: " ", l: 1)
        case 0x89:
            
            aR().aDC(diff: c())
            currentOpCode = "ADC A,C (\(oldA.hex()) +(with carry) \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,C", m: " ", l: 1)
        case 0x8A:
            
            aR().aDC(diff: d())
            currentOpCode = "ADC A,D (\(oldA.hex()) +(with carry) \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,D", m: " ", l: 1)
        case 0x8B:
            
            aR().aDC(diff: e())
            currentOpCode = "ADC A,E (\(oldA.hex()) +(with carry) \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,E", m: " ", l: 1)
        case 0x8C:
            
            aR().aDC(diff: h())
            currentOpCode = "ADC A,H (\(oldA.hex()) +(with carry) \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,H", m: " ", l: 1)
        case 0x8D:
            
            aR().aDC(diff: l())
            currentOpCode = "ADC A,L (\(oldA.hex()) +(with carry) \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,L", m: " ", l: 1)
        case 0x8E:
            
            aR().aDC(diff: fetchRam(registerPair: hl()))
            currentOpCode = "ADC A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) + \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,(HL)", m: " ", l: 1)
        case 0x8F:
            aR().aDC(diff: a())
            currentOpCode = "ADC A,A (\(oldA.hex()) +(with carry) \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "ADC A,A", m: " ", l: 1)
        case 0x90:
            aR().sub(diff: b())
            currentOpCode = "SUB A,B (\(oldA.hex()) - \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,B", m: " ", l: 1)
        case 0x91:
            aR().sub(diff: c())
            currentOpCode = "SUB A,C (\(oldA.hex()) - \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,C", m: " ", l: 1)
        case 0x92:
            aR().sub(diff: d())
            currentOpCode = "SUB A,D (\(oldA.hex()) - \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,D", m: " ", l: 1)
        case 0x93:
            aR().sub(diff: e())
            currentOpCode = "SUB A,E (\(oldA.hex()) - \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,E", m: " ", l: 1)
        case 0x94:
            aR().sub(diff: h())
            currentOpCode = "SUB A,H (\(oldA.hex()) - \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,H", m: " ", l: 1)
        case 0x95:
            aR().sub(diff: l())
            currentOpCode = "SUB A,L (\(oldA.hex()) - \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,L", m: " ", l: 1)
        case 0x96:
            aR().sub(diff: fetchRam(location: hl().value()))
            currentOpCode = "SUB A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) - \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "SUB A,(HL)", m: " ", l: 1)
        case 0x97:
            aR().sub(diff: a())
            currentOpCode = "SUB A,A (\(oldA.hex()) - \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SUB A,A", m: " ", l: 1)
        case 0x98:
            aR().sBC(diff: b())
            currentOpCode = "SBC A,B (\(oldA.hex()) - (with carry) \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,B", m: " ", l: 1)
        case 0x99:
            aR().sBC(diff: c())
            currentOpCode = "SBC A,C (\(oldA.hex()) - (with carry) \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,C", m: " ", l: 1)
        case 0x9A:
            aR().sBC(diff: d())
            currentOpCode = "SBC A,D (\(oldA.hex()) - (with carry) \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,D", m: " ", l: 1)
        case 0x9B:
            aR().sBC(diff: e())
            currentOpCode = "SBC A,E (\(oldA.hex()) - (with carry) \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,E", m: " ", l: 1)
        case 0x9C:
            aR().sBC(diff: h())
            currentOpCode = "SBC A,H (\(oldA.hex()) - (with carry) \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,H", m: " ", l: 1)
        case 0x9D:
            aR().sBC(diff: l())
            currentOpCode = "SBC A,L (\(oldA.hex()) - (with carry) \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,L", m: " ", l: 1)
        case 0x9E:
            aR().sBC(diff: fetchRam(location: hl().value()))
            currentOpCode = "SBC A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) - \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "SBC A,(HL)", m: " ", l: 1)
        case 0x9F:
            aR().sBC(diff: a())
            currentOpCode = "SBC A,A (\(oldA.hex()) - (with carry) \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "SBC A,A", m: " ", l: 1)
        case 0xA0:
            aR().aND(byte: b())
            currentOpCode = "AND A,B (\(oldA.hex()) & \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND B", m: " ", l: 1)
        case 0xA1:
            aR().aND(byte: c())
            currentOpCode = "AND A,C (\(oldA.hex()) & \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND C", m: " ", l: 1)
        case 0xA2:
            aR().aND(byte: d())
            currentOpCode = "AND A,D (\(oldA.hex()) & \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND D", m: " ", l: 1)
        case 0xA3:
            aR().aND(byte: e())
            currentOpCode = "AND A,E (\(oldA.hex()) & \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND E", m: " ", l: 1)
        case 0xA4:
            aR().aND(byte: h())
            currentOpCode = "AND A,H (\(oldA.hex()) & \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND H", m: " ", l: 1)
        case 0xA5:
            aR().aND(byte: l())
            currentOpCode = "AND A,L (\(oldA.hex()) & \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND L", m: " ", l: 1)
        case 0xA6:
            aR().aND(byte: fetchRam(location: hl().value()))
            currentOpCode = "AND A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) & \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "AND (HL)", m: " ", l: 1)
        case 0xA7:
            aR().aND()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "AND A", m: " ", l: 1)
            currentOpCode = "AND A,A (\(oldA.hex()) & \(oldA.hex()) = \(a().hex()))"
        case 0xA8:
            aR().xOR(byte: b())
            currentOpCode = "XOR A,B (\(oldA.hex()) ^ \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR B", m: " ", l: 1)
        case 0xA9:
            aR().xOR(byte: c())
            currentOpCode = "XOR A,C (\(oldA.hex()) ^ \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR C", m: " ", l: 1)
        case 0xAA:
            aR().xOR(byte: d())
            currentOpCode = "XOR A,D (\(oldA.hex()) ^ \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR D", m: " ", l: 1)
        case 0xAB:
            aR().xOR(byte: e())
            currentOpCode = "XOR A,E (\(oldA.hex()) ^ \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR E", m: " ", l: 1)
        case 0xAC:
            aR().xOR(byte: h())
            currentOpCode = "XOR A,H (\(oldA.hex()) ^ \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR H", m: " ", l: 1)
        case 0xAD:
            aR().xOR(byte: l())
            currentOpCode = "XOR A,L (\(oldA.hex()) ^ \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR L", m: " ", l: 1)
        case 0xAE:
            aR().xOR(byte: fetchRam(location: hl().value()))
            currentOpCode = "XOR A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) ^ \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "XOR (HL)", m: " ", l: 1)
        case 0xAF:
            aR().xOR()
            currentOpCode = "XOR A,B (\(oldA.hex()) ^ \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "XOR A", m: " ", l: 1)
        case 0xB0:
            aR().oR(byte: b())
            currentOpCode = "OR A,B (\(oldA.hex()) | \(b().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR B", m: " ", l: 1)
        case 0xB1:
            aR().oR(byte: c())
            currentOpCode = "OR A,C (\(oldA.hex()) | \(c().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR C", m: " ", l: 1)
        case 0xB2:
            aR().oR(byte: d())
            currentOpCode = "OR A,D (\(oldA.hex()) | \(d().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR D", m: " ", l: 1)
        case 0xB3:
            aR().oR(byte: e())
            currentOpCode = "OR A,E (\(oldA.hex()) | \(e().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR E", m: " ", l: 1)
        case 0xB4:
            aR().oR(byte: h())
            currentOpCode = "OR A,H (\(oldA.hex()) | \(h().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR H", m: " ", l: 1)
        case 0xB5:
            aR().oR(byte: l())
            currentOpCode = "OR A,L (\(oldA.hex()) | \(l().hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR L", m: " ", l: 1)
        case 0xB6:
            aR().oR(byte: fetchRam(location: hl().value()))
            currentOpCode = "OR A,(HL) (Where HL is \(HL.hex()) - \(oldA.hex()) | \(fetchRam(location: hl().value())) = \(a().hex()))"
            instructionComplete(states: 7)
        case 0xB7:
            aR().oR()
            currentOpCode = "OR A,A (\(oldA.hex()) | \(oldA.hex()) = \(a().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "OR A", m: " ", l: 1)
        case 0xB8:
            aR().compare(byte: b())
            currentOpCode = "CP A,B (CP \(oldA.hex()), \(b().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP B", m: " ", l: 1)
        case 0xB9:
            aR().compare(byte: c())
            currentOpCode = "CP A,C (CP \(oldA.hex()), \(c().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP C", m: " ", l: 1)
        case 0xBA:
            aR().compare(byte: d())
            currentOpCode = "CP A,D (CP \(oldA.hex()), \(d().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP D", m: " ", l: 1)
        case 0xBB:
            aR().compare(byte: e())
            currentOpCode = "CP A,E (CP \(oldA.hex()), \(e().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP E", m: " ", l: 1)
        case 0xBC:
            aR().compare(byte: h())
            currentOpCode = "CP A,H (CP \(oldA.hex()), \(h().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP H", m: " ", l: 1)
        case 0xBD:
            aR().compare(byte: l())
            currentOpCode = "CP A,L (CP \(oldA.hex()), \(l().hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP L", m: " ", l: 1)
        case 0xBE:
            aR().compare(byte: fetchRam(registerPair: hl()))
            currentOpCode = "CP A,(HL) (Where HL is \(HL.hex()) - CP \(oldA.hex()), \(fetchRam(location: hl().value())))"
            instructionComplete(states: 7) //returnOpCode(v: code, c: "CP (HL)", m: " ", l: 1)
        case 0xBF:
            aR().compare(byte: a())
            currentOpCode = "CP A,A (CP \(oldA.hex()), \(oldA.hex()))"
            instructionComplete(states: 4) //returnOpCode(v: code, c: "CP A", m: " ", l: 1)
        case 0xC0:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                ret()
                currentOpCode = "RET NZ - Zero flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                currentOpCode = "RET NZ - Zero flag set, No return"
                instructionComplete(states: 5, length: 1)
            }
        //returnOpCode(v: code, c: "RET NZ", m: " ", l: 1)
        case 0xC1:
            bc().ld(value: pop())
            currentOpCode = "POP BC (BC = \(BC.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "POP BC", m: " ", l: 1)
        case 0xC2:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                jump(location: word)
                currentOpCode = "JP NZ, nn - Zero flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "JP NZ, nn - Zero flag set, No Jump"
            } //returnOpCode(v: code, c: "JP NZ,$$", m: " ", l: 3, t: .CODE)
        case 0xC3: //JP $$
            jump(location: word)
            currentOpCode = "JP nn - Jump to \(PC.hex())"
            instructionComplete(states: 10, length: 0) //returnOpCode(v: code, c: "JP $$", m: "Jump to routine at memory location $$", l: 3, e: true, t: .CODE)
        case 0xC4:
            if (!Z80.F.isSet(bit: Flag.ZERO)){
                call(location: word, length: 3)
                currentOpCode = "CALL NZ, nn - Zero flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                currentOpCode = "CALL NZ, nn - Zero flag set, No Call"
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "CALL NZ,$$", m: " ", l: 3, t: .CODE)
        case 0xC5:
            push(value: bc().value())
            currentOpCode = "PUSH BC (BC = \(BC.hex())"
            instructionComplete(states: 11)//returnOpCode(v: code, c: "PUSH BC", m: " ", l: 1)
        case 0xC6:
            aR().add(diff: byte1)
            currentOpCode = "ADD A,n (\(oldA.hex()) + \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "ADD A,±", m: " ", l: 2)
        case 0xC7:
            call(location: 0x0000, length: 1)
            currentOpCode = "RST 0 (Call 0x0000)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST 0", m: " ", l: 1)
        case 0xC8:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                ret()
                currentOpCode = "RET Z - Zero flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                currentOpCode = "RET Z - Zero flag not set, No return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET Z", m: " ", l: 1)
        case 0xC9:
            ret()
            currentOpCode = "RET, Return to \(PC.hex())"
            instructionComplete(states: 10, length: 0) //returnOpCode(v: code, c: "RET", m: " ", l: 1, e: true)
        case 0xCA:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                jump(location: word)
                currentOpCode = "JP Z, nn - Zero flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                currentOpCode = "JP NZ, nn - Zero flag not set, No Jump"
                instructionComplete(states: 10, length: 3)
            } //returnOpCode(v: code, c: "JP Z, $$", m: "If the Zero flag is set in register F, jump to routine at memory location $$", l: 3, t: .CODE)
            //
            //
            break
        case 0xCC:
            if (Z80.F.isSet(bit: Flag.ZERO)){
                call(location: word, length: 3)
                currentOpCode = "CALL Z, nn - Zero flag set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                currentOpCode = "CALL Z, nn - Zero flag not set, No Call"
                instructionComplete(states: 10, length: 3)
            }
        //returnOpCode(v: code, c: "CALL Z,$$", m: " ", l: 3, t: .CODE)
        case 0xCD:
            call(location: word, length: 3)
            currentOpCode = "CALL nn - Call \(word.hex())"
            instructionComplete(states: 17, length: 0) //returnOpCode(v: code, c: "CALL $$", m: " ", l: 3, t: .CODE)
        case 0xCE:
            aR().aDC(diff: byte1)
            currentOpCode = "ADC A,n (\(oldA.hex()) + (with carry) \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "ADC A,±", m: " ", l: 2)
        case 0xCF:
            call(location: 0x0008)
            currentOpCode = "RST $8 (Call 0x0008)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &08", m: " ", l: 1)
        case 0xD0:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                ret()
                currentOpCode = "RET NC - Carry flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                currentOpCode = "RET C - Carry flag set, No Return"
                instructionComplete(states: 5, length: 1)
            }
        //returnOpCode(v: code, c: "RET NC", m: " ", l: 1)
        case 0xD1:
            de().ld(value: pop())
            currentOpCode = "POP DE (DE = \(DE.hex())"
            instructionComplete(states: 11)  //returnOpCode(v: code, c: "POP DE", m: " ", l: 1)
        case 0xD2:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                jump(location: word)
                currentOpCode = "JP NC - Carry flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "JP C - Carry flag set, No Jump"
            } //returnOpCode(v: code, c: "JP NC,$$", m: " ", l: 3, t: .CODE)
        case 0xD3: // TODO OUT (±),A
            performOut(port: byte1, map: byte2, source: .A)
            currentOpCode = "OUT A - XXX"
            instructionComplete(states: 11, length: 2) //returnOpCode(v: code, c: "OUT (±),A", m: " ", l: 2)
        case 0xD4:
            if (!Z80.F.isSet(bit: Flag.CARRY)){
                call(location: word, length: 3)
                currentOpCode = "CALL NC - Carry flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                currentOpCode = "CALL C - Carry flag set, No Call"
                instructionComplete(states: 10, length: 3)
            }
        case 0xD5:
            push(value: de().value())
            currentOpCode = "PUSH DE (DE = \(DE.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH DE", m: " ", l: 1)
        case 0xD6:
            aR().sub(diff: byte1)
            currentOpCode = "SUB A,n (\(oldA.hex()) - \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "SUB A,±", m: " ", l: 2)
        case 0xD7:
            call(location: 0x0010)
            currentOpCode = "RST $10 (Call 0x0010)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &10", m: " ", l: 1)
        case 0xD8:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                ret()
                currentOpCode = "RET C - Carry flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                instructionComplete(states: 5, length: 1)
                currentOpCode = "RET C - Carry flag not set, No Return"
            } //returnOpCode(v: code, c: "RET C", m: " ", l: 1)
        case 0xD9:
            exchangeAll()
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EXX", m: " ", l: 1)
            currentOpCode = "EXX - Exchange registers for spares"
        case 0xDA:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                jump(location: word)
                currentOpCode = "JP C - Carry flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "JP C - Carry flag not set, No Jump"
            } //returnOpCode(v: code, c: "JP C,$$", m: " ", l: 3, t: .CODE)
        case 0xDB: // TODO: IN
            performIn(port: byte1, map: a(), destination: .A)
            instructionComplete(states: 11, length: 2)
            currentOpCode = "IN A, (n) - IN \(oldA.hex()), (\(byte1.hex())) = \(a().hex())"
        case 0xDC:
            if (Z80.F.isSet(bit: Flag.CARRY)){
                call(location: word, length: 3)
                instructionComplete(states: 17, length: 0)
                currentOpCode = "CALL C - Carry flag set, Call \(PC.hex())"
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "CALL C - Carry flag not set, No Call"
            } //returnOpCode(v: code, c: "CALL C,$$", m: " ", l: 3, t: .CODE)
        case 0xDE:
            aR().sBC(diff: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "SBC A,±", m: " ", l: 2)
            currentOpCode = "SBC A,n (\(oldA.hex()) - (with carry) \(byte1.hex()) = \(a().hex()))"
        case 0xDF:
            call(location: 0x0018)
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &18", m: " ", l: 1)
            currentOpCode = "RST $18 (Call 0x0018)"
        case 0xE0:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                ret()
                currentOpCode = "RET NP - Parity flag not set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                currentOpCode = "RET NP - Parity flag set, No Return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET PO", m: " ", l: 1)
        case 0xE1:
            hl().ld(value: pop())
            currentOpCode = "POP HL (HL = \(HL.hex())"
            instructionComplete(states: 11)  //returnOpCode(v: code, c: "POP HL", m: " ", l: 1)
        case 0xE2:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                jump(location: word)
                currentOpCode = "JP NP - Parity flag not set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "JP NP - Parity flag set, No Jump"
            } //returnOpCode(v: code, c: "JP PO,$$", m: " ", l: 3, t: .CODE)
        case 0xE3:
            let oldHL = hl().value()
            hl().ld(value: fetchRamWord(location: SP))
            ldRam(location: SP, value: oldHL)
            currentOpCode = "EX (SP), HL"
            instructionComplete(states: 19) //returnOpCode(v: code, c: "EX (SP),HL", m: " ", l: 1)
        case 0xE4:
            if (!Z80.F.isSet(bit: Flag.PARITY)){
                call(location: word, length: 3)
                currentOpCode = "CALL NP - Parity flag not set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "CALL NP - Parity flag set, No Call"
            } //returnOpCode(v: code, c: "CALL PO,$$", m: " ", l: 3, t: .CODE)
        case 0xE5:
            push(value: hl().value())
            currentOpCode = "PUSH HL (HL = \(HL.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH HL", m: " ", l: 1)
        case 0xE6:
            aR().aND(byte: byte1)
            currentOpCode = "AND A,n (\(oldA.hex()) & \(byte1.hex()) = \(a().hex()))"
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "AND ±", m: "Update A to only contain bytes set in both A and the value ±", l: 2)
            break
        case 0xE7:
            call(location: 0x0020)
            currentOpCode = "RST $20 (Call 0x0020)"
            instructionComplete(states: 11, length: 0)//returnOpCode(v: code, c: "RST &20", m: " ", l: 1)
        case 0xE8:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                ret()
                currentOpCode = "RET P - Parity flag set, Return to \(PC.hex())"
                instructionComplete(states: 11, length: 0)
            } else {
                currentOpCode = "RET P - Parity flag notset, No Return"
                instructionComplete(states: 5, length: 1)
            } //returnOpCode(v: code, c: "RET PE", m: " ", l: 1)
        case 0xE9:
            jump(location: hl().value())
            currentOpCode = "JP HL"
            instructionComplete(states: 4, length: 0) //returnOpCode(v: code, c: "JP (HL)", m: " ", l: 1)
        case 0xEA:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                jump(location: word)
                currentOpCode = "JP P - Parity flag set, Jump to \(PC.hex())"
                instructionComplete(states: 10, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "JP P - Parity flag notset, No Jump"
            } //returnOpCode(v: code, c: "JP PE,$$", m: " ", l: 3, t: .CODE)
        case 0xEB:
            exchange(working: de(), spare: hl())
            instructionComplete(states: 4) //returnOpCode(v: code, c: "EX DE,HL", m: " ", l: 1)
        case 0xEC:
            if (Z80.F.isSet(bit: Flag.PARITY)){
                call(location: word, length: 3)
                currentOpCode = "CALL P - Parity flag set, Call \(PC.hex())"
                instructionComplete(states: 17, length: 0)
            } else {
                instructionComplete(states: 10, length: 3)
                currentOpCode = "CALL P - Parity flag notset, No Call"
            } //returnOpCode(v: code, c: "CALL PE,$$", m: " ", l: 3, t: .CODE)
        case 0xEE:
            aR().xOR(byte: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "XOR ±", m: " ", l: 2)
        case 0xEF:
            call(location: 0x0028)
            currentOpCode = "RST $28 (Call 0x0028)"
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
            currentOpCode = "POP AF (AF = \(AF.hex())"
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
            currentOpCode = "PUSH AF (AF = \(AF.hex())"
            instructionComplete(states: 11) //returnOpCode(v: code, c: "PUSH AF", m: " ", l: 1)
        case 0xF6:
            aR().oR(byte: byte1)
            instructionComplete(states: 7, length: 2) //returnOpCode(v: code, c: "OR ±", m: " ", l: 2)
        case 0xF7:
            call(location: 0x0030)
            currentOpCode = "RST $30 (Call 0x0030)"
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
            currentOpCode = "RST $38 (Call 0x0038)"
            instructionComplete(states: 11, length: 0) //returnOpCode(v: code, c: "RST &38", m: " ", l: 1)
        default:
                        print("Unknown code \(String(byte, radix: 16)) From \(PC.hex())")
                        print("-")
            instructionComplete(states: 4, length: 0)
        }
        R = R &+ 1
        if R >= 0x80 {
            R = 0x0
        }
        if miscDebug {
        if averageTStateInOp > tState {
            print("TState error - \(averageTStateInOp.to8Places()) vs \(tState.to8Places()) - \(currentOpCode)")
        } else {
            //print("TState Good - \(averageTStateInOp.to8Places()) vs \(tState.to8Places()) - \(currentOpCode)")
            goodOps += 1
            if goodOps > 10000 {
                print("10000 good ops done")
                goodOps = 0
            }
        }
        }
        
        
          if preProcessorDebug {
              print("\(oldPC.hex()) - \(currentOpCode)")
          }
        
        if postProcessorDebug {
         print("\(UInt16(PC).hex()) - A: \(a().hex()) F: (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
        }
    }
    
}
