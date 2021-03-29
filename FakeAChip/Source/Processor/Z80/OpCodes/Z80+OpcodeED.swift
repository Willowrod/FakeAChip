//
//  Z80+OpcodeED.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
extension Z80 {
    
    func opCodeED(byte: UInt8){
        PC = PC &+ 1
        let byte1: UInt8 = fetchRam(location: PC &+ 1)
        let byte2: UInt8 = fetchRam(location: PC &+ 2)
        let word: UInt16 = (UInt16(byte2) * 256) + UInt16(byte1)
        switch byte {

        case 0x40: //TODO: IN B,(C)
            performIn(port: c(), map: b(), destination: bR())
        instructionComplete(states: 12)
        case 0x41: // TODO:OUT (C),B
            performOut(port: c(), map: b(), source: bR())
        instructionComplete(states: 4)
        case 0x42: // SBC HL,BC
            hl().sbc(diff: bc().value())
        instructionComplete(states: 15)
        case 0x43: // LD ($$),BC
            ldRam(location: word, value: bc().value())
        instructionComplete(states: 20, length: 3)
        case 0x44: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x45: // RETN
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x46: // IM0
            interuptMode = 0
        instructionComplete(states: 8)
        case 0x47: //LD I,A
            I.ld(value: a())
            instructionComplete(states: 9)
        case 0x48: // TODO: IN C, (C)
            performIn(port: c(), map: b(), destination: cR())
        instructionComplete(states: 12)
        case 0x49: // TODO: OUT (C), C
            performOut(port: c(), map: b(), source: cR())
        instructionComplete(states: 12)
        case 0x4A: // ADC HL,BC
            hl().adc(diff: bc().value())
        instructionComplete(states: 15)
        case 0x4B: // LD BC,($$)
            bc().ld(value: fetchRamWord(location: word))
        instructionComplete(states: 20, length: 3)
        case 0x4C: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x4D:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x4E: // IM0 / 1
            interuptMode = 1
        instructionComplete(states: 8)
        case 0x4F: // LD R,A
            R.ld(value: a())
        instructionComplete(states: 4)
        case 0x50: // TODO: IN D, (C)
            performIn(port: c(), map: b(), destination: dR())
        instructionComplete(states: 12)
        case 0x51: // TODO: OUT (C), D
            performOut(port: c(), map: b(), source: dR())
        instructionComplete(states: 12)
        case 0x52: // SBC HL,DE
            hl().sbc(diff: de().value())
            instructionComplete(states: 15)
        case 0x53: // LD ($$),DE
            ldRam(location: word, value: de().value())
        instructionComplete(states: 20, length: 3)
        case 0x54: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x55:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x56: // IM1
            interuptMode = 1
        instructionComplete(states: 8)
        case 0x57: // LD A,I // TODO: LD A, I
            aR().ld(value: I.value())
        instructionComplete(states: 9)
        case 0x58: // TODO: IN E, (C)
            performIn(port: c(), map: b(), destination: eR())
        instructionComplete(states: 12)
        case 0x59: // TODO: OUT (C), E
            performOut(port: c(), map: b(), source: eR())
        instructionComplete(states: 12)
        case 0x5A: // ADC HL,DE
            hl().adc(diff: de().value())
        instructionComplete(states: 15)
        case 0x5B:// LD DE,($$)
            de().ld(value: fetchRamWord(location: word))
        instructionComplete(states: 20, length: 3)
        case 0x5C: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x5D:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x5E: // IM2
            interuptMode = 2
        instructionComplete(states: 8)
        case 0x5F: // LD A,R
            aR().ld(value: R.value())
        instructionComplete(states: 9)
        case 0x60: // TODO: IN H, (C)
            performIn(port: c(), map: b(), destination: hR())
        instructionComplete(states: 12)
        case 0x61: // TODO: OUT (C), H
            performOut(port: c(), map: b(), source: hR())
        instructionComplete(states: 12)
        case 0x62: // SBC HL,HL
            hl().sbc(diff: hl().value())
            instructionComplete(states: 15)
        case 0x63:// LD ($$),HL
            //hl().ld(value: fetchRamWord(location: word))
            ldRam(location: word, value: hl().value())
        instructionComplete(states: 20, length: 3)
        case 0x64: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x65:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x66: // IM0
            interuptMode = 0
        instructionComplete(states: 8)
        case 0x67: //RRD TODO: Needs testing!
            let aLN = a().lowerNibble()
            let hlRef = fetchRam(location: hl().value())
            let hlLN = hlRef.lowerNibble()
            let hlHN = hlRef.upperNibble()
            let nHL = (aLN << 4) &+ hlHN
            let nA = (a() & 240) &+ hlLN
            aR().ld(value: nA)
            ldRam(location: hl().value(), value: nHL)
        instructionComplete(states: 18)
        case 0x68: // TODO: IN L, (C)
            performIn(port: c(), map: b(), destination: lR())
        instructionComplete(states: 12)
        case 0x69: // TODO: OUT (C), L
            performOut(port: c(), map: b(), source: lR())
            instructionComplete(states: 12)
        case 0x6A: // ADC HL,HL
            hl().adc(diff: hl().value())
            instructionComplete(states: 15)
        case 0x6B:// LD HL,($$)
            hl().ld(value: fetchRamWord(location: word))
        instructionComplete(states: 20, length: 3)
        case 0x6C: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x6D:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x6E: // IM0
            interuptMode = 1
        instructionComplete(states: 8)
        case 0x6F://RLD TODO: Needs testing!
            let aLN = a().lowerNibble()
            let hlRef = fetchRam(location: hl().value())
            let hlLN = hlRef.lowerNibble()
            let hlHN = hlRef.upperNibble()
            
            let nHL = (hlLN << 4) &+ aLN
            let nA = (a() & 240) &+ hlHN
            
            aR().ld(value: nA)
            ldRam(location: hl().value(), value: nHL)
            
            
            Z80.F.zero(passedValue: a())
            Z80.F.parity(passedValue: a())
            Z80.F.clearBit(bit: Flag.HALF_CARRY)
            Z80.F.sign(passedValue: a())
            Z80.F.bits5And3(calculatedValue: a())
            Z80.F.positive()
            
            
            
        instructionComplete(states: 18)
            break
        case 0x71: // TODO OUT (C),0
            spareRegister.ld(value: 0x00)
            performOut(port: c(), map: b(), source: spareRegister)
        instructionComplete(states: 12)
        case 0x72: //SBC HL,SP
            hl().sbc(diff: SP)
        instructionComplete(states: 15)
        case 0x73: //LD ($$),SP
            ldRam(location: word, value: SP)
        instructionComplete(states: 20, length: 3)
        case 0x74: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x75:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x76: // IM0
            interuptMode = 1
        instructionComplete(states: 8)
        case 0x78: // TODO: IN A,(C)
       performIn(port: c(), map: b(), destination: aR())
            instructionComplete(states: 12)
        case 0x79: // TODO OUT (C),A
            performOut(port: c(), map: b(), source: aR())
        instructionComplete(states: 12)
        case 0x7A: // ADC HL,SP
            hl().adc(diff: SP)
        instructionComplete(states: 15)
        case 0x7B: // LD SP,($$)
            SP = fetchRamWord(location: word)
            instructionComplete(states: 20, length: 3)
        case 0x7C: // NEG
            aR().negate()
        instructionComplete(states: 8)
        case 0x7D:
            ret()
        instructionComplete(states: 14, length: 0)
        case 0x7E: // IM0
            interuptMode = 2
        instructionComplete(states: 8)
        case 0xA0: // LDI
            ldRam(location: de().value(), value: fetchRam(location: hl().value()))
            let bit35Bit = fetchRam(location: hl().value()) &+ a()
            
            de().inc()
            hl().inc()
            bc().dec()
            Z80.F.clear(bit: Flag.HALF_CARRY)
            Z80.F.clear(bit: Flag.SUBTRACT)
            Z80.F.set(bit: Flag.PARITY, value: bc().value() != 1)
            Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
            Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
            
        instructionComplete(states: 16)
        case 0xA1: // CPI
            aR().cpi(byte: fetchRam(location: hl().value()), bc: bc().value()) // TODO: Check this!!!!
            hl().inc()
            bc().dec()
        instructionComplete(states: 21)
        case 0xA2: // TODO: INI
        instructionComplete(states: 16)
        case 0xA3: // TODO: OUTI
            spareRegister.ld(value: fetchRam(location: hl().value()))
            performOut(port: c(), map: b(), source: spareRegister)
            hl().inc()
            bR().dec()
            instructionComplete(states: 16)
        case 0xA8:// LDD
            ldRam(location: de().value(), value: fetchRam(location: hl().value()))
            let bit35Bit = fetchRam(location: hl().value()) &+ a()
            de().dec()
            hl().dec()
            bc().dec()
            Z80.F.clear(bit: Flag.HALF_CARRY)
            Z80.F.clear(bit: Flag.SUBTRACT)
            Z80.F.set(bit: Flag.PARITY, value: bc().value() != 1)
            Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
            Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
        instructionComplete(states: 16)
        case 0xA9: // CPI
            let halfCarry = Z80.F.isSet(bit: Flag.HALF_CARRY)
            var bit35Bit = a() &- fetchRam(location: hl().value())
            if (halfCarry){
                bit35Bit = bit35Bit &- 1
            }
            aR().cpi(byte: fetchRam(location: hl().value()), bc: bc().value()) // TODO: Check this!!!!
            hl().dec()
            bc().dec()
            Z80.F.negative()
            Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
            Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
        instructionComplete(states: 16)

            
            case 0xAA: // TODO: IND
            instructionComplete(states: 16)
            break
            case 0xAB:
                spareRegister.ld(value: fetchRam(location: hl().value()))
                performOut(port: c(), map: b(), source: spareRegister)
                hl().dec()
                bR().dec()
                instructionComplete(states: 16)
            break

                
        case 0xB0: // LDIR
            if (testMode){
            while bc().value() > 0{
            ldRam(location: de().value(), value: fetchRam(location: hl().value()))
            let bit35Bit = fetchRam(location: hl().value()) &+ a()
                Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
                Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
            de().inc()
            hl().inc()
            bc().dec()
            instructionComplete(states: 21, length: 0)
            }

            Z80.F.clear(bit: Flag.HALF_CARRY)
            Z80.F.clear(bit: Flag.SUBTRACT)
            Z80.F.clear(bit: Flag.PARITY)
            Z80.F.positive()
        instructionComplete(states: 16)
                return
            }
            ldRam(location: de().value(), value: fetchRam(location: hl().value()))
                        let bit35Bit = fetchRam(location: hl().value()) &+ a()
                            Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
                            Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
                 de().inc()
                 hl().inc()
                 bc().dec()
                 Z80.F.clear(bit: Flag.HALF_CARRY)
                 Z80.F.clear(bit: Flag.SUBTRACT)
                 Z80.F.set(bit: Flag.PARITY, value: bc().value() != 1)
                 if (bc().value() != 0){
                     PC = PC &- 1
                 instructionComplete(states: 21, length: 0)
                 } else {
             instructionComplete(states: 16)
                 }
        case 0xB1: // CPI
            if (testMode){
            var isComplete = false
            while !isComplete {
                let currentRam = fetchRam(location: hl().value())
                aR().cpi(byte: fetchRam(location: hl().value()), bc: bc().value())
                hl().inc()
                bc().dec()
            let bit35Bit = fetchRam(location: hl().value()) &+ a()
                Z80.F.set(bit: 3, value: bit35Bit.isSet(bit: 3))
                Z80.F.set(bit: 5, value: bit35Bit.isSet(bit: 1))
                isComplete = bc().value() == 0 || a() == currentRam
            instructionComplete(states: 21, length: 0)
            }

            Z80.F.clear(bit: Flag.HALF_CARRY)
            Z80.F.clear(bit: Flag.SUBTRACT)
            Z80.F.set(bit: Flag.PARITY, value: bc().value() &- 1 != 0)
            Z80.F.negative()
        instructionComplete(states: 16)
            return
            }
            
            aR().compare(byte: fetchRam(location: hl().value()))
            let zero = Z80.F.isSet(bit: Flag.ZERO)
            hl().inc()
            bc().dec()
            Z80.F.set(bit: Flag.ZERO, value: zero)
            if (zero || bc().value() == 0){
                instructionComplete(states: 16)
            } else {
                PC = PC &- 1
                instructionComplete(states: 21, length: 0)
            }
            
            
            
        case 0xB2: // TODO: INIR
        instructionComplete(states: 16)
        case 0xB3: // TODO: OTIR
            
                spareRegister.ld(value: fetchRam(location: hl().value()))
                performOut(port: c(), map: b(), source: spareRegister)
                hl().inc()
                bR().dec()
            if (bc().value() == 0){
                instructionComplete(states: 16)
            } else {
                PC = PC &- 1
                instructionComplete(states: 21, length: 0)
            }
        case 0xB8:// LDDR
            ldRam(location: de().value(), value: fetchRam(location: hl().value()))
            de().dec()
            hl().dec()
            bc().dec()
            Z80.F.clear(bit: Flag.HALF_CARRY)
            Z80.F.clear(bit: Flag.SUBTRACT)
            Z80.F.set(bit: Flag.PARITY, value: bc().value() != 1)
            if (bc().value() == 0){
                instructionComplete(states: 16)
            } else {
                PC = PC &- 1
                instructionComplete(states: 21, length: 0)
            }
        case 0xB9: // CPIR
            aR().compare(byte: fetchRam(location: hl().value()))
            let zero = Z80.F.isSet(bit: Flag.ZERO)
            hl().dec()
            bc().dec()
            Z80.F.set(bit: Flag.ZERO, value: zero)
            if (zero || bc().value() == 0){
                instructionComplete(states: 16)
            } else {
                PC = PC &- 1
                instructionComplete(states: 21, length: 0)
            }

            
            case 0xBA: // TODO: IND
            instructionComplete(states: 16)
            break
            case 0xBB: // TODO: OTDR
                
                spareRegister.ld(value: fetchRam(location: hl().value()))
                performOut(port: c(), map: b(), source: spareRegister)
                hl().dec()
                bR().dec()
            if (bc().value() == 0){
                instructionComplete(states: 16)
            } else {
                PC = PC &- 1
                instructionComplete(states: 21, length: 0)
            }
            break


        default:
            print("Potential Unknown code ED\(String(byte, radix: 16)) From \(PC.hex())")
            print("-")
        }
        R.inc()
    }
    
    
}
