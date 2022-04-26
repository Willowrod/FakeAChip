//
//  Z80BlockDisassembly.swift
//  FakeAChip
//
//  Created by Mike Hall on 13/04/2021.
//

import Foundation
class Z80BlockDisassembly {
    let opcodeLookup = OpCodeDefs()
    var disassembly: [OpCode] = []
    var isCalc = false
    let initialLine: Int
    let block: [UInt8]
    var count = 0
    
    init(block: [UInt8], initialLine: Int){
        self.block = block
        self.initialLine = initialLine
        disassemble()
    }
    
    func getByteFromBlockAsString() -> String {
        return getByteFromBlock().hex()
    }
    
    func getByteFromBlock() -> UInt8 {
        if count < block.count {
            return block[count]
        }
        return 0x00
    }
    
    func currentPC() -> Int {
        return initialLine + count
    }
    
    func disassemble(){
        count = 0
        var routineCodes: [OpCode] = []
        while count < block.count{
            let lineAsInt = initialLine + count
            let codeValue = getByteFromBlockAsString()
            var opCode = opcodeLookup.opCode(code:codeValue)
            count += 1
            if (!isCalc){
            if opCode.isPreCode {
                let thisCode = getByteFromBlockAsString()
                count += 1
                let extra = getByteFromBlockAsString()
                count += 1
                var secondextra = ""
                secondextra = getByteFromBlockAsString()
                count -= 1
                opCode = opcodeLookup.opCode(code: "\(opCode.value)\(thisCode)", extra: extra, secondExtra: secondextra)
                
            }
            if opCode.length == 2 {
                let byte = getByteFromBlock()
                if opCode.code.contains("±"){
                    opCode.code = opCode.code.replacingOccurrences(of: "±", with: "$\(UInt8(byte).hex().padded(size: 2))")
                } else if opCode.code.contains("$$"){
                    opCode.code = opCode.code.replacingOccurrences(of: "$$", with: "$\(UInt8(byte).hex().padded(size: 2))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "$$", with: "\(byte)")
                    //opCode.code = "###\(opCode.code)"
                } else if opCode.code.contains("##"){ // Two's compliment
                    let subt = byte.isSet(bit: 7)
                    var comp: Int = -Int(byte.twosCompliment())
                    if !subt{
                        comp = Int(byte)
                    }
                    opCode.target = currentPC() + comp + 1 //Add 1 to make PC correct before comp
                    if opCode.target > 0xffff {
                        opCode.code = opCode.code.replacingOccurrences(of: "##", with: "\(byte.hex()) - OVERFLOW!")
                        opCode.meaning = opCode.meaning.replacingOccurrences(of: "##", with: "\(comp) (\(String(opCode.target, radix: 16)) - OVERFLOW!")
                    } else {
                    opCode.code = opCode.code.replacingOccurrences(of: "##", with: "$\(byte.hex())")
                        opCode.meaning = opCode.meaning.replacingOccurrences(of: "##", with: "\(comp) (\(UInt16(opCode.target).hex()))")
                    }
                } else if opCode.code.contains("§§"){ // Two's compliment
                    let subt = byte.isSet(bit: 7)
                    var comp: Int = -Int(byte.twosCompliment())
                    if !subt{
                        comp = Int(byte)
                    }
                    opCode.target = currentPC() + comp + 1 //Add 1 to make PC correct before comp
                    opCode.code = opCode.code.replacingOccurrences(of: "§§", with: "$\(byte.hex())")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "§§", with: "\(comp)")
                }

                opCode.meaning = opCode.meaning.replacingOccurrences(of: "±", with: "\(byte)")
                count += 1
            } else if opCode.length == 3 {
                let low = getByteFromBlock()
                count += 1
                let high = getByteFromBlock()

                if (opCode.code.contains("$$")){
                    let word: Int = Int(Int(high) * Int(256)) + Int(low)
                    opCode.target = word
                    opCode.code = opCode.code.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
                } else {
                    opCode.code = opCode.code.replacingOccurrences(of: "¢1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "¢2", with: "$\(UInt8(high).hex().padded(size: 2))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "¢1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "¢2", with: "$\(UInt8(high).hex().padded(size: 2))")
                }
                count += 1
            }
                opCode.line = Int(lineAsInt)
            
            if (opCode.isJumpTarget()){
                if opCode.targetType == .RST {
                    switch opCode.value.uppercased() {
                    case "C7":
                        opCode.target = 0
                    case "CF":
                        opCode.target = 0x08
                    case "D7":
                        opCode.target = 0x10
                    case "DF":
                        opCode.target = 0x18
                    case "E7":
                        opCode.target = 0x20
                    case "EF":
                        opCode.target = 0x28
                    case "F7":
                        opCode.target = 0x30
                    case "FF":
                        opCode.target = 0x38
                    default:
                        opCode.target = 0
                    }
                }
            }
            
            
            if opCode.value.count == 6 {
                count += 1
            }
            
                if opCode.value.uppercased() == "EF" {
                    isCalc = true
                }
               // count += opCode.length
                routineCodes.append(opCode)
            } else {
                if opCode.value.uppercased() == "38"{
                    opCode.code = "End Calc"
                    isCalc = false
                } else if opCode.value.uppercased() == "3B"{
                    opCode.code = "Single Calc Function"
                    isCalc = false
                } else {
                    opCode.code = "Calc \(opCode.value)"
                }
                opCode.line = Int(lineAsInt)
                    opCode.meaning = "Calculator Function"
            }
            
        //    print("Adding line \(opCode.line): \(opCode.code) - \(opCode.opCodeString)")
            disassembly.append(opCode)
            
        }
    }
}
