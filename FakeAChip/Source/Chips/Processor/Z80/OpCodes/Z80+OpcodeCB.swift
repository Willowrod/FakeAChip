//
//  Z80+OpcodeCB.swift
//  inSpeccytor
//
//  Created by Mike Hall on 24/12/2020.
//

import Foundation
extension Z80 {
    
    func getRegister(byte: UInt8) -> Register? {
        switch byte % 8 {
        case 0:
            return bR()
        case 1:
            return cR()
        case 2:
            return dR()
        case 3:
            return eR()
        case 4:
            return hR()
        case 5:
            return lR()
        case 6:
            return nil
        default:
            return aR()
        }
    }
    
    func opCodeCB(byte: UInt8){
        PC = PC &+ 1
        let register = getRegister(byte: byte)
        let opCodeOffset = Int(byte / 8)
        switch opCodeOffset {
        case 0: //RLC
            if let register = register {
                register.rlc()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.rlc()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 1: //RRC
            if let register = register {
                register.rrc()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.rrc()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 2: //RL
            if let register = register {
                register.rl()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.rl()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 3: //RR
            if let register = register {
                register.rr()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.rr()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 4: //SLA
            if let register = register {
                register.sla()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.sla()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 5: //SRA
            if let register = register {
                register.sra()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.sra()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 6: //SLL // Undocumented
            if let register = register {
                register.sll()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.sll()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 7: //SRL
            if let register = register {
                register.srl()
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.srl()
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 8...15: //BIT 0
            if let register = register {
                register.testBit(bit: opCodeOffset - 8)
                instructionComplete(states: 8)
            } else {
                let changeRam = fetchRam(registerPair: hl())
                changeRam.testBitRAM(bit: opCodeOffset - 8)
                instructionComplete(states: 12)
            }
        case 16...23: //BIT 0
            if let register = register {
                register.clearBit(bit: opCodeOffset - 16)
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.clear(bit: opCodeOffset - 16)
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
            }
        case 24...31: //BIT 0
            if let register = register {
                register.setBit(bit: opCodeOffset - 24)
                instructionComplete(states: 8)
            } else {
                var changeRam = fetchRam(registerPair: hl())
                changeRam = changeRam.set(bit: opCodeOffset - 24)
                ldRam(registerPair: hl(), value: changeRam)
                instructionComplete(states: 15)
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
