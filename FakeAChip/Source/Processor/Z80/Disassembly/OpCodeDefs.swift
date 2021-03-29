//
//  OpCodeDefs.swift
//  inSpeccytor
//
//  Created by Mike Hall on 17/10/2020.
//

import Foundation

class OpCodeDefs {
    
    func opCode(array: [UInt8]) -> OpCode? {
        if array.count > 0 && array.count < 5 {
            var funcCode = String(array[0].hex())
            var countFrom = 1
            switch funcCode {
            case "DD", "FD", "ED", "CB":
                if (array.count > 1) {
                    funcCode = "\(funcCode) \(String(array[1].hex()))"
                    countFrom = 2
                }
            default:
                break
            }
            var x = ""
            var y = ""
            array[countFrom...].forEach{extraCode in
                if x == "" {
                    x = String(extraCode.hex())
                } else {
                    y = String(extraCode.hex())
                }
            }
            return opCode(code: funcCode, extra: x, secondExtra: y)
        }
        
        return nil
    }
    
    func opCode(code: String, extra: String = "", secondExtra: String = "") -> OpCode {
        
        switch(code.uppercased()){
        case "00":
            return OpCode(v: code, c: "NOP", m: "No Operation", l: 1)
        case "01":
            return OpCode(v: code, c: "LD BC,$$", m: "Load register pair BC with the value $$", l: 3)
        case "02":
            return OpCode(v: code, c: "LD (BC),A", m: "Load the contents of the memory address stored in BC with the value of register A", l: 1)
            
        case "18":
            return OpCode(v: code, c: "JR ##", m: "Jump to routine at memory offset 2s $$ (##)", l: 2, e: true, t: .RELATIVE)
            
        case "21":
            return OpCode(v: code, c: "LD HL,$$", m: "Load the register pair HL with the value $$", l: 3)
            
            
        case "28":
            return OpCode(v: code, c: "JR Z, ##", m: "If the Zero flag is set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
            
        case "3E":
            return OpCode(v: code, c: "LD A,$$", m: "Load register A with the value $$", l: 2)
            
        case "47":
            return OpCode(v: code, c: "LD B,A", m: "Load register B with the value of register A", l: 1)
            
        case "78":
            return OpCode(v: code, c: "LD A,B", m: "Load register A with the value of register B", l: 1)
            
        case "C3":
            return OpCode(v: code, c: "JP $$", m: "Jump to routine at memory location $$", l: 3, e: true, t: .CODE)
            
        case "CA":
            return OpCode(v: code, c: "JP Z, $$", m: "If the Zero flag is set in register F, jump to routine at memory location $$", l: 3, t: .CODE)
        case "CB":
            return OpCode(v: code, c: "PreCode", m: "", l: 0)
            
        case "DB":
            return OpCode(v: code, c: "IN A,(±)", m: "Load register A with an input defined by the current value of A from port $$ (Generally keyboard input) ", l: 2, t: .VALUE)
            
        case "DD":
            return OpCode(v: code, c: "PreCode", m: "", l: 0)
            
        case "E6":
            return OpCode(v: code, c: "AND ±", m: "Update A to only contain bytes set in both A and the value ±", l: 2)
            
        case "ED":
            return OpCode(v: code, c: "PreCode", m: "", l: 0)
            
        case "FD":
            return OpCode(v: code, c: "PreCode", m: "", l: 0)
            
            //DD Op codes
        case "DD21":
            return OpCode(v: code, c: "LD IX,$$", m: "Load the memory location IX with the value $$", l: 3)
        case "DD36":
            return OpCode(v: code, c: "LD (IX+¢1),¢2", m: "Load the contents of the memory address stored in (IX + ¢1) with the value ¢2", l: 3)
        case "03":
        return OpCode(v: code, c: "INC BC", m: " ", l: 1)
        case "04":
        return OpCode(v: code, c: "INC B", m: " ", l: 1)
        case "05":
        return OpCode(v: code, c: "DEC B", m: " ", l: 1)
        case "06":
        return OpCode(v: code, c: "LD B,±", m: " ", l: 2)
        case "07":
        return OpCode(v: code, c: "RLC A", m: " ", l: 1)
        case "08":
        return OpCode(v: code, c: "EX AF,AF'", m: " ", l: 1)
        case "09":
        return OpCode(v: code, c: "ADD HL,BC", m: " ", l: 1)
        case "0A":
        return OpCode(v: code, c: "LD A,(BC)", m: " ", l: 1)
        case "0B":
        return OpCode(v: code, c: "DEC BC", m: " ", l: 1)
        case "0C":
        return OpCode(v: code, c: "INC C", m: " ", l: 1)
        case "0D":
        return OpCode(v: code, c: "DEC C", m: " ", l: 1)
        case "0E":
        return OpCode(v: code, c: "LD C,±", m: " ", l: 2)
        case "0F":
        return OpCode(v: code, c: "RRC A", m: " ", l: 1)
        case "10":
        return OpCode(v: code, c: "DJNZ ##", m: " ", l: 2, t: .RELATIVE)
        case "11":
        return OpCode(v: code, c: "LD DE,$$", m: " ", l: 3)
        case "12":
        return OpCode(v: code, c: "LD (DE),A", m: " ", l: 1)
        case "13":
        return OpCode(v: code, c: "INC DE", m: " ", l: 1)
        case "14":
        return OpCode(v: code, c: "INC D", m: " ", l: 1)
        case "15":
        return OpCode(v: code, c: "DEC D", m: " ", l: 1)
        case "16":
        return OpCode(v: code, c: "LD D,±", m: " ", l: 2)
        case "17":
        return OpCode(v: code, c: "RL A", m: " ", l: 1)
        case "19":
        return OpCode(v: code, c: "ADD HL,DE", m: " ", l: 1)
        case "1A":
        return OpCode(v: code, c: "LD A,(DE)", m: " ", l: 1)
        case "1B":
        return OpCode(v: code, c: "DEC DE", m: " ", l: 1)
        case "1C":
        return OpCode(v: code, c: "INC E", m: " ", l: 1)
        case "1D":
        return OpCode(v: code, c: "DEC E", m: " ", l: 1)
        case "1E":
        return OpCode(v: code, c: "LD E,±", m: " ", l: 2)
        case "1F":
        return OpCode(v: code, c: "RRA", m: " ", l: 1)
        case "20":
        return OpCode(v: code, c: "JR NZ, ##", m: "If the Zero flag is not set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
        case "22":
        return OpCode(v: code, c: "LD ($$),HL", m: " ", l: 3)
        case "23":
        return OpCode(v: code, c: "INC HL", m: " ", l: 1)
        case "24":
        return OpCode(v: code, c: "INC H", m: " ", l: 1)
        case "25":
        return OpCode(v: code, c: "DEC H", m: " ", l: 1)
        case "26":
        return OpCode(v: code, c: "LD H,$$", m: " ", l: 2)
        case "27":
        return OpCode(v: code, c: "DAA", m: " ", l: 1)
        case "29":
        return OpCode(v: code, c: "ADD HL,HL", m: " ", l: 1)
        case "2A":
        return OpCode(v: code, c: "LD HL,($$)", m: " ", l: 3)
        case "2B":
        return OpCode(v: code, c: "DEC HL", m: " ", l: 1)
        case "2C":
        return OpCode(v: code, c: "INC L", m: " ", l: 1)
        case "2D":
        return OpCode(v: code, c: "DEC L", m: " ", l: 1)
        case "2E":
        return OpCode(v: code, c: "LD L,±", m: " ", l: 2)
        case "2F":
        return OpCode(v: code, c: "CP L", m: " ", l: 1)
        case "30":
        return OpCode(v: code, c: "JR NC, ##", m: "If the Carry flag is not set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
        case "31":
        return OpCode(v: code, c: "LD SP,$$", m: " ", l: 3)
        case "32":
        return OpCode(v: code, c: "LD ($$),A", m: " ", l: 3)
        case "33":
        return OpCode(v: code, c: "INC SP", m: " ", l: 1)
        case "34":
        return OpCode(v: code, c: "INC (HL)", m: " ", l: 1)
        case "35":
        return OpCode(v: code, c: "DEC (HL)", m: " ", l: 1)
        case "36":
        return OpCode(v: code, c: "LD (HL),$$", m: " ", l: 2)
        case "37":
        return OpCode(v: code, c: "SCF", m: " ", l: 1)
        case "38":
        return OpCode(v: code, c: "JR C, ##", m: "If the Carry flag is set in register F, jump to routine at memory offset 2s $$ (##)", l: 2, t: .RELATIVE)
        case "39":
        return OpCode(v: code, c: "ADD HL,SP", m: " ", l: 1)
        case "3A":
        return OpCode(v: code, c: "LD A,($$)", m: " ", l: 3)
        case "3B":
        return OpCode(v: code, c: "DEC SP", m: " ", l: 1)
        case "3C":
        return OpCode(v: code, c: "INC A", m: " ", l: 1)
        case "3D":
        return OpCode(v: code, c: "DEC A", m: " ", l: 1)
        case "3F":
        return OpCode(v: code, c: "CCF", m: " ", l: 1)
        case "40":
        return OpCode(v: code, c: "LD B,B", m: " ", l: 1)
        case "41":
        return OpCode(v: code, c: "LD B,C", m: " ", l: 1)
        case "42":
        return OpCode(v: code, c: "LD B,D", m: " ", l: 1)
        case "43":
        return OpCode(v: code, c: "LD B,E", m: " ", l: 1)
        case "44":
        return OpCode(v: code, c: "LD B,H", m: " ", l: 1)
        case "45":
        return OpCode(v: code, c: "LD B,L", m: " ", l: 1)
        case "46":
        return OpCode(v: code, c: "LD B,(HL)", m: " ", l: 1)
        case "48":
        return OpCode(v: code, c: "LD C,B", m: " ", l: 1)
        case "49":
        return OpCode(v: code, c: "LD C,C", m: " ", l: 1)
        case "4A":
        return OpCode(v: code, c: "LD C,D", m: " ", l: 1)
        case "4B":
        return OpCode(v: code, c: "LD C,E", m: " ", l: 1)
        case "4C":
        return OpCode(v: code, c: "LD C,H", m: " ", l: 1)
        case "4D":
        return OpCode(v: code, c: "LD C,L", m: " ", l: 1)
        case "4E":
        return OpCode(v: code, c: "LD C,(HL)", m: " ", l: 1)
        case "4F":
        return OpCode(v: code, c: "LD C,A", m: " ", l: 1)
        case "50":
        return OpCode(v: code, c: "LD D,B", m: " ", l: 1)
        case "51":
        return OpCode(v: code, c: "LD D,C", m: " ", l: 1)
        case "52":
        return OpCode(v: code, c: "LD D,D", m: " ", l: 1)
        case "53":
        return OpCode(v: code, c: "LD D,E", m: " ", l: 1)
        case "54":
        return OpCode(v: code, c: "LD D,H", m: " ", l: 1)
        case "55":
        return OpCode(v: code, c: "LD D,L", m: " ", l: 1)
        case "56":
        return OpCode(v: code, c: "LD D,(HL)", m: " ", l: 1)
        case "57":
        return OpCode(v: code, c: "LD D,A", m: " ", l: 1)
        case "58":
        return OpCode(v: code, c: "LD E,B", m: " ", l: 1)
        case "59":
        return OpCode(v: code, c: "LD E,C", m: " ", l: 1)
        case "5A":
        return OpCode(v: code, c: "LD E,D", m: " ", l: 1)
        case "5B":
        return OpCode(v: code, c: "LD E,E", m: " ", l: 1)
        case "5C":
        return OpCode(v: code, c: "LD E,H", m: " ", l: 1)
        case "5D":
        return OpCode(v: code, c: "LD E,L", m: " ", l: 1)
        case "5E":
        return OpCode(v: code, c: "LD E,(HL)", m: " ", l: 1)
        case "5F":
        return OpCode(v: code, c: "LD E,A", m: " ", l: 1)
        case "60":
        return OpCode(v: code, c: "LD H,B", m: " ", l: 1)
        case "61":
        return OpCode(v: code, c: "LD H,C", m: " ", l: 1)
        case "62":
        return OpCode(v: code, c: "LD H,D", m: " ", l: 1)
        case "63":
        return OpCode(v: code, c: "LD H,E", m: " ", l: 1)
        case "64":
        return OpCode(v: code, c: "LD H,H", m: " ", l: 1)
        case "65":
        return OpCode(v: code, c: "LD H,L", m: " ", l: 1)
        case "66":
        return OpCode(v: code, c: "LD H,(HL)", m: " ", l: 1)
        case "67":
        return OpCode(v: code, c: "LD H,A", m: " ", l: 1)
        case "68":
        return OpCode(v: code, c: "LD L,B", m: " ", l: 1)
        case "69":
        return OpCode(v: code, c: "LD L,C", m: " ", l: 1)
        case "6A":
        return OpCode(v: code, c: "LD L,D", m: " ", l: 1)
        case "6B":
        return OpCode(v: code, c: "LD L,E", m: " ", l: 1)
        case "6C":
        return OpCode(v: code, c: "LD L,H", m: " ", l: 1)
        case "6D":
        return OpCode(v: code, c: "LD L,L", m: " ", l: 1)
        case "6E":
        return OpCode(v: code, c: "LD L,(HL)", m: " ", l: 1)
        case "6F":
        return OpCode(v: code, c: "LD L,A", m: " ", l: 1)
        case "70":
        return OpCode(v: code, c: "LD (HL),B", m: " ", l: 1)
        case "71":
        return OpCode(v: code, c: "LD (HL),C", m: " ", l: 1)
        case "72":
        return OpCode(v: code, c: "LD (HL),D", m: " ", l: 1)
        case "73":
        return OpCode(v: code, c: "LD (HL),E", m: " ", l: 1)
        case "74":
        return OpCode(v: code, c: "LD (HL),H", m: " ", l: 1)
        case "75":
        return OpCode(v: code, c: "LD (HL),L", m: " ", l: 1)
        case "76":
        return OpCode(v: code, c: "HALT", m: " ", l: 1)
        case "77":
        return OpCode(v: code, c: "LD (HL),A", m: " ", l: 1)
        case "79":
        return OpCode(v: code, c: "LD A,C", m: " ", l: 1)
        case "7A":
        return OpCode(v: code, c: "LD A,D", m: " ", l: 1)
        case "7B":
        return OpCode(v: code, c: "LD A,E", m: " ", l: 1)
        case "7C":
        return OpCode(v: code, c: "LD A,H", m: " ", l: 1)
        case "7D":
        return OpCode(v: code, c: "LD A,L", m: " ", l: 1)
        case "7E":
        return OpCode(v: code, c: "LD A,(HL)", m: " ", l: 1)
        case "7F":
        return OpCode(v: code, c: "LD A,A", m: " ", l: 1)
        case "80":
        return OpCode(v: code, c: "ADD A,B", m: " ", l: 1)
        case "81":
        return OpCode(v: code, c: "ADD A,C", m: " ", l: 1)
        case "82":
        return OpCode(v: code, c: "ADD A,D", m: " ", l: 1)
        case "83":
        return OpCode(v: code, c: "ADD A,E", m: " ", l: 1)
        case "84":
        return OpCode(v: code, c: "ADD A,H", m: " ", l: 1)
        case "85":
        return OpCode(v: code, c: "ADD A,L", m: " ", l: 1)
        case "86":
        return OpCode(v: code, c: "ADD A,(HL)", m: " ", l: 1)
        case "87":
        return OpCode(v: code, c: "ADD A,A", m: " ", l: 1)
        case "88":
        return OpCode(v: code, c: "ADC A,B", m: " ", l: 1)
        case "89":
        return OpCode(v: code, c: "ADC A,C", m: " ", l: 1)
        case "8A":
        return OpCode(v: code, c: "ADC A,D", m: " ", l: 1)
        case "8B":
        return OpCode(v: code, c: "ADC A,E", m: " ", l: 1)
        case "8C":
        return OpCode(v: code, c: "ADC A,H", m: " ", l: 1)
        case "8D":
        return OpCode(v: code, c: "ADC A,L", m: " ", l: 1)
        case "8E":
        return OpCode(v: code, c: "ADC A,(HL)", m: " ", l: 1)
        case "8F":
        return OpCode(v: code, c: "ADC A,A", m: " ", l: 1)
        case "90":
        return OpCode(v: code, c: "SUB A,B", m: " ", l: 1)
        case "91":
        return OpCode(v: code, c: "SUB A,C", m: " ", l: 1)
        case "92":
        return OpCode(v: code, c: "SUB A,D", m: " ", l: 1)
        case "93":
        return OpCode(v: code, c: "SUB A,E", m: " ", l: 1)
        case "94":
        return OpCode(v: code, c: "SUB A,H", m: " ", l: 1)
        case "95":
        return OpCode(v: code, c: "SUB A,L", m: " ", l: 1)
        case "96":
        return OpCode(v: code, c: "SUB A,(HL)", m: " ", l: 1)
        case "97":
        return OpCode(v: code, c: "SUB A,A", m: " ", l: 1)
        case "98":
        return OpCode(v: code, c: "SBC A,B", m: " ", l: 1)
        case "99":
        return OpCode(v: code, c: "SBC A,C", m: " ", l: 1)
        case "9A":
        return OpCode(v: code, c: "SBC A,D", m: " ", l: 1)
        case "9B":
        return OpCode(v: code, c: "SBC A,E", m: " ", l: 1)
        case "9C":
        return OpCode(v: code, c: "SBC A,H", m: " ", l: 1)
        case "9D":
        return OpCode(v: code, c: "SBC A,L", m: " ", l: 1)
        case "9E":
        return OpCode(v: code, c: "SBC A,(HL)", m: " ", l: 1)
        case "9F":
        return OpCode(v: code, c: "SBC A,A", m: " ", l: 1)
        case "A0":
        return OpCode(v: code, c: "AND B", m: " ", l: 1)
        case "A1":
        return OpCode(v: code, c: "AND C", m: " ", l: 1)
        case "A2":
        return OpCode(v: code, c: "AND D", m: " ", l: 1)
        case "A3":
        return OpCode(v: code, c: "AND E", m: " ", l: 1)
        case "A4":
        return OpCode(v: code, c: "AND H", m: " ", l: 1)
        case "A5":
        return OpCode(v: code, c: "AND L", m: " ", l: 1)
        case "A6":
        return OpCode(v: code, c: "AND (HL)", m: " ", l: 1)
        case "A7":
        return OpCode(v: code, c: "AND A", m: " ", l: 1)
        case "A8":
        return OpCode(v: code, c: "XOR B", m: " ", l: 1)
        case "A9":
        return OpCode(v: code, c: "XOR C", m: " ", l: 1)
        case "AA":
        return OpCode(v: code, c: "XOR D", m: " ", l: 1)
        case "AB":
        return OpCode(v: code, c: "XOR E", m: " ", l: 1)
        case "AC":
        return OpCode(v: code, c: "XOR H", m: " ", l: 1)
        case "AD":
        return OpCode(v: code, c: "XOR L", m: " ", l: 1)
        case "AE":
        return OpCode(v: code, c: "XOR (HL)", m: " ", l: 1)
        case "AF":
        return OpCode(v: code, c: "XOR A", m: " ", l: 1)
        case "B0":
        return OpCode(v: code, c: "OR B", m: " ", l: 1)
        case "B1":
        return OpCode(v: code, c: "OR C", m: " ", l: 1)
        case "B2":
        return OpCode(v: code, c: "OR D", m: " ", l: 1)
        case "B3":
        return OpCode(v: code, c: "OR E", m: " ", l: 1)
        case "B4":
        return OpCode(v: code, c: "OR H", m: " ", l: 1)
        case "B5":
        return OpCode(v: code, c: "OR L", m: " ", l: 1)
        case "B6":
        return OpCode(v: code, c: "OR (HL)", m: " ", l: 1)
        case "B7":
        return OpCode(v: code, c: "OR A", m: " ", l: 1)
        case "B8":
        return OpCode(v: code, c: "CP B", m: " ", l: 1)
        case "B9":
        return OpCode(v: code, c: "CP C", m: " ", l: 1)
        case "BA":
        return OpCode(v: code, c: "CP D", m: " ", l: 1)
        case "BB":
        return OpCode(v: code, c: "CP E", m: " ", l: 1)
        case "BC":
        return OpCode(v: code, c: "CP H", m: " ", l: 1)
        case "BD":
        return OpCode(v: code, c: "CP L", m: " ", l: 1)
        case "BE":
        return OpCode(v: code, c: "CP (HL)", m: " ", l: 1)
        case "BF":
        return OpCode(v: code, c: "CP A", m: " ", l: 1)
        case "C0":
        return OpCode(v: code, c: "RET NZ", m: " ", l: 1)
        case "C1":
        return OpCode(v: code, c: "POP BC", m: " ", l: 1)
        case "C2":
        return OpCode(v: code, c: "JP NZ,$$", m: " ", l: 3, t: .CODE)
        case "C4":
        return OpCode(v: code, c: "CALL NZ,$$", m: " ", l: 3, t: .CODE)
        case "C5":
        return OpCode(v: code, c: "PUSH BC", m: " ", l: 1)
        case "C6":
        return OpCode(v: code, c: "ADD A,±", m: " ", l: 2)
        case "C7":
            return OpCode(v: code, c: "RST 0", m: " ", l: 1, t: .RST)
        case "C8":
            return OpCode(v: code, c: "RET Z", m: " ", l: 1)
        case "C9":
        return OpCode(v: code, c: "RET", m: " ", l: 1, e: true)
        case "CC":
        return OpCode(v: code, c: "CALL Z,$$", m: " ", l: 3, t: .CODE)
        case "CD":
        return OpCode(v: code, c: "CALL $$", m: " ", l: 3, t: .CODE)
        case "CE":
        return OpCode(v: code, c: "ADC A,±", m: " ", l: 2)
        case "CF":
        return OpCode(v: code, c: "RST &08", m: " ", l: 1, t: .RST)
        case "D0":
        return OpCode(v: code, c: "RET NC", m: " ", l: 1)
        case "D1":
        return OpCode(v: code, c: "POP DE", m: " ", l: 1)
        case "D2":
        return OpCode(v: code, c: "JP NC,$$", m: " ", l: 3, t: .CODE)
        case "D3":
        return OpCode(v: code, c: "OUT (±),A", m: " ", l: 2)
        case "D4":
        return OpCode(v: code, c: "CALL NC,$$", m: " ", l: 3, t: .CODE)
        case "D5":
        return OpCode(v: code, c: "PUSH DE", m: " ", l: 1)
        case "D6":
        return OpCode(v: code, c: "SUB A,±", m: " ", l: 2)
        case "D7":
        return OpCode(v: code, c: "RST &10", m: " ", l: 1, t: .RST)
        case "D8":
        return OpCode(v: code, c: "RET C", m: " ", l: 1)
        case "D9":
        return OpCode(v: code, c: "EXX", m: " ", l: 1)
        case "DA":
        return OpCode(v: code, c: "JP C,$$", m: " ", l: 3, t: .CODE)
        case "DC":
        return OpCode(v: code, c: "CALL C,$$", m: " ", l: 3, t: .CODE)
        case "DE":
        return OpCode(v: code, c: "SBC A,±", m: " ", l: 2)
        case "DF":
        return OpCode(v: code, c: "RST &18", m: " ", l: 1, t: .RST)
        case "E0":
        return OpCode(v: code, c: "RET PO", m: " ", l: 1)
        case "E1":
        return OpCode(v: code, c: "POP HL", m: " ", l: 1)
        case "E2":
        return OpCode(v: code, c: "JP PO,$$", m: " ", l: 3, t: .CODE)
        case "E3":
        return OpCode(v: code, c: "EX (SP),HL", m: " ", l: 1)
        case "E4":
        return OpCode(v: code, c: "CALL PO,$$", m: " ", l: 3, t: .CODE)
        case "E5":
        return OpCode(v: code, c: "PUSH HL", m: " ", l: 1)
        case "E7":
        return OpCode(v: code, c: "RST &20", m: " ", l: 1, t: .RST)
        case "E8":
        return OpCode(v: code, c: "RET PE", m: " ", l: 1)
        case "E9":
        return OpCode(v: code, c: "JP (HL)", m: " ", l: 1, e: true, t: .CODE)
        case "EA":
        return OpCode(v: code, c: "JP PE,$$", m: " ", l: 3, t: .CODE)
        case "EB":
        return OpCode(v: code, c: "EX DE,HL", m: " ", l: 1)
        case "EC":
        return OpCode(v: code, c: "CALL PE,$$", m: " ", l: 3, t: .CODE)
        case "EE":
        return OpCode(v: code, c: "XOR ±", m: " ", l: 2)
        case "EF":
        return OpCode(v: code, c: "RST &28", m: " ", l: 1, t: .RST)
        case "F0":
        return OpCode(v: code, c: "RET P", m: " ", l: 1)
        case "F1":
        return OpCode(v: code, c: "POP AF", m: " ", l: 1)
        case "F2":
        return OpCode(v: code, c: "JP P,$$", m: " ", l: 3, t: .CODE)
        case "F3":
        return OpCode(v: code, c: "DI", m: " ", l: 1)
        case "F4":
        return OpCode(v: code, c: "CALL P,$$", m: " ", l: 3, t: .CODE)
        case "F5":
        return OpCode(v: code, c: "PUSH AF", m: " ", l: 1)
        case "F6":
        return OpCode(v: code, c: "OR ±", m: " ", l: 2)
        case "F7":
        return OpCode(v: code, c: "RST &30", m: " ", l: 1, t: .RST)
        case "F8":
        return OpCode(v: code, c: "RET M", m: " ", l: 1)
        case "F9":
        return OpCode(v: code, c: "LD SP,HL", m: " ", l: 1)
        case "FA":
        return OpCode(v: code, c: "JP M,$$", m: " ", l: 3, t: .CODE)
        case "FB":
        return OpCode(v: code, c: "EI", m: " ", l: 1)
        case "FC":
        return OpCode(v: code, c: "CALL M,$$", m: " ", l: 3, t: .CODE)
        case "FE":
        return OpCode(v: code, c: "CP ±", m: " ", l: 2)
        case "FF":
        return OpCode(v: code, c: "RST &38", m: " ", l: 1, t: .RST)
        case "DD09":
        return OpCode(v: code, c: "ADD IX,BC", m: " ", l: 1)
        case "DD19":
        return OpCode(v: code, c: "ADD IX,DE", m: " ", l: 1)
        case "DD22":
        return OpCode(v: code, c: "LD ($$),IX", m: " ", l: 3)
        case "DD23":
        return OpCode(v: code, c: "INC IX", m: " ", l: 1)
        case "DD24":
        return OpCode(v: code, c: "INC IXH", m: " ", l: 1)
        case "DD25":
        return OpCode(v: code, c: "DEC IXH", m: " ", l: 1)
        case "DD26":
        return OpCode(v: code, c: "LD IXH,±", m: " ", l: 2)
        case "DD29":
        return OpCode(v: code, c: "ADD IX,IX", m: " ", l: 1)
        case "DD2A":
        return OpCode(v: code, c: "LD IX,($$)", m: " ", l: 3)
        case "DD2B":
        return OpCode(v: code, c: "DEC IX", m: " ", l: 1)
        case "DD2C":
        return OpCode(v: code, c: "INC IXL", m: " ", l: 1)
        case "DD2D":
        return OpCode(v: code, c: "DEC IXL", m: " ", l: 1)
        case "DD2E":
        return OpCode(v: code, c: "LD IXL,±", m: " ", l: 2)
        case "DD34":
        return OpCode(v: code, c: "INC (IX+§§)", m: " ", l: 2)
        case "DD35":
        return OpCode(v: code, c: "DEC (IX+§§)", m: " ", l: 2)
        case "DD39":
        return OpCode(v: code, c: "ADD IX,SP", m: " ", l: 1)
        case "DD44":
        return OpCode(v: code, c: "LD B,IXH", m: " ", l: 1)
        case "DD45":
        return OpCode(v: code, c: "LD B,IXL", m: " ", l: 1)
        case "DD46":
        return OpCode(v: code, c: "LD B,(IX+§§)", m: " ", l: 2)
        case "DD4C":
        return OpCode(v: code, c: "LD C,IXH", m: " ", l: 1)
        case "DD4D":
        return OpCode(v: code, c: "LD C,IXL", m: " ", l: 1)
        case "DD4E":
        return OpCode(v: code, c: "LD C,(IX+§§)", m: " ", l: 2)
        case "DD54":
        return OpCode(v: code, c: "LD D,IXH", m: " ", l: 1)
        case "DD55":
        return OpCode(v: code, c: "LD D,IXL", m: " ", l: 1)
        case "DD56":
        return OpCode(v: code, c: "LD D,(IX+§§)", m: " ", l: 2)
        case "DD5C":
        return OpCode(v: code, c: "LD E,IXH", m: " ", l: 1)
        case "DD5D":
        return OpCode(v: code, c: "LD E,IXL", m: " ", l: 1)
        case "DD5E":
        return OpCode(v: code, c: "LD E,(IX+§§)", m: " ", l: 2)
        case "DD60":
        return OpCode(v: code, c: "LD IXH,B", m: " ", l: 1)
        case "DD61":
        return OpCode(v: code, c: "LD IXH,C", m: " ", l: 1)
        case "DD62":
        return OpCode(v: code, c: "LD IXH,D", m: " ", l: 1)
        case "DD63":
        return OpCode(v: code, c: "LD IXH,E", m: " ", l: 1)
        case "DD64":
        return OpCode(v: code, c: "LD IXH,IXH", m: " ", l: 1)
        case "DD65":
        return OpCode(v: code, c: "LD IXH,IXL", m: " ", l: 1)
        case "DD66":
        return OpCode(v: code, c: "LD H,(IX+§§)", m: " ", l: 2)
        case "DD67":
        return OpCode(v: code, c: "LD IXH,A", m: " ", l: 1)
        case "DD68":
        return OpCode(v: code, c: "LD IXL,B", m: " ", l: 1)
        case "DD69":
        return OpCode(v: code, c: "LD IXL,C", m: " ", l: 1)
        case "DD6A":
        return OpCode(v: code, c: "LD IXL,D", m: " ", l: 1)
        case "DD6B":
        return OpCode(v: code, c: "LD IXL,E", m: " ", l: 1)
        case "DD6C":
        return OpCode(v: code, c: "LD IXL,IXH", m: " ", l: 1)
        case "DD6D":
        return OpCode(v: code, c: "LD IXL,IXL", m: " ", l: 1)
        case "DD6E":
        return OpCode(v: code, c: "LD L,(IX+§§)", m: " ", l: 2)
        case "DD6F":
        return OpCode(v: code, c: "LD IXL,A", m: " ", l: 1)
        case "DD70":
        return OpCode(v: code, c: "LD (IX+§§),B", m: " ", l: 2)
        case "DD71":
        return OpCode(v: code, c: "LD (IX+§§),C", m: " ", l: 2)
        case "DD72":
        return OpCode(v: code, c: "LD (IX+§§),D", m: " ", l: 2)
        case "DD73":
        return OpCode(v: code, c: "LD (IX+§§),E", m: " ", l: 2)
        case "DD74":
        return OpCode(v: code, c: "LD (IX+§§),H", m: " ", l: 2)
        case "DD75":
        return OpCode(v: code, c: "LD (IX+§§),L", m: " ", l: 2)
        case "DD77":
        return OpCode(v: code, c: "LD (IX+§§),A", m: " ", l: 2)
        case "DD7C":
        return OpCode(v: code, c: "LD A,IXH", m: " ", l: 1)
        case "DD7D":
        return OpCode(v: code, c: "LD A,IXL", m: " ", l: 1)
        case "DD7E":
        return OpCode(v: code, c: "LD A,(IX+§§)", m: " ", l: 2)
        case "DD84":
        return OpCode(v: code, c: "ADD A,IXH", m: " ", l: 1)
        case "DD85":
        return OpCode(v: code, c: "ADD A,IXL", m: " ", l: 1)
        case "DD86":
        return OpCode(v: code, c: "ADD A,(IX+§§)", m: " ", l: 2)
        case "DD8C":
        return OpCode(v: code, c: "ADC A,IXH", m: " ", l: 1)
        case "DD8D":
        return OpCode(v: code, c: "ADC A,IXL", m: " ", l: 1)
        case "DD8E":
        return OpCode(v: code, c: "ADC A,(IX+§§)", m: " ", l: 2)
        case "DD94":
        return OpCode(v: code, c: "SUB A,IXH", m: " ", l: 1)
        case "DD95":
        return OpCode(v: code, c: "SUB A,IXL", m: " ", l: 1)
        case "DD96":
        return OpCode(v: code, c: "SUB A,(IX+§§)", m: " ", l: 2)
        case "DD9C":
        return OpCode(v: code, c: "SBC A,IXH", m: " ", l: 1)
        case "DD9D":
        return OpCode(v: code, c: "SBC A,IXL", m: " ", l: 1)
        case "DD9E":
        return OpCode(v: code, c: "SBC A,(IX+§§)", m: " ", l: 2)
        case "DDA4":
        return OpCode(v: code, c: "AND IXH", m: " ", l: 1)
        case "DDA5":
        return OpCode(v: code, c: "AND IXL", m: " ", l: 1)
        case "DDA6":
        return OpCode(v: code, c: "AND (IX+§§)", m: " ", l: 2)
        case "DDAC":
        return OpCode(v: code, c: "XOR IXH", m: " ", l: 1)
        case "DDAD":
        return OpCode(v: code, c: "XOR IXL", m: " ", l: 1)
        case "DDAE":
        return OpCode(v: code, c: "XOR (IX+§§)", m: " ", l: 2)
        case "DDB4":
        return OpCode(v: code, c: "OR IXH", m: " ", l: 1)
        case "DDB5":
        return OpCode(v: code, c: "OR IXL", m: " ", l: 1)
        case "DDB6":
        return OpCode(v: code, c: "OR (IX+§§)", m: " ", l: 2)
        case "DDBC":
        return OpCode(v: code, c: "CP IXH", m: " ", l: 1)
        case "DDBD":
        return OpCode(v: code, c: "CP IXL", m: " ", l: 1)
        case "DDBE":
        return OpCode(v: code, c: "CP (IX+§§)", m: " ", l: 2)
        case "DDCB":
            return opCode(code: "DDCB\(secondExtra)", secondExtra: "")
        case "DDE1":
        return OpCode(v: code, c: "POP IX", m: " ", l: 1)
        case "DDE3":
        return OpCode(v: code, c: "EX (SP),IX", m: " ", l: 1)
        case "DDE5":
        return OpCode(v: code, c: "PUSH IX", m: " ", l: 1)
        case "DDE9":
        return OpCode(v: code, c: "JP (IX)", m: " ", l: 1, e: true, t: .CODE)
        case "CB00":
        return OpCode(v: code, c: "RLC B", m: " ", l: 1)
        case "CB01":
        return OpCode(v: code, c: "RLC C", m: " ", l: 1)
        case "CB02":
        return OpCode(v: code, c: "RLC D", m: " ", l: 1)
        case "CB03":
        return OpCode(v: code, c: "RLC E", m: " ", l: 1)
        case "CB04":
        return OpCode(v: code, c: "RLC H", m: " ", l: 1)
        case "CB05":
        return OpCode(v: code, c: "RLC L", m: " ", l: 1)
        case "CB06":
        return OpCode(v: code, c: "RLC (HL)", m: " ", l: 1)
        case "CB07":
        return OpCode(v: code, c: "RLC A", m: " ", l: 1)
        case "CB08":
        return OpCode(v: code, c: "RRC B", m: " ", l: 1)
        case "CB09":
        return OpCode(v: code, c: "RRC C", m: " ", l: 1)
        case "CB0A":
        return OpCode(v: code, c: "RRC D", m: " ", l: 1)
        case "CB0B":
        return OpCode(v: code, c: "RRC E", m: " ", l: 1)
        case "CB0C":
        return OpCode(v: code, c: "RRC H", m: " ", l: 1)
        case "CB0D":
        return OpCode(v: code, c: "RRC L", m: " ", l: 1)
        case "CB0E":
        return OpCode(v: code, c: "RRC (HL)", m: " ", l: 1)
        case "CB0F":
        return OpCode(v: code, c: "RRC A", m: " ", l: 1)
        case "CB10":
        return OpCode(v: code, c: "RL B", m: " ", l: 1)
        case "CB11":
        return OpCode(v: code, c: "RL C ", m: " ", l: 1)
        case "CB12":
        return OpCode(v: code, c: "RL D", m: " ", l: 1)
        case "CB13":
        return OpCode(v: code, c: "RL E", m: " ", l: 1)
        case "CB14":
        return OpCode(v: code, c: "RL H", m: " ", l: 1)
        case "CB15":
        return OpCode(v: code, c: "RL L", m: " ", l: 1)
        case "CB16":
        return OpCode(v: code, c: "RL (HL)", m: " ", l: 1)
        case "CB17":
        return OpCode(v: code, c: "RL A", m: " ", l: 1)
        case "CB18":
        return OpCode(v: code, c: "RR B", m: " ", l: 1)
        case "CB19":
        return OpCode(v: code, c: "RR C ", m: " ", l: 1)
        case "CB1A":
        return OpCode(v: code, c: "RR D", m: " ", l: 1)
        case "CB1B":
        return OpCode(v: code, c: "RR E", m: " ", l: 1)
        case "CB1C":
        return OpCode(v: code, c: "RR H", m: " ", l: 1)
        case "CB1D":
        return OpCode(v: code, c: "RR L", m: " ", l: 1)
        case "CB1E":
        return OpCode(v: code, c: "RR (HL)", m: " ", l: 1)
        case "CB1F":
        return OpCode(v: code, c: "RR A", m: " ", l: 1)
        case "CB20":
        return OpCode(v: code, c: "SLA B", m: " ", l: 1)
        case "CB21":
        return OpCode(v: code, c: "SLA C", m: " ", l: 1)
        case "CB22":
        return OpCode(v: code, c: "SLA D", m: " ", l: 1)
        case "CB23":
        return OpCode(v: code, c: "SLA E", m: " ", l: 1)
        case "CB24":
        return OpCode(v: code, c: "SLA H", m: " ", l: 1)
        case "CB25":
        return OpCode(v: code, c: "SLA L", m: " ", l: 1)
        case "CB26":
        return OpCode(v: code, c: "SLA (HL)", m: " ", l: 1)
        case "CB27":
        return OpCode(v: code, c: "SLA A", m: " ", l: 1)
        case "CB28":
        return OpCode(v: code, c: "SRA B", m: " ", l: 1)
        case "CB29":
        return OpCode(v: code, c: "SRA C", m: " ", l: 1)
        case "CB2A":
        return OpCode(v: code, c: "SRA D", m: " ", l: 1)
        case "CB2B":
        return OpCode(v: code, c: "SRA E", m: " ", l: 1)
        case "CB2C":
        return OpCode(v: code, c: "SRA H", m: " ", l: 1)
        case "CB2D":
        return OpCode(v: code, c: "SRA L", m: " ", l: 1)
        case "CB2E":
        return OpCode(v: code, c: "SRA (HL)", m: " ", l: 1)
        case "CB2F":
        return OpCode(v: code, c: "SRA A", m: " ", l: 1)
        case "CB30":
        return OpCode(v: code, c: "SLL B", m: " ", l: 1)
        case "CB31":
        return OpCode(v: code, c: "SLL C", m: " ", l: 1)
        case "CB32":
        return OpCode(v: code, c: "SLL D", m: " ", l: 1)
        case "CB33":
        return OpCode(v: code, c: "SLL E", m: " ", l: 1)
        case "CB34":
        return OpCode(v: code, c: "SLL H", m: " ", l: 1)
        case "CB35":
        return OpCode(v: code, c: "SLL L", m: " ", l: 1)
        case "CB36":
        return OpCode(v: code, c: "SLL (HL)", m: " ", l: 1)
        case "CB37":
        return OpCode(v: code, c: "SLL A", m: " ", l: 1)
        case "CB38":
        return OpCode(v: code, c: "SRL B", m: " ", l: 1)
        case "CB39":
        return OpCode(v: code, c: "SRL C", m: " ", l: 1)
        case "CB3A":
        return OpCode(v: code, c: "SRL D", m: " ", l: 1)
        case "CB3B":
        return OpCode(v: code, c: "SRL E", m: " ", l: 1)
        case "CB3C":
        return OpCode(v: code, c: "SRL H", m: " ", l: 1)
        case "CB3D":
        return OpCode(v: code, c: "SRL L", m: " ", l: 1)
        case "CB3E":
        return OpCode(v: code, c: "SRL (HL)", m: " ", l: 1)
        case "CB3F":
        return OpCode(v: code, c: "SRL A", m: " ", l: 1)
        case "CB40":
        return OpCode(v: code, c: "BIT 0,B", m: " ", l: 1)
        case "CB41":
        return OpCode(v: code, c: "BIT 0,C", m: " ", l: 1)
        case "CB42":
        return OpCode(v: code, c: "BIT 0,D", m: " ", l: 1)
        case "CB43":
        return OpCode(v: code, c: "BIT 0,E", m: " ", l: 1)
        case "CB44":
        return OpCode(v: code, c: "BIT 0,H", m: " ", l: 1)
        case "CB45":
        return OpCode(v: code, c: "BIT 0,L", m: " ", l: 1)
        case "CB46":
        return OpCode(v: code, c: "BIT 0,(HL)", m: " ", l: 1)
        case "CB47":
        return OpCode(v: code, c: "BIT 0,A", m: " ", l: 1)
        case "CB48":
        return OpCode(v: code, c: "BIT 1,B", m: " ", l: 1)
        case "CB49":
        return OpCode(v: code, c: "BIT 1,C", m: " ", l: 1)
        case "CB4A":
        return OpCode(v: code, c: "BIT 1,D", m: " ", l: 1)
        case "CB4B":
        return OpCode(v: code, c: "BIT 1,E", m: " ", l: 1)
        case "CB4C":
        return OpCode(v: code, c: "BIT 1,H", m: " ", l: 1)
        case "CB4D":
        return OpCode(v: code, c: "BIT 1,L", m: " ", l: 1)
        case "CB4E":
        return OpCode(v: code, c: "BIT 1,(HL)", m: " ", l: 1)
        case "CB4F":
        return OpCode(v: code, c: "BIT 1,A", m: " ", l: 1)
        case "CB50":
        return OpCode(v: code, c: "BIT 2,B", m: " ", l: 1)
        case "CB51":
        return OpCode(v: code, c: "BIT 2,C", m: " ", l: 1)
        case "CB52":
        return OpCode(v: code, c: "BIT 2,D", m: " ", l: 1)
        case "CB53":
        return OpCode(v: code, c: "BIT 2,E", m: " ", l: 1)
        case "CB54":
        return OpCode(v: code, c: "BIT 2,H", m: " ", l: 1)
        case "CB55":
        return OpCode(v: code, c: "BIT 2,L", m: " ", l: 1)
        case "CB56":
        return OpCode(v: code, c: "BIT 2,(HL)", m: " ", l: 1)
        case "CB57":
        return OpCode(v: code, c: "BIT 2,A", m: " ", l: 1)
        case "CB58":
        return OpCode(v: code, c: "BIT 3,B", m: " ", l: 1)
        case "CB59":
        return OpCode(v: code, c: "BIT 3,C", m: " ", l: 1)
        case "CB5A":
        return OpCode(v: code, c: "BIT 3,D", m: " ", l: 1)
        case "CB5B":
        return OpCode(v: code, c: "BIT 3,E", m: " ", l: 1)
        case "CB5C":
        return OpCode(v: code, c: "BIT 3,H", m: " ", l: 1)
        case "CB5D":
        return OpCode(v: code, c: "BIT 3,L", m: " ", l: 1)
        case "CB5E":
        return OpCode(v: code, c: "BIT 3,(HL)", m: " ", l: 1)
        case "CB5F":
        return OpCode(v: code, c: "BIT 3,A", m: " ", l: 1)
        case "CB60":
        return OpCode(v: code, c: "BIT 4,B", m: " ", l: 1)
        case "CB61":
        return OpCode(v: code, c: "BIT 4,C", m: " ", l: 1)
        case "CB62":
        return OpCode(v: code, c: "BIT 4,D", m: " ", l: 1)
        case "CB63":
        return OpCode(v: code, c: "BIT 4,E", m: " ", l: 1)
        case "CB64":
        return OpCode(v: code, c: "BIT 4,H", m: " ", l: 1)
        case "CB65":
        return OpCode(v: code, c: "BIT 4,L", m: " ", l: 1)
        case "CB66":
        return OpCode(v: code, c: "BIT 4,(HL)", m: " ", l: 1)
        case "CB67":
        return OpCode(v: code, c: "BIT 4,A", m: " ", l: 1)
        case "CB68":
        return OpCode(v: code, c: "BIT 5,B", m: " ", l: 1)
        case "CB69":
        return OpCode(v: code, c: "BIT 5,C", m: " ", l: 1)
        case "CB6A":
        return OpCode(v: code, c: "BIT 5,D", m: " ", l: 1)
        case "CB6B":
        return OpCode(v: code, c: "BIT 5,E", m: " ", l: 1)
        case "CB6C":
        return OpCode(v: code, c: "BIT 5,H", m: " ", l: 1)
        case "CB6D":
        return OpCode(v: code, c: "BIT 5,L", m: " ", l: 1)
        case "CB6E":
        return OpCode(v: code, c: "BIT 5,(HL)", m: " ", l: 1)
        case "CB6F":
        return OpCode(v: code, c: "BIT 5,A", m: " ", l: 1)
        case "CB70":
        return OpCode(v: code, c: "BIT 6,B", m: " ", l: 1)
        case "CB71":
        return OpCode(v: code, c: "BIT 6,C", m: " ", l: 1)
        case "CB72":
        return OpCode(v: code, c: "BIT 6,D", m: " ", l: 1)
        case "CB73":
        return OpCode(v: code, c: "BIT 6,E", m: " ", l: 1)
        case "CB74":
        return OpCode(v: code, c: "BIT 6,H", m: " ", l: 1)
        case "CB75":
        return OpCode(v: code, c: "BIT 6,L", m: " ", l: 1)
        case "CB76":
        return OpCode(v: code, c: "BIT 6,(HL)", m: " ", l: 1)
        case "CB77":
        return OpCode(v: code, c: "BIT 6,A", m: " ", l: 1)
        case "CB78":
        return OpCode(v: code, c: "BIT 7,B", m: " ", l: 1)
        case "CB79":
        return OpCode(v: code, c: "BIT 7,C", m: " ", l: 1)
        case "CB7A":
        return OpCode(v: code, c: "BIT 7,D", m: " ", l: 1)
        case "CB7B":
        return OpCode(v: code, c: "BIT 7,E", m: " ", l: 1)
        case "CB7C":
        return OpCode(v: code, c: "BIT 7,H", m: " ", l: 1)
        case "CB7D":
        return OpCode(v: code, c: "BIT 7,L", m: " ", l: 1)
        case "CB7E":
        return OpCode(v: code, c: "BIT 7,(HL)", m: " ", l: 1)
        case "CB7F":
        return OpCode(v: code, c: "BIT 7,A", m: " ", l: 1)
        case "CB80":
        return OpCode(v: code, c: "RES 0,B", m: " ", l: 1)
        case "CB81":
        return OpCode(v: code, c: "RES 0,C", m: " ", l: 1)
        case "CB82":
        return OpCode(v: code, c: "RES 0,D", m: " ", l: 1)
        case "CB83":
        return OpCode(v: code, c: "RES 0,E", m: " ", l: 1)
        case "CB84":
        return OpCode(v: code, c: "RES 0,H", m: " ", l: 1)
        case "CB85":
        return OpCode(v: code, c: "RES 0,L", m: " ", l: 1)
        case "CB86":
        return OpCode(v: code, c: "RES 0,(HL)", m: " ", l: 1)
        case "CB87":
        return OpCode(v: code, c: "RES 0,A", m: " ", l: 1)
        case "CB88":
        return OpCode(v: code, c: "RES 1,B", m: " ", l: 1)
        case "CB89":
        return OpCode(v: code, c: "RES 1,C", m: " ", l: 1)
        case "CB8A":
        return OpCode(v: code, c: "RES 1,D", m: " ", l: 1)
        case "CB8B":
        return OpCode(v: code, c: "RES 1,E", m: " ", l: 1)
        case "CB8C":
        return OpCode(v: code, c: "RES 1,H", m: " ", l: 1)
        case "CB8D":
        return OpCode(v: code, c: "RES 1,L", m: " ", l: 1)
        case "CB8E":
        return OpCode(v: code, c: "RES 1,(HL)", m: " ", l: 1)
        case "CB8F":
        return OpCode(v: code, c: "RES 1,A", m: " ", l: 1)
        case "CB90":
        return OpCode(v: code, c: "RES 2,B", m: " ", l: 1)
        case "CB91":
        return OpCode(v: code, c: "RES 2,C", m: " ", l: 1)
        case "CB92":
        return OpCode(v: code, c: "RES 2,D", m: " ", l: 1)
        case "CB93":
        return OpCode(v: code, c: "RES 2,E", m: " ", l: 1)
        case "CB94":
        return OpCode(v: code, c: "RES 2,H", m: " ", l: 1)
        case "CB95":
        return OpCode(v: code, c: "RES 2,L", m: " ", l: 1)
        case "CB96":
        return OpCode(v: code, c: "RES 2,(HL)", m: " ", l: 1)
        case "CB97":
        return OpCode(v: code, c: "RES 2,A", m: " ", l: 1)
        case "CB98":
        return OpCode(v: code, c: "RES 3,B", m: " ", l: 1)
        case "CB99":
        return OpCode(v: code, c: "RES 3,C", m: " ", l: 1)
        case "CB9A":
        return OpCode(v: code, c: "RES 3,D", m: " ", l: 1)
        case "CB9B":
        return OpCode(v: code, c: "RES 3,E", m: " ", l: 1)
        case "CB9C":
        return OpCode(v: code, c: "RES 3,H", m: " ", l: 1)
        case "CB9D":
        return OpCode(v: code, c: "RES 3,L", m: " ", l: 1)
        case "CB9E":
        return OpCode(v: code, c: "RES 3,(HL)", m: " ", l: 1)
        case "CB9F":
        return OpCode(v: code, c: "RES 3,A", m: " ", l: 1)
        case "CBA0":
        return OpCode(v: code, c: "RES 4,B", m: " ", l: 1)
        case "CBA1":
        return OpCode(v: code, c: "RES 4,C", m: " ", l: 1)
        case "CBA2":
        return OpCode(v: code, c: "RES 4,D", m: " ", l: 1)
        case "CBA3":
        return OpCode(v: code, c: "RES 4,E", m: " ", l: 1)
        case "CBA4":
        return OpCode(v: code, c: "RES 4,H", m: " ", l: 1)
        case "CBA5":
        return OpCode(v: code, c: "RES 4,L", m: " ", l: 1)
        case "CBA6":
        return OpCode(v: code, c: "RES 4,(HL)", m: " ", l: 1)
        case "CBA7":
        return OpCode(v: code, c: "RES 4,A", m: " ", l: 1)
        case "CBA8":
        return OpCode(v: code, c: "RES 5,B", m: " ", l: 1)
        case "CBA9":
        return OpCode(v: code, c: "RES 5,C", m: " ", l: 1)
        case "CBAA":
        return OpCode(v: code, c: "RES 5,D", m: " ", l: 1)
        case "CBAB":
        return OpCode(v: code, c: "RES 5,E", m: " ", l: 1)
        case "CBAC":
        return OpCode(v: code, c: "RES 5,H", m: " ", l: 1)
        case "CBAD":
        return OpCode(v: code, c: "RES 5,L", m: " ", l: 1)
        case "CBAE":
        return OpCode(v: code, c: "RES 5,(HL)", m: " ", l: 1)
        case "CBAF":
        return OpCode(v: code, c: "RES 5,A", m: " ", l: 1)
        case "CBB0":
        return OpCode(v: code, c: "RES 6,B", m: " ", l: 1)
        case "CBB1":
        return OpCode(v: code, c: "RES 6,C", m: " ", l: 1)
        case "CBB2":
        return OpCode(v: code, c: "RES 6,D", m: " ", l: 1)
        case "CBB3":
        return OpCode(v: code, c: "RES 6,E", m: " ", l: 1)
        case "CBB4":
        return OpCode(v: code, c: "RES 6,H", m: " ", l: 1)
        case "CBB5":
        return OpCode(v: code, c: "RES 6,L", m: " ", l: 1)
        case "CBB6":
        return OpCode(v: code, c: "RES 6,(HL)", m: " ", l: 1)
        case "CBB7":
        return OpCode(v: code, c: "RES 6,A", m: " ", l: 1)
        case "CBB8":
        return OpCode(v: code, c: "RES 7,B", m: " ", l: 1)
        case "CBB9":
        return OpCode(v: code, c: "RES 7,C", m: " ", l: 1)
        case "CBBA":
        return OpCode(v: code, c: "RES 7,D", m: " ", l: 1)
        case "CBBB":
        return OpCode(v: code, c: "RES 7,E", m: " ", l: 1)
        case "CBBC":
        return OpCode(v: code, c: "RES 7,H", m: " ", l: 1)
        case "CBBD":
        return OpCode(v: code, c: "RES 7,L", m: " ", l: 1)
        case "CBBE":
        return OpCode(v: code, c: "RES 7,(HL)", m: " ", l: 1)
        case "CBBF":
        return OpCode(v: code, c: "RES 7,A", m: " ", l: 1)
        case "CBC0":
        return OpCode(v: code, c: "SET 0,B", m: " ", l: 1)
        case "CBC1":
        return OpCode(v: code, c: "SET 0,C", m: " ", l: 1)
        case "CBC2":
        return OpCode(v: code, c: "SET 0,D", m: " ", l: 1)
        case "CBC3":
        return OpCode(v: code, c: "SET 0,E", m: " ", l: 1)
        case "CBC4":
        return OpCode(v: code, c: "SET 0,H", m: " ", l: 1)
        case "CBC5":
        return OpCode(v: code, c: "SET 0,L", m: " ", l: 1)
        case "CBC6":
        return OpCode(v: code, c: "SET 0,(HL)", m: " ", l: 1)
        case "CBC7":
        return OpCode(v: code, c: "SET 0,A", m: " ", l: 1)
        case "CBC8":
        return OpCode(v: code, c: "SET 1,B", m: " ", l: 1)
        case "CBC9":
        return OpCode(v: code, c: "SET 1,C", m: " ", l: 1)
        case "CBCA":
        return OpCode(v: code, c: "SET 1,D", m: " ", l: 1)
        case "CBCB":
        return OpCode(v: code, c: "SET 1,E", m: " ", l: 1)
        case "CBCC":
        return OpCode(v: code, c: "SET 1,H", m: " ", l: 1)
        case "CBCD":
        return OpCode(v: code, c: "SET 1,L", m: " ", l: 1)
        case "CBCE":
        return OpCode(v: code, c: "SET 1,(HL)", m: " ", l: 1)
        case "CBCF":
        return OpCode(v: code, c: "SET 1,A", m: " ", l: 1)
        case "CBD0":
        return OpCode(v: code, c: "SET 2,B", m: " ", l: 1)
        case "CBD1":
        return OpCode(v: code, c: "SET 2,C", m: " ", l: 1)
        case "CBD2":
        return OpCode(v: code, c: "SET 2,D", m: " ", l: 1)
        case "CBD3":
        return OpCode(v: code, c: "SET 2,E", m: " ", l: 1)
        case "CBD4":
        return OpCode(v: code, c: "SET 2,H", m: " ", l: 1)
        case "CBD5":
        return OpCode(v: code, c: "SET 2,L", m: " ", l: 1)
        case "CBD6":
        return OpCode(v: code, c: "SET 2,(HL)", m: " ", l: 1)
        case "CBD7":
        return OpCode(v: code, c: "SET 2,A", m: " ", l: 1)
        case "CBD8":
        return OpCode(v: code, c: "SET 3,B", m: " ", l: 1)
        case "CBD9":
        return OpCode(v: code, c: "SET 3,C", m: " ", l: 1)
        case "CBDA":
        return OpCode(v: code, c: "SET 3,D", m: " ", l: 1)
        case "CBDB":
        return OpCode(v: code, c: "SET 3,E", m: " ", l: 1)
        case "CBDC":
        return OpCode(v: code, c: "SET 3,H", m: " ", l: 1)
        case "CBDD":
        return OpCode(v: code, c: "SET 3,L", m: " ", l: 1)
        case "CBDE":
        return OpCode(v: code, c: "SET 3,(HL)", m: " ", l: 1)
        case "CBDF":
        return OpCode(v: code, c: "SET 3,A", m: " ", l: 1)
        case "CBE0":
        return OpCode(v: code, c: "SET 4,B", m: " ", l: 1)
        case "CBE1":
        return OpCode(v: code, c: "SET 4,C", m: " ", l: 1)
        case "CBE2":
        return OpCode(v: code, c: "SET 4,D", m: " ", l: 1)
        case "CBE3":
        return OpCode(v: code, c: "SET 4,E", m: " ", l: 1)
        case "CBE4":
        return OpCode(v: code, c: "SET 4,H", m: " ", l: 1)
        case "CBE5":
        return OpCode(v: code, c: "SET 4,L", m: " ", l: 1)
        case "CBE6":
        return OpCode(v: code, c: "SET 4,(HL)", m: " ", l: 1)
        case "CBE7":
        return OpCode(v: code, c: "SET 4,A", m: " ", l: 1)
        case "CBE8":
        return OpCode(v: code, c: "SET 5,B", m: " ", l: 1)
        case "CBE9":
        return OpCode(v: code, c: "SET 5,C", m: " ", l: 1)
        case "CBEA":
        return OpCode(v: code, c: "SET 5,D", m: " ", l: 1)
        case "CBEB":
        return OpCode(v: code, c: "SET 5,E", m: " ", l: 1)
        case "CBEC":
        return OpCode(v: code, c: "SET 5,H", m: " ", l: 1)
        case "CBED":
        return OpCode(v: code, c: "SET 5,L", m: " ", l: 1)
        case "CBEE":
        return OpCode(v: code, c: "SET 5,(HL)", m: " ", l: 1)
        case "CBEF":
        return OpCode(v: code, c: "SET 5,A", m: " ", l: 1)
        case "CBF0":
        return OpCode(v: code, c: "SET 6,B", m: " ", l: 1)
        case "CBF1":
        return OpCode(v: code, c: "SET 6,C", m: " ", l: 1)
        case "CBF2":
        return OpCode(v: code, c: "SET 6,D", m: " ", l: 1)
        case "CBF3":
        return OpCode(v: code, c: "SET 6,E", m: " ", l: 1)
        case "CBF4":
        return OpCode(v: code, c: "SET 6,H", m: " ", l: 1)
        case "CBF5":
        return OpCode(v: code, c: "SET 6,L", m: " ", l: 1)
        case "CBF6":
        return OpCode(v: code, c: "SET 6,(HL)", m: " ", l: 1)
        case "CBF7":
        return OpCode(v: code, c: "SET 6,A", m: " ", l: 1)
        case "CBF8":
        return OpCode(v: code, c: "SET 7,B", m: " ", l: 1)
        case "CBF9":
        return OpCode(v: code, c: "SET 7,C", m: " ", l: 1)
        case "CBFA":
        return OpCode(v: code, c: "SET 7,D", m: " ", l: 1)
        case "CBFB":
        return OpCode(v: code, c: "SET 7,E", m: " ", l: 1)
        case "CBFC":
        return OpCode(v: code, c: "SET 7,H", m: " ", l: 1)
        case "CBFD":
        return OpCode(v: code, c: "SET 7,L", m: " ", l: 1)
        case "CBFE":
        return OpCode(v: code, c: "SET 7,(HL)", m: " ", l: 1)
        case "CBFF":
        return OpCode(v: code, c: "SET 7,A", m: " ", l: 1)
        case "FD09":
                return OpCode(v: code, c: "ADD IY,BC", m: " ", l: 1)
                case "FD19":
                    return OpCode(v: code, c: "ADD IY,DE", m: " ", l: 1)
                    case "FD21":
                        return OpCode(v: code, c: "LD IY,$$", m: "Load the memory location IY with the value $$", l: 3)
                case "FD22":
                return OpCode(v: code, c: "LD ($$),IY", m: " ", l: 3)
                case "FD23":
                return OpCode(v: code, c: "INC IY", m: " ", l: 1)
                case "FD24":
                return OpCode(v: code, c: "INC IYH", m: " ", l: 1)
                case "FD25":
                return OpCode(v: code, c: "DEC IYH", m: " ", l: 1)
                case "FD26":
                return OpCode(v: code, c: "LD IYH,±", m: " ", l: 2)
                case "FD29":
                return OpCode(v: code, c: "ADD IY,IY", m: " ", l: 1)
                case "FD2A":
                return OpCode(v: code, c: "LD IY,($$)", m: " ", l: 3)
                case "FD2B":
                return OpCode(v: code, c: "DEC IY", m: " ", l: 1)
                case "FD2C":
                return OpCode(v: code, c: "INC IYL", m: " ", l: 1)
                case "FD2D":
                return OpCode(v: code, c: "DEC IYL", m: " ", l: 1)
                case "FD2E":
                return OpCode(v: code, c: "LD IYL,±", m: " ", l: 2)
                case "FD34":
                return OpCode(v: code, c: "INC (IY+§§)", m: " ", l: 2)
                case "FD35":
                return OpCode(v: code, c: "DEC (IY+§§)", m: " ", l: 2)
        case "FD36":
            return OpCode(v: code, c: "LD (IY+¢1),¢2", m: "Load the contents of the memory address stored in (IY + ¢1) with the value ¢2", l: 3)
                case "FD39":
                return OpCode(v: code, c: "ADD IY,SP", m: " ", l: 1)
                case "FD44":
                return OpCode(v: code, c: "LD B,IYH", m: " ", l: 1)
                case "FD45":
                return OpCode(v: code, c: "LD B,IYL", m: " ", l: 1)
                case "FD46":
                return OpCode(v: code, c: "LD B,(IY+§§)", m: " ", l: 2)
                case "FD4C":
                return OpCode(v: code, c: "LD C,IYH", m: " ", l: 1)
                case "FD4D":
                return OpCode(v: code, c: "LD C,IYL", m: " ", l: 1)
                case "FD4E":
                return OpCode(v: code, c: "LD C,(IY+§§)", m: " ", l: 2)
                case "FD54":
                return OpCode(v: code, c: "LD D,IYH", m: " ", l: 1)
                case "FD55":
                return OpCode(v: code, c: "LD D,IYL", m: " ", l: 1)
                case "FD56":
                return OpCode(v: code, c: "LD D,(IY+§§)", m: " ", l: 2)
                case "FD5C":
                return OpCode(v: code, c: "LD E,IYH", m: " ", l: 1)
                case "FD5D":
                return OpCode(v: code, c: "LD E,IYL", m: " ", l: 1)
                case "FD5E":
                return OpCode(v: code, c: "LD E,(IY+§§)", m: " ", l: 2)
                case "FD60":
                return OpCode(v: code, c: "LD IYH,B", m: " ", l: 1)
                case "FD61":
                return OpCode(v: code, c: "LD IYH,C", m: " ", l: 1)
                case "FD62":
                return OpCode(v: code, c: "LD IYH,D", m: " ", l: 1)
                case "FD63":
                return OpCode(v: code, c: "LD IYH,E", m: " ", l: 1)
                case "FD64":
                return OpCode(v: code, c: "LD IYH,IYH", m: " ", l: 1)
                case "FD65":
                return OpCode(v: code, c: "LD IYH,IYL", m: " ", l: 1)
                case "FD66":
                return OpCode(v: code, c: "LD H,(IY+§§)", m: " ", l: 2)
                case "FD67":
                return OpCode(v: code, c: "LD IYH,A", m: " ", l: 1)
                case "FD68":
                return OpCode(v: code, c: "LD IYL,B", m: " ", l: 1)
                case "FD69":
                return OpCode(v: code, c: "LD IYL,C", m: " ", l: 1)
                case "FD6A":
                return OpCode(v: code, c: "LD IYL,D", m: " ", l: 1)
                case "FD6B":
                return OpCode(v: code, c: "LD IYL,E", m: " ", l: 1)
                case "FD6C":
                return OpCode(v: code, c: "LD IYL,IYH", m: " ", l: 1)
                case "FD6D":
                return OpCode(v: code, c: "LD IYL,IYL", m: " ", l: 1)
                case "FD6E":
                return OpCode(v: code, c: "LD L,(IY+§§)", m: " ", l: 2)
                case "FD6F":
                return OpCode(v: code, c: "LD IYL,A", m: " ", l: 1)
                case "FD70":
                return OpCode(v: code, c: "LD (IY+§§),B", m: " ", l: 2)
                case "FD71":
                return OpCode(v: code, c: "LD (IY+§§),C", m: " ", l: 2)
                case "FD72":
                return OpCode(v: code, c: "LD (IY+§§),D", m: " ", l: 2)
                case "FD73":
                return OpCode(v: code, c: "LD (IY+§§),E", m: " ", l: 2)
                case "FD74":
                return OpCode(v: code, c: "LD (IY+§§),H", m: " ", l: 2)
                case "FD75":
                return OpCode(v: code, c: "LD (IY+§§),L", m: " ", l: 2)
                case "FD77":
                return OpCode(v: code, c: "LD (IY+§§),A", m: " ", l: 2)
                case "FD7C":
                return OpCode(v: code, c: "LD A,IYH", m: " ", l: 1)
                case "FD7D":
                return OpCode(v: code, c: "LD A,IYL", m: " ", l: 1)
                case "FD7E":
                return OpCode(v: code, c: "LD A,(IY+§§)", m: " ", l: 2)
                case "FD84":
                return OpCode(v: code, c: "ADD A,IYH", m: " ", l: 1)
                case "FD85":
                return OpCode(v: code, c: "ADD A,IYL", m: " ", l: 1)
                case "FD86":
                return OpCode(v: code, c: "ADD A,(IY+§§)", m: " ", l: 2)
                case "FD8C":
                return OpCode(v: code, c: "ADC A,IYH", m: " ", l: 1)
                case "FD8D":
                return OpCode(v: code, c: "ADC A,IYL", m: " ", l: 1)
                case "FD8E":
                return OpCode(v: code, c: "ADC A,(IY+§§)", m: " ", l: 2)
                case "FD94":
                return OpCode(v: code, c: "SUB A,IYH", m: " ", l: 1)
                case "FD95":
                return OpCode(v: code, c: "SUB A,IYL", m: " ", l: 1)
                case "FD96":
                return OpCode(v: code, c: "SUB A,(IY+§§)", m: " ", l: 2)
                case "FD9C":
                return OpCode(v: code, c: "SBC A,IYH", m: " ", l: 1)
                case "FD9D":
                return OpCode(v: code, c: "SBC A,IYL", m: " ", l: 1)
                case "FD9E":
                return OpCode(v: code, c: "SBC A,(IY+§§)", m: " ", l: 2)
                case "FDA4":
                return OpCode(v: code, c: "AND IYH", m: " ", l: 1)
                case "FDA5":
                return OpCode(v: code, c: "AND IYL", m: " ", l: 1)
                case "FDA6":
                return OpCode(v: code, c: "AND (IY+§§)", m: " ", l: 2)
                case "FDAC":
                return OpCode(v: code, c: "XOR IYH", m: " ", l: 1)
                case "FDAD":
                return OpCode(v: code, c: "XOR IYL", m: " ", l: 1)
                case "FDAE":
                return OpCode(v: code, c: "XOR (IY+§§)", m: " ", l: 2)
                case "FDB4":
                return OpCode(v: code, c: "OR IYH", m: " ", l: 1)
                case "FDB5":
                return OpCode(v: code, c: "OR IYL", m: " ", l: 1)
                case "FDB6":
                return OpCode(v: code, c: "OR (IY+§§)", m: " ", l: 2)
                case "FDBC":
                return OpCode(v: code, c: "CP IYH", m: " ", l: 1)
                case "FDBD":
                return OpCode(v: code, c: "CP IYL", m: " ", l: 1)
                case "FDBE":
                return OpCode(v: code, c: "CP (IY+§§)", m: " ", l: 2)
        case "FDCB":
            return opCode(code: "FDCB\(secondExtra)", secondExtra: "")
                case "FDE1":
                return OpCode(v: code, c: "POP IY", m: " ", l: 1)
                case "FDE3":
                return OpCode(v: code, c: "EX (SP),IY", m: " ", l: 1)
                case "FDE5":
                return OpCode(v: code, c: "PUSH IY", m: " ", l: 1)
                case "FDE9":
                return OpCode(v: code, c: "JP (IY)", m: " ", l: 1, e: true, t: .CODE)
            
            
            
            
       
        case "ED00":
        return OpCode(v: code, c: "MOS_QUIT", m: " ", l: 1)
        case "ED01":
        return OpCode(v: code, c: "MOS_CLI", m: " ", l: 1)
        case "ED02":
        return OpCode(v: code, c: "MOS_BYTE", m: " ", l: 1)
        case "ED03":
        return OpCode(v: code, c: "MOS_WORD", m: " ", l: 1)
        case "ED04":
        return OpCode(v: code, c: "MOS_WRCH", m: " ", l: 1)
        case "ED05":
        return OpCode(v: code, c: "MOS_RDCH", m: " ", l: 1)
        case "ED06":
        return OpCode(v: code, c: "MOS_FILE", m: " ", l: 1)
        case "ED07":
        return OpCode(v: code, c: "MOS_ARGS", m: " ", l: 1)
        case "ED08":
        return OpCode(v: code, c: "MOS_BGET", m: " ", l: 1)
        case "ED09":
        return OpCode(v: code, c: "MOS_BPUT", m: " ", l: 1)
        case "ED0A":
        return OpCode(v: code, c: "MOS_GBPB", m: " ", l: 1)
        case "ED0B":
        return OpCode(v: code, c: "MOS_FIND", m: " ", l: 1)
        case "ED0C":
        return OpCode(v: code, c: "MOS_FF0C", m: " ", l: 1)
        case "ED0D":
        return OpCode(v: code, c: "MOS_FF0D", m: " ", l: 1)
        case "ED0E":
        return OpCode(v: code, c: "MOS_FF0E", m: " ", l: 1)
        case "ED0F":
        return OpCode(v: code, c: "MOS_FF0F", m: " ", l: 1)
        case "ED40":
        return OpCode(v: code, c: "IN B,(C)", m: " ", l: 1)
        case "ED41":
        return OpCode(v: code, c: "OUT (C),B", m: " ", l: 1)
        case "ED42":
        return OpCode(v: code, c: "SBC HL,BC", m: " ", l: 1)
        case "ED43":
        return OpCode(v: code, c: "LD ($$),BC", m: " ", l: 3)
        case "ED44":
        return OpCode(v: code, c: "NEG", m: " ", l: 1)
        case "ED45":
        return OpCode(v: code, c: "RET N", m: " ", l: 1)
        case "ED46":
        return OpCode(v: code, c: "IM0", m: " ", l: 1)
        case "ED47":
        return OpCode(v: code, c: "LD I,A", m: " ", l: 1)
        case "ED48":
        return OpCode(v: code, c: "INC ,(C)", m: " ", l: 1)
        case "ED49":
        return OpCode(v: code, c: "OUT (C),C", m: " ", l: 1)
        case "ED4A":
        return OpCode(v: code, c: "ADC HL,BC", m: " ", l: 1)
        case "ED4B":
        return OpCode(v: code, c: "LD BC,($$)", m: " ", l: 3)
        case "ED4C":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED4D":
        return OpCode(v: code, c: "RET I", m: " ", l: 1)
        case "ED4E":
        return OpCode(v: code, c: "[im0]", m: " ", l: 1)
        case "ED4F":
        return OpCode(v: code, c: "LD R,A", m: " ", l: 1)
        case "ED50":
        return OpCode(v: code, c: "IN D,(C)", m: " ", l: 1)
        case "ED51":
        return OpCode(v: code, c: "OUT (C),D", m: " ", l: 1)
        case "ED52":
        return OpCode(v: code, c: "SBC HL,DE", m: " ", l: 1)
        case "ED53":
        return OpCode(v: code, c: "LD ($$),DE", m: " ", l: 3)
        case "ED54":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED55":
        return OpCode(v: code, c: "[retn]", m: " ", l: 1)
        case "ED56":
        return OpCode(v: code, c: "IM1", m: " ", l: 1)
        case "ED57":
        return OpCode(v: code, c: "LD A,I", m: " ", l: 1)
        case "ED58":
        return OpCode(v: code, c: "IN E,(C)", m: " ", l: 1)
        case "ED59":
        return OpCode(v: code, c: "OUT (C),E", m: " ", l: 1)
        case "ED5A":
        return OpCode(v: code, c: "ADC HL,DE", m: " ", l: 1)
        case "ED5B":
        return OpCode(v: code, c: "LD DE,($$)", m: " ", l: 3)
        case "ED5C":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED5D":
        return OpCode(v: code, c: "[reti]", m: " ", l: 1)
        case "ED5E":
        return OpCode(v: code, c: "IM2", m: " ", l: 1)
        case "ED5F":
        return OpCode(v: code, c: "LD A,R", m: " ", l: 1)
        case "ED60":
        return OpCode(v: code, c: "IN H,(C)", m: " ", l: 1)
        case "ED61":
        return OpCode(v: code, c: "OUT (C),H", m: " ", l: 1)
        case "ED62":
        return OpCode(v: code, c: "SBC HL,HL", m: " ", l: 1)
        case "ED63":
        return OpCode(v: code, c: "LD ($$),HL", m: " ", l: 3)
        case "ED64":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED65":
        return OpCode(v: code, c: "[retn]", m: " ", l: 1)
        case "ED66":
        return OpCode(v: code, c: "[im0]", m: " ", l: 1)
        case "ED67":
        return OpCode(v: code, c: "RRD", m: " ", l: 1)
        case "ED68":
        return OpCode(v: code, c: "IN L,(C)", m: " ", l: 1)
        case "ED69":
        return OpCode(v: code, c: "OUT (C),L", m: " ", l: 1)
        case "ED6A":
        return OpCode(v: code, c: "ADC HL,HL", m: " ", l: 1)
        case "ED6B":
        return OpCode(v: code, c: "LD HL,($$)", m: " ", l: 3)
        case "ED6C":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED6D":
        return OpCode(v: code, c: "[reti]", m: " ", l: 1)
        case "ED6E":
        return OpCode(v: code, c: "[im0]", m: " ", l: 1)
        case "ED6F":
        return OpCode(v: code, c: "BIT 5,(iy+§§)->a", m: " ", l: 2)
        case "ED70":
        return OpCode(v: code, c: "IN F,(C)", m: " ", l: 1)
        case "ED71":
        return OpCode(v: code, c: "OUT (C),F", m: " ", l: 1)
        case "ED72":
        return OpCode(v: code, c: "SBC HL,SP", m: " ", l: 1)
        case "ED73":
        return OpCode(v: code, c: "LD ($$),SP", m: " ", l: 3)
        case "ED74":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED75":
        return OpCode(v: code, c: "[retn]", m: " ", l: 1)
        case "ED76":
        return OpCode(v: code, c: "[im1]", m: " ", l: 1)
        case "ED77":
        return OpCode(v: code, c: "[ldi,i?]", m: " ", l: 1)
        case "ED78":
        return OpCode(v: code, c: "IN A,(C)", m: " ", l: 1)
        case "ED79":
        return OpCode(v: code, c: "OUT (C),A", m: " ", l: 1)
        case "ED7A":
        return OpCode(v: code, c: "ADC HL,SP", m: " ", l: 1)
        case "ED7B":
        return OpCode(v: code, c: "LD SP,($$)", m: " ", l: 3)
        case "ED7C":
        return OpCode(v: code, c: "[neg]", m: " ", l: 1)
        case "ED7D":
        return OpCode(v: code, c: "[reti]", m: " ", l: 1)
        case "ED7E":
        return OpCode(v: code, c: "[im2]", m: " ", l: 1)
        case "ED7F":
        return OpCode(v: code, c: "[ldr,r?]", m: " ", l: 1)
        case "EDA0":
        return OpCode(v: code, c: "LDI", m: " ", l: 1)
        case "EDA1":
        return OpCode(v: code, c: "CPI", m: " ", l: 1)
        case "EDA2":
        return OpCode(v: code, c: "INI", m: " ", l: 1)
        case "EDA3":
        return OpCode(v: code, c: "OTI", m: " ", l: 1)
        case "EDA8":
        return OpCode(v: code, c: "LDD", m: " ", l: 1)
        case "EDA9":
        return OpCode(v: code, c: "CPD", m: " ", l: 1)
        case "EDAA":
        return OpCode(v: code, c: "IND", m: " ", l: 1)
        case "EDAB":
        return OpCode(v: code, c: "OTD", m: " ", l: 1)
        case "EDB0":
        return OpCode(v: code, c: "LDIR", m: " ", l: 1)
        case "EDB1":
        return OpCode(v: code, c: "CPIR", m: " ", l: 1)
        case "EDB2":
        return OpCode(v: code, c: "INIR", m: " ", l: 1)
        case "EDB3":
        return OpCode(v: code, c: "OTIR", m: " ", l: 1)
        case "EDB8":
        return OpCode(v: code, c: "LDDR", m: " ", l: 1)
        case "EDB9":
        return OpCode(v: code, c: "CPDR", m: " ", l: 1)
        case "EDBA":
        return OpCode(v: code, c: "INDR", m: " ", l: 1)
        case "EDBB":
        return OpCode(v: code, c: "OTDR", m: " ", l: 1)
        case "EDF8":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDF9":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDFA":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDFB":
        return OpCode(v: code, c: "ED_LOAD", m: " ", l: 1)
        case "EDFC":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDFD":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDFE":
        return OpCode(v: code, c: "[z80]", m: " ", l: 1)
        case "EDFF":
        return OpCode(v: code, c: "ED_DOS", m: " ", l: 1)
        case "DDCB00":
                      return OpCode(v: code, c: "RLC (ix+§§)->b", m: " ", l: 2)
                      case "DDCB01":
                      return OpCode(v: code, c: "RLC (ix+§§)->c", m: " ", l: 2)
                      case "DDCB02":
                      return OpCode(v: code, c: "RLC (ix+§§)->d", m: " ", l: 2)
                      case "DDCB03":
                      return OpCode(v: code, c: "RLC (ix+§§)->e", m: " ", l: 2)
                      case "DDCB04":
                      return OpCode(v: code, c: "RLC (ix+§§)->h", m: " ", l: 2)
                      case "DDCB05":
                      return OpCode(v: code, c: "RLC (ix+§§)->l", m: " ", l: 2)
                      case "DDCB06":
                      return OpCode(v: code, c: "RLC (ix+§§)", m: " ", l: 2)
                      case "DDCB07":
                      return OpCode(v: code, c: "RLC (ix+§§)->a", m: " ", l: 2)
                      case "DDCB08":
                      return OpCode(v: code, c: "RRC (ix+§§)->b", m: " ", l: 2)
                      case "DDCB09":
                      return OpCode(v: code, c: "RRC (ix+§§)->c", m: " ", l: 2)
                      case "DDCB0A":
                      return OpCode(v: code, c: "RRC (ix+§§)->d", m: " ", l: 2)
                      case "DDCB0B":
                      return OpCode(v: code, c: "RRC (ix+§§)->e", m: " ", l: 2)
                      case "DDCB0C":
                      return OpCode(v: code, c: "RRC (ix+§§)->h", m: " ", l: 2)
                      case "DDCB0D":
                      return OpCode(v: code, c: "RRC (ix+§§)->l", m: " ", l: 2)
                      case "DDCB0E":
                      return OpCode(v: code, c: "RRC (ix+§§)", m: " ", l: 2)
                      case "DDCB0F":
                      return OpCode(v: code, c: "RRC (ix+§§)->a", m: " ", l: 2)
                      case "DDCB10":
                      return OpCode(v: code, c: "RL (ix+§§)->b", m: " ", l: 2)
                      case "DDCB11":
                      return OpCode(v: code, c: "RL (ix+§§)->c", m: " ", l: 2)
                      case "DDCB12":
                      return OpCode(v: code, c: "RL (ix+§§)->d", m: " ", l: 2)
                      case "DDCB13":
                      return OpCode(v: code, c: "RL (ix+§§)->e", m: " ", l: 2)
                      case "DDCB14":
                      return OpCode(v: code, c: "RL (ix+§§)->h", m: " ", l: 2)
                      case "DDCB15":
                      return OpCode(v: code, c: "RL (ix+§§)->l", m: " ", l: 2)
                      case "DDCB16":
                      return OpCode(v: code, c: "RL (ix+§§)", m: " ", l: 2)
                      case "DDCB17":
                      return OpCode(v: code, c: "RL (ix+§§)->a", m: " ", l: 2)
                      case "DDCB18":
                      return OpCode(v: code, c: "RR (ix+§§)->b", m: " ", l: 2)
                      case "DDCB19":
                      return OpCode(v: code, c: "RR (ix+§§)->c", m: " ", l: 2)
                      case "DDCB1A":
                      return OpCode(v: code, c: "RR (ix+§§)->d", m: " ", l: 2)
                      case "DDCB1B":
                      return OpCode(v: code, c: "RR (ix+§§)->e", m: " ", l: 2)
                      case "DDCB1C":
                      return OpCode(v: code, c: "RR (ix+§§)->h", m: " ", l: 2)
                      case "DDCB1D":
                      return OpCode(v: code, c: "RR (ix+§§)->l", m: " ", l: 2)
                      case "DDCB1E":
                      return OpCode(v: code, c: "RR (ix+§§)", m: " ", l: 2)
                      case "DDCB1F":
                      return OpCode(v: code, c: "RR (ix+§§)->a", m: " ", l: 2)
                      case "DDCB20":
                      return OpCode(v: code, c: "SLA (ix+§§)->b", m: " ", l: 2)
                      case "DDCB21":
                      return OpCode(v: code, c: "SLA (ix+§§)->c", m: " ", l: 2)
                      case "DDCB22":
                      return OpCode(v: code, c: "SLA (ix+§§)->d", m: " ", l: 2)
                      case "DDCB23":
                      return OpCode(v: code, c: "SLA (ix+§§)->e", m: " ", l: 2)
                      case "DDCB24":
                      return OpCode(v: code, c: "SLA (ix+§§)->h", m: " ", l: 2)
                      case "DDCB25":
                      return OpCode(v: code, c: "SLA (ix+§§)->l", m: " ", l: 2)
                      case "DDCB26":
                      return OpCode(v: code, c: "SLA (ix+§§)", m: " ", l: 2)
                      case "DDCB27":
                      return OpCode(v: code, c: "SLA (ix+§§)->a", m: " ", l: 2)
                      case "DDCB28":
                      return OpCode(v: code, c: "SRA (ix+§§)->b", m: " ", l: 2)
                      case "DDCB29":
                      return OpCode(v: code, c: "SRA (ix+§§)->c", m: " ", l: 2)
                      case "DDCB2A":
                      return OpCode(v: code, c: "SRA (ix+§§)->d", m: " ", l: 2)
                      case "DDCB2B":
                      return OpCode(v: code, c: "SRA (ix+§§)->e", m: " ", l: 2)
                      case "DDCB2C":
                      return OpCode(v: code, c: "SRA (ix+§§)->h", m: " ", l: 2)
                      case "DDCB2D":
                      return OpCode(v: code, c: "SRA (ix+§§)->l", m: " ", l: 2)
                      case "DDCB2E":
                      return OpCode(v: code, c: "SRA (ix+§§)", m: " ", l: 2)
                      case "DDCB2F":
                      return OpCode(v: code, c: "SRA (ix+§§)->a", m: " ", l: 2)
                      case "DDCB30":
                      return OpCode(v: code, c: "SLS (ix+§§)->b", m: " ", l: 2)
                      case "DDCB31":
                      return OpCode(v: code, c: "SLS (ix+§§)->c", m: " ", l: 2)
                      case "DDCB32":
                      return OpCode(v: code, c: "SLS (ix+§§)->d", m: " ", l: 2)
                      case "DDCB33":
                      return OpCode(v: code, c: "SLS (ix+§§)->e", m: " ", l: 2)
                      case "DDCB34":
                      return OpCode(v: code, c: "SLS (ix+§§)->h", m: " ", l: 2)
                      case "DDCB35":
                      return OpCode(v: code, c: "SLS (ix+§§)->l", m: " ", l: 2)
                      case "DDCB36":
                      return OpCode(v: code, c: "SLS (ix+§§)", m: " ", l: 2)
                      case "DDCB37":
                      return OpCode(v: code, c: "SLS (ix+§§)->a", m: " ", l: 2)
                      case "DDCB38":
                      return OpCode(v: code, c: "SRL (ix+§§)->b", m: " ", l: 2)
                      case "DDCB39":
                      return OpCode(v: code, c: "SRL (ix+§§)->c", m: " ", l: 2)
                      case "DDCB3A":
                      return OpCode(v: code, c: "SRL (ix+§§)->d", m: " ", l: 2)
                      case "DDCB3B":
                      return OpCode(v: code, c: "SRL (ix+§§)->e", m: " ", l: 2)
                      case "DDCB3C":
                      return OpCode(v: code, c: "SRL (ix+§§)->h", m: " ", l: 2)
                      case "DDCB3D":
                      return OpCode(v: code, c: "SRL (ix+§§)->l", m: " ", l: 2)
                      case "DDCB3E":
                      return OpCode(v: code, c: "SRL (ix+§§)", m: " ", l: 2)
                      case "DDCB3F":
                      return OpCode(v: code, c: "SRL (ix+§§)->a", m: " ", l: 2)
                      case "DDCB40":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB41":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB42":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB43":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB44":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB45":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB46":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)", m: " ", l: 2)
                      case "DDCB47":
                      return OpCode(v: code, c: "BIT 0,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB48":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB49":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB4A":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB4B":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB4C":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB4D":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB4E":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)", m: " ", l: 2)
                      case "DDCB4F":
                      return OpCode(v: code, c: "BIT 1,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB50":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB51":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB52":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB53":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB54":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB55":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB56":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)", m: " ", l: 2)
                      case "DDCB57":
                      return OpCode(v: code, c: "BIT 2,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB58":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB59":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB5A":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB5B":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB5C":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB5D":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB5E":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)", m: " ", l: 2)
                      case "DDCB5F":
                      return OpCode(v: code, c: "BIT 3,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB60":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB61":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB62":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB63":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB64":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB65":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB66":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)", m: " ", l: 2)
                      case "DDCB67":
                      return OpCode(v: code, c: "BIT 4,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB68":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB69":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB6A":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB6B":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB6C":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB6D":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB6E":
                      return OpCode(v: code, c: "BIT 5,(ix+§§)", m: " ", l: 2)
                      case "DDCB6F":
                      return OpCode(v: code, c: "BIT  5,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB70":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB71":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB72":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB73":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB74":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB75":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB76":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)", m: " ", l: 2)
                      case "DDCB77":
                      return OpCode(v: code, c: "BIT 6,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB78":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB79":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB7A":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB7B":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB7C":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB7D":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB7E":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)", m: " ", l: 2)
                      case "DDCB7F":
                      return OpCode(v: code, c: "BIT 7,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB80":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB81":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB82":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB83":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB84":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB85":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB86":
                      return OpCode(v: code, c: "RES 0,(ix+§§)", m: " ", l: 2)
                      case "DDCB87":
                      return OpCode(v: code, c: "RES 0,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB88":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB89":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB8A":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB8B":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB8C":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB8D":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB8E":
                      return OpCode(v: code, c: "RES 1,(ix+§§)", m: " ", l: 2)
                      case "DDCB8F":
                      return OpCode(v: code, c: "RES 1,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB90":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB91":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB92":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB93":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB94":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB95":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB96":
                      return OpCode(v: code, c: "RES 2,(ix+§§)", m: " ", l: 2)
                      case "DDCB97":
                      return OpCode(v: code, c: "RES 2,(ix+§§)->a", m: " ", l: 2)
                      case "DDCB98":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->b", m: " ", l: 2)
                      case "DDCB99":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->c", m: " ", l: 2)
                      case "DDCB9A":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->d", m: " ", l: 2)
                      case "DDCB9B":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->e", m: " ", l: 2)
                      case "DDCB9C":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->h", m: " ", l: 2)
                      case "DDCB9D":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->l", m: " ", l: 2)
                      case "DDCB9E":
                      return OpCode(v: code, c: "RES 3,(ix+§§)", m: " ", l: 2)
                      case "DDCB9F":
                      return OpCode(v: code, c: "RES 3,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBA0":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBA1":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBA2":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBA3":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBA4":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBA5":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBA6":
                      return OpCode(v: code, c: "RES 4,(ix+§§)", m: " ", l: 2)
                      case "DDCBA7":
                      return OpCode(v: code, c: "RES 4,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBA8":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBA9":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBAA":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBAB":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBAC":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBAD":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBAE":
                      return OpCode(v: code, c: "RES 5,(ix+§§)", m: " ", l: 2)
                      case "DDCBAF":
                      return OpCode(v: code, c: "RES 5,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBB0":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBB1":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBB2":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBB3":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBB4":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBB5":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBB6":
                      return OpCode(v: code, c: "RES 6,(ix+§§)", m: " ", l: 2)
                      case "DDCBB7":
                      return OpCode(v: code, c: "RES 6,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBB8":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBB9":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBBA":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBBB":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBBC":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBBD":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBBE":
                      return OpCode(v: code, c: "RES 7,(ix+§§)", m: " ", l: 2)
                      case "DDCBBF":
                      return OpCode(v: code, c: "RES 7,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBC0":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBC1":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBC2":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBC3":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBC4":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBC5":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBC6":
                      return OpCode(v: code, c: "SET 0,(ix+§§)", m: " ", l: 2)
                      case "DDCBC7":
                      return OpCode(v: code, c: "SET 0,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBC8":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBC9":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBCA":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBCB":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBCC":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBCD":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBCE":
                      return OpCode(v: code, c: "SET 1,(ix+§§)", m: " ", l: 2)
                      case "DDCBCF":
                      return OpCode(v: code, c: "SET 1,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBD0":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBD1":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBD2":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBD3":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBD4":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBD5":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBD6":
                      return OpCode(v: code, c: "SET 2,(ix+§§)", m: " ", l: 2)
                      case "DDCBD7":
                      return OpCode(v: code, c: "SET 2,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBD8":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBD9":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBDA":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBDB":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBDC":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBDD":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBDE":
                      return OpCode(v: code, c: "SET 3,(ix+§§)", m: " ", l: 2)
                      case "DDCBDF":
                      return OpCode(v: code, c: "SET 3,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBE0":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBE1":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBE2":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBE3":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBE4":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBE5":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBE6":
                      return OpCode(v: code, c: "SET 4,(ix+§§)", m: " ", l: 2)
                      case "DDCBE7":
                      return OpCode(v: code, c: "SET 4,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBE8":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBE9":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBEA":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBEB":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBEC":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBED":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBEE":
                      return OpCode(v: code, c: "SET 5,(ix+§§)", m: " ", l: 2)
                      case "DDCBEF":
                      return OpCode(v: code, c: "SET 5,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBF0":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBF1":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBF2":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBF3":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBF4":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBF5":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBF6":
                      return OpCode(v: code, c: "SET 6,(ix+§§)", m: " ", l: 2)
                      case "DDCBF7":
                      return OpCode(v: code, c: "SET 6,(ix+§§)->a", m: " ", l: 2)
                      case "DDCBF8":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->b", m: " ", l: 2)
                      case "DDCBF9":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->c", m: " ", l: 2)
                      case "DDCBFA":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->d", m: " ", l: 2)
                      case "DDCBFB":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->e", m: " ", l: 2)
                      case "DDCBFC":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->h", m: " ", l: 2)
                      case "DDCBFD":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->l", m: " ", l: 2)
                      case "DDCBFE":
                      return OpCode(v: code, c: "SET 7,(ix+§§)", m: " ", l: 2)
                      case "DDCBFF":
                      return OpCode(v: code, c: "SET 7,(ix+§§)->a", m: " ", l: 2)
                   
               case "FDCB00":
                      return OpCode(v: code, c: "RLC (iy+§§)->b", m: " ", l: 2)
                      case "FDCB01":
                      return OpCode(v: code, c: "RLC (iy+§§)->c", m: " ", l: 2)
                      case "FDCB02":
                      return OpCode(v: code, c: "RLC (iy+§§)->d", m: " ", l: 2)
                      case "FDCB03":
                      return OpCode(v: code, c: "RLC (iy+§§)->e", m: " ", l: 2)
                      case "FDCB04":
                      return OpCode(v: code, c: "RLC (iy+§§)->h", m: " ", l: 2)
                      case "FDCB05":
                      return OpCode(v: code, c: "RLC (iy+§§)->l", m: " ", l: 2)
                      case "FDCB06":
                      return OpCode(v: code, c: "RLC (IY+§§)", m: " ", l: 2)
                      case "FDCB07":
                      return OpCode(v: code, c: "RLC (iy+§§)->a", m: " ", l: 2)
                      case "FDCB08":
                      return OpCode(v: code, c: "RRC (iy+§§)->b", m: " ", l: 2)
                      case "FDCB09":
                      return OpCode(v: code, c: "RRC (iy+§§)->c", m: " ", l: 2)
                      case "FDCB0A":
                      return OpCode(v: code, c: "RRC (iy+§§)->d", m: " ", l: 2)
                      case "FDCB0B":
                      return OpCode(v: code, c: "RRC (iy+§§)->e", m: " ", l: 2)
                      case "FDCB0C":
                      return OpCode(v: code, c: "RRC (iy+§§)->h", m: " ", l: 2)
                      case "FDCB0D":
                      return OpCode(v: code, c: "RRC (iy+§§)->l", m: " ", l: 2)
                      case "FDCB0E":
                      return OpCode(v: code, c: "RRC (IY+§§)", m: " ", l: 2)
                      case "FDCB0F":
                      return OpCode(v: code, c: "RRC (iy+§§)->a", m: " ", l: 2)
                      case "FDCB10":
                      return OpCode(v: code, c: "RL (iy+§§)->b", m: " ", l: 2)
                      case "FDCB11":
                      return OpCode(v: code, c: "RL (iy+§§)->c", m: " ", l: 2)
                      case "FDCB12":
                      return OpCode(v: code, c: "RL (iy+§§)->d", m: " ", l: 2)
                      case "FDCB13":
                      return OpCode(v: code, c: "RL (iy+§§)->e", m: " ", l: 2)
                      case "FDCB14":
                      return OpCode(v: code, c: "RL (iy+§§)->h", m: " ", l: 2)
                      case "FDCB15":
                      return OpCode(v: code, c: "RL (iy+§§)->l", m: " ", l: 2)
                      case "FDCB16":
                      return OpCode(v: code, c: "RL (IY+§§)", m: " ", l: 2)
                      case "FDCB17":
                      return OpCode(v: code, c: "RL (iy+§§)->a", m: " ", l: 2)
                      case "FDCB18":
                      return OpCode(v: code, c: "RR (iy+§§)->b", m: " ", l: 2)
                      case "FDCB19":
                      return OpCode(v: code, c: "RR (iy+§§)->c", m: " ", l: 2)
                      case "FDCB1A":
                      return OpCode(v: code, c: "RR (iy+§§)->d", m: " ", l: 2)
                      case "FDCB1B":
                      return OpCode(v: code, c: "RR (iy+§§)->e", m: " ", l: 2)
                      case "FDCB1C":
                      return OpCode(v: code, c: "RR (iy+§§)->h", m: " ", l: 2)
                      case "FDCB1D":
                      return OpCode(v: code, c: "RR (iy+§§)->l", m: " ", l: 2)
                      case "FDCB1E":
                      return OpCode(v: code, c: "RR (IY+§§)", m: " ", l: 2)
                      case "FDCB1F":
                      return OpCode(v: code, c: "RR (iy+§§)->a", m: " ", l: 2)
                      case "FDCB20":
                      return OpCode(v: code, c: "SLA (iy+§§)->b", m: " ", l: 2)
                      case "FDCB21":
                      return OpCode(v: code, c: "SLA (iy+§§)->c", m: " ", l: 2)
                      case "FDCB22":
                      return OpCode(v: code, c: "SLA (iy+§§)->d", m: " ", l: 2)
                      case "FDCB23":
                      return OpCode(v: code, c: "SLA (iy+§§)->e", m: " ", l: 2)
                      case "FDCB24":
                      return OpCode(v: code, c: "SLA (iy+§§)->h", m: " ", l: 2)
                      case "FDCB25":
                      return OpCode(v: code, c: "SLA (iy+§§)->l", m: " ", l: 2)
                      case "FDCB26":
                      return OpCode(v: code, c: "SLA (IY+§§)", m: " ", l: 2)
                      case "FDCB27":
                      return OpCode(v: code, c: "SLA (iy+§§)->a", m: " ", l: 2)
                      case "FDCB28":
                      return OpCode(v: code, c: "SRA (iy+§§)->b", m: " ", l: 2)
                      case "FDCB29":
                      return OpCode(v: code, c: "SRA (iy+§§)->c", m: " ", l: 2)
                      case "FDCB2A":
                      return OpCode(v: code, c: "SRA (iy+§§)->d", m: " ", l: 2)
                      case "FDCB2B":
                      return OpCode(v: code, c: "SRA (iy+§§)->e", m: " ", l: 2)
                      case "FDCB2C":
                      return OpCode(v: code, c: "SRA (iy+§§)->h", m: " ", l: 2)
                      case "FDCB2D":
                      return OpCode(v: code, c: "SRA (iy+§§)->l", m: " ", l: 2)
                      case "FDCB2E":
                      return OpCode(v: code, c: "SRA (IY+§§)", m: " ", l: 2)
                      case "FDCB2F":
                      return OpCode(v: code, c: "SRA (iy+§§)->a", m: " ", l: 2)
                      case "FDCB30":
                      return OpCode(v: code, c: "SLS (iy+§§)->b", m: " ", l: 2)
                      case "FDCB31":
                      return OpCode(v: code, c: "SLS (iy+§§)->c", m: " ", l: 2)
                      case "FDCB32":
                      return OpCode(v: code, c: "SLS (iy+§§)->d", m: " ", l: 2)
                      case "FDCB33":
                      return OpCode(v: code, c: "SLS (iy+§§)->e", m: " ", l: 2)
                      case "FDCB34":
                      return OpCode(v: code, c: "SLS (iy+§§)->h", m: " ", l: 2)
                      case "FDCB35":
                      return OpCode(v: code, c: "SLS (iy+§§)->l", m: " ", l: 2)
                      case "FDCB36":
                      return OpCode(v: code, c: "SLS (IY+§§)", m: " ", l: 2)
                      case "FDCB37":
                      return OpCode(v: code, c: "SLS (iy+§§)->a", m: " ", l: 2)
                      case "FDCB38":
                      return OpCode(v: code, c: "SRL (iy+§§)->b", m: " ", l: 2)
                      case "FDCB39":
                      return OpCode(v: code, c: "SRL (iy+§§)->c", m: " ", l: 2)
                      case "FDCB3A":
                      return OpCode(v: code, c: "SRL (iy+§§)->d", m: " ", l: 2)
                      case "FDCB3B":
                      return OpCode(v: code, c: "SRL (iy+§§)->e", m: " ", l: 2)
                      case "FDCB3C":
                      return OpCode(v: code, c: "SRL (iy+§§)->h", m: " ", l: 2)
                      case "FDCB3D":
                      return OpCode(v: code, c: "SRL (iy+§§)->l", m: " ", l: 2)
                      case "FDCB3E":
                      return OpCode(v: code, c: "SRL (IY+§§)", m: " ", l: 2)
                      case "FDCB3F":
                      return OpCode(v: code, c: "SRL (iy+§§)->a", m: " ", l: 2)
                      case "FDCB40":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB41":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB42":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB43":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB44":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB45":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB46":
                      return OpCode(v: code, c: "BIT 0,(IY+§§)", m: " ", l: 2)
                      case "FDCB47":
                      return OpCode(v: code, c: "BIT 0,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB48":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB49":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB4A":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB4B":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB4C":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB4D":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB4E":
                      return OpCode(v: code, c: "BIT 1,(IY+§§)", m: " ", l: 2)
                      case "FDCB4F":
                      return OpCode(v: code, c: "BIT 1,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB50":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB51":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB52":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB53":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB54":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB55":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB56":
                      return OpCode(v: code, c: "BIT 2,(IY+§§)", m: " ", l: 2)
                      case "FDCB57":
                      return OpCode(v: code, c: "BIT 2,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB58":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB59":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB5A":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB5B":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB5C":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB5D":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB5E":
                      return OpCode(v: code, c: "BIT 3,(IY+§§)", m: " ", l: 2)
                      case "FDCB5F":
                      return OpCode(v: code, c: "BIT 3,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB60":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB61":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB62":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB63":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB64":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB65":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB66":
                      return OpCode(v: code, c: "BIT 4,(IY+§§)", m: " ", l: 2)
                      case "FDCB67":
                      return OpCode(v: code, c: "BIT 4,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB68":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB69":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB6A":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB6B":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB6C":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB6D":
                      return OpCode(v: code, c: "BIT 5,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB6E":
                      return OpCode(v: code, c: "BIT 5,(IY+§§)", m: " ", l: 2)
                      case "FDCB6F":
                      return OpCode(v: code, c: "BIT  5,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB70":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB71":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB72":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB73":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB74":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB75":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB76":
                      return OpCode(v: code, c: "BIT 6,(IY+§§)", m: " ", l: 2)
                      case "FDCB77":
                      return OpCode(v: code, c: "BIT 6,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB78":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB79":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB7A":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB7B":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB7C":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB7D":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB7E":
                      return OpCode(v: code, c: "BIT 7,(IY+§§)", m: " ", l: 2)
                      case "FDCB7F":
                      return OpCode(v: code, c: "BIT 7,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB80":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB81":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB82":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB83":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB84":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB85":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB86":
                      return OpCode(v: code, c: "RES 0,(IY+§§)", m: " ", l: 2)
                      case "FDCB87":
                      return OpCode(v: code, c: "RES 0,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB88":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB89":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB8A":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB8B":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB8C":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB8D":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB8E":
                      return OpCode(v: code, c: "RES 1,(IY+§§)", m: " ", l: 2)
                      case "FDCB8F":
                      return OpCode(v: code, c: "RES 1,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB90":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB91":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB92":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB93":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB94":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB95":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB96":
                      return OpCode(v: code, c: "RES 2,(IY+§§)", m: " ", l: 2)
                      case "FDCB97":
                      return OpCode(v: code, c: "RES 2,(iy+§§)->a", m: " ", l: 2)
                      case "FDCB98":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->b", m: " ", l: 2)
                      case "FDCB99":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->c", m: " ", l: 2)
                      case "FDCB9A":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->d", m: " ", l: 2)
                      case "FDCB9B":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->e", m: " ", l: 2)
                      case "FDCB9C":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->h", m: " ", l: 2)
                      case "FDCB9D":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->l", m: " ", l: 2)
                      case "FDCB9E":
                      return OpCode(v: code, c: "RES 3,(IY+§§)", m: " ", l: 2)
                      case "FDCB9F":
                      return OpCode(v: code, c: "RES 3,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBA0":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBA1":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBA2":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBA3":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBA4":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBA5":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBA6":
                      return OpCode(v: code, c: "RES 4,(IY+§§)", m: " ", l: 2)
                      case "FDCBA7":
                      return OpCode(v: code, c: "RES 4,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBA8":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBA9":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBAA":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBAB":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBAC":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBAD":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBAE":
                      return OpCode(v: code, c: "RES 5,(IY+§§)", m: " ", l: 2)
                      case "FDCBAF":
                      return OpCode(v: code, c: "RES 5,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBB0":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBB1":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBB2":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBB3":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBB4":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBB5":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBB6":
                      return OpCode(v: code, c: "RES 6,(IY+§§)", m: " ", l: 2)
                      case "FDCBB7":
                      return OpCode(v: code, c: "RES 6,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBB8":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBB9":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBBA":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBBB":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBBC":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBBD":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBBE":
                      return OpCode(v: code, c: "RES 7,(IY+§§)", m: " ", l: 2)
                      case "FDCBBF":
                      return OpCode(v: code, c: "RES 7,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBC0":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBC1":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBC2":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBC3":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBC4":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBC5":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBC6":
                      return OpCode(v: code, c: "SET 0,(IY+§§)", m: " ", l: 2)
                      case "FDCBC7":
                      return OpCode(v: code, c: "SET 0,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBC8":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBC9":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBCA":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBCB":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBCC":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBCD":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBCE":
                      return OpCode(v: code, c: "SET 1,(IY+§§)", m: " ", l: 2)
                      case "FDCBCF":
                      return OpCode(v: code, c: "SET 1,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBD0":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBD1":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBD2":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBD3":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBD4":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBD5":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBD6":
                      return OpCode(v: code, c: "SET 2,(IY+§§)", m: " ", l: 2)
                      case "FDCBD7":
                      return OpCode(v: code, c: "SET 2,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBD8":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBD9":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBDA":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBDB":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBDC":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBDD":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBDE":
                      return OpCode(v: code, c: "SET 3,(IY+§§)", m: " ", l: 2)
                      case "FDCBDF":
                      return OpCode(v: code, c: "SET 3,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBE0":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBE1":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBE2":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBE3":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBE4":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBE5":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBE6":
                      return OpCode(v: code, c: "SET 4,(IY+§§)", m: " ", l: 2)
                      case "FDCBE7":
                      return OpCode(v: code, c: "SET 4,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBE8":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBE9":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBEA":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBEB":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBEC":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBED":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBEE":
                      return OpCode(v: code, c: "SET 5,(IY+§§)", m: " ", l: 2)
                      case "FDCBEF":
                      return OpCode(v: code, c: "SET 5,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBF0":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBF1":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBF2":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBF3":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBF4":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBF5":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBF6":
                      return OpCode(v: code, c: "SET 6,(IY+§§)", m: " ", l: 2)
                      case "FDCBF7":
                      return OpCode(v: code, c: "SET 6,(iy+§§)->a", m: " ", l: 2)
                      case "FDCBF8":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->b", m: " ", l: 2)
                      case "FDCBF9":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->c", m: " ", l: 2)
                      case "FDCBFA":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->d", m: " ", l: 2)
                      case "FDCBFB":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->e", m: " ", l: 2)
                      case "FDCBFC":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->h", m: " ", l: 2)
                      case "FDCBFD":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->l", m: " ", l: 2)
                      case "FDCBFE":
                      return OpCode(v: code, c: "SET 7,(IY+§§)", m: " ", l: 2)
                      case "FDCBFF":
                      return OpCode(v: code, c: "SET 7,(iy+§§)->a", m: " ", l: 2)
                   
            
            
            
        default:
            return OpCode(v: code, c: "Unknown", m: "Value is not known", l: 1, e: true)

        }
        
    }
    
    
}
