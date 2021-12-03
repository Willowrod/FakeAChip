//
//  Z80+OpcodeCB.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
extension Z80 {
    
    func getRegister(byte: UInt8) -> UInt8 {
        switch byte % 8 {
        case 0:
            return BC.high()  //bR()
        case 1:
            return BC.low()   //cR()
        case 2:
            return DE.high()  //dR()
        case 3:
            return DE.low()   //eR()
        case 4:
            return HL.high()  //hR()
        case 5:
            return HL.low()   //lR()
        case 6:
            return fetchRam(registerPair: hl())
        default:
            return AF.accumilator.value()
        }
    }
    
    func writeRegister(byte: UInt8, value: UInt8) {
        switch byte % 8 {
        case 0:
            BC.ldHigh(value: value)  //bR()
        case 1:
            BC.ldLow(value: value)   //cR()
        case 2:
            DE.ldHigh(value: value)  //  //dR()
        case 3:
            DE.ldLow(value: value)   //eR()
        case 4:
            HL.ldHigh(value: value)  //  //hR()
        case 5:
            HL.ldLow(value: value)   //lR()
        case 6:
            ldRam(registerPair: hl(), value: value)
            //break
        default:
            return AF.accumilator.ld(value: value)
        }
    }
    
    func opCodeCB(byte: UInt8){
        PC = PC &+ 1
        var register = getRegister(byte: byte)
        let opCodeOffset = Int(byte / 8)
        let effectiveByte = byte % 8
        switch opCodeOffset {
        case 0: //RLC
            register = register.rlc()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 1: //RRC
            register = register.rrc()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 2: //RL
            register = register.rl()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 3: //RR
            register = register.rr()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 4: //SLA
            register = register.sla()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 5: //SRA
            register = register.sra()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 6: //SLL // Undocumented
            register = register.sll()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 7: //SRL
            register = register.srl()
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }
        case 8...15: //BIT 0
            if effectiveByte == 6 {
                register.testBit(bit: opCodeOffset - 8, memPtr: MEMPTR)
                instructionComplete(states: 12)
            } else {
                register.testBit(bit: opCodeOffset - 8)
                instructionComplete(states: 8)
            }
        case 16...23: //BIT 0
            register = register.clear(bit: opCodeOffset - 16)
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }

        case 24...31: //BIT 0
            register = register.set(bit: opCodeOffset - 24)
            writeRegister(byte: byte, value: register)
            if effectiveByte == 6 {
                instructionComplete(states: 15)
            } else {
                instructionComplete(states: 8)
            }

        default:
            print("Potential unknown code CB\(String(byte, radix: 16)) From \(PC.hex())")
            print("-")
        }
        R = R &+ 1
        if R >= 0x80 {
            R = 0x0
        }
    }
    
}
