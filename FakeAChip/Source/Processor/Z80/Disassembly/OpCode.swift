//
//  OpCode.swift
//  inSpeccytor
//
//  Created by Mike Hall on 17/10/2020.
//

import Foundation

struct OpCode: Codable {
    var line: Int = 0
    var target: Int = 0
    var value: String
    var code: String
    var meaning: String
    var length: Int
    var isPreCode: Bool = false
    var isEndOfRoutine: Bool
    var targetType: TypeOfTarget
    var lineType: TypeOfTarget = .EMPTY
    var isJumpPosition = false
    var isNewLine = false
    var opCodeString: String = ""
    var opCodeArray: [UInt8] = []
    var targetLabel: String = ""
    var label: String = ""
    var shouldAutoFocus = false
    
    init(v: String, c: String, m: String, l: Int, e: Bool = false, t: TypeOfTarget = .NOTARGET) {
        value = v
        code = c
        meaning = m
        length = l
        isEndOfRoutine = e
        if l == 0 {
            isPreCode = true
        }
        targetType = t
    }
    
    func toString() -> String {
        return "\(value):\(code) - \(meaning)"
    }
    
    func isJumpTarget() -> Bool{
        return targetType == .CODE || targetType == .RELATIVE || targetType == .RST
    }
    
    mutating func writeOpCode(oC: String) {
        opCodeString = oC
        opCodeArray.removeAll()
        let split = oC.split(separator: " ")
        split.forEach{op in
            if let opCodeUInt8 = UInt8(op, radix: 16){
            opCodeArray.append(opCodeUInt8)
            }
        }
    }
    
//    mutating func addCode(opCode: String){
//        code = opCode
//        writeOpCode(oC: Z80Assembler().assemble(opCodeModel: self))
//    }
    
//    mutating func annoteOpCode(){
//        if length == 2 {
//            let byte: UInt8 = UInt8(getCodeByte().intValue)
//            if code.contains("±"){
//                code = code.replacingOccurrences(of: "±", with: "$\(UInt8(byte).hex().padded(size: 2))")
//            } else if code.contains("$$"){
//                code = code.replacingOccurrences(of: "$$", with: "$\(UInt8(byte).hex().padded(size: 2))")
//                meaning = meaning.replacingOccurrences(of: "$$", with: "\(byte)")
//                //code = "###\(code)"
//            } else if code.contains("##"){ // Two's compliment
//                let subt = byte.isSet(bit: 7)
//                var comp: Int = -Int(byte.twosCompliment())
//                if !subt{
//                    comp = Int(byte)
//                }
////                target = pCInDisAssembler + comp + 1 //Add 1 to make PC correct before comp
////                if target > 0xffff {
////                    code = code.replacingOccurrences(of: "##", with: "\(byte.hex()) - OVERFLOW!")
////                    meaning = meaning.replacingOccurrences(of: "##", with: "\(comp) (\(String(target, radix: 16)) - OVERFLOW!")
////                } else {
////                code = code.replacingOccurrences(of: "##", with: "$\(byte.hex())")
////                    meaning = meaning.replacingOccurrences(of: "##", with: "\(comp) (\(UInt16(target).hex()))")
////                }
//            } else if code.contains("§§"){ // Two's compliment
//                let subt = byte.isSet(bit: 7)
//                var comp: Int = -Int(byte.twosCompliment())
//                if !subt{
//                    comp = Int(byte)
//                }
//                target = pCInDisAssembler + comp + 1 //Add 1 to make PC correct before comp
//                code = code.replacingOccurrences(of: "§§", with: "$\(byte.hex())")
//                meaning = meaning.replacingOccurrences(of: "§§", with: "\(comp)")
//            }
//
//            meaning = meaning.replacingOccurrences(of: "±", with: "\(byte)")
//            pCInDisAssembler += 1
//        } else if length == 3 {
//            let low = getCodeByte().intValue
//            pCInDisAssembler += 1
//            let high = getCodeByte().intValue
//
//            if (code.contains("$$")){
//                let word = (high * 256) + low
//                target = word
//                code = code.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
//                meaning = meaning.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
//            } else {
//                code = code.replacingOccurrences(of: "$1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "$2", with: "$\(UInt8(high).hex().padded(size: 2))")
//                meaning = meaning.replacingOccurrences(of: "$1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "$2", with: "$\(UInt8(high).hex().padded(size: 2))")
//            }
//            pCInDisAssembler += 1
//        }
//    }
}
