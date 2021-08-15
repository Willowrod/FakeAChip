//
//  StringExtensions.swift
//  inSpeccytor
//
//  Created by Mike Hall on 10/10/2020.
//

import Foundation
extension String {
    func inserting(separator: String, every n: Int) -> String {
        var result: String = ""
        let characters = Array(self)
        stride(from: 0, to: characters.count, by: n).forEach {
            result += String(characters[$0..<min($0+n, characters.count)])
            if $0+n < characters.count {
                result += separator
            }
        }
        return result
    }
    
//    func splitToCodeByteModel(separator: Character, startFrom: Int = 0) -> [CodeByteModel] {
//        let subStringArray = self.split(separator: separator)
//        var stringArray: [CodeByteModel] = []
//        var lineNumber: Int = 0
//        for subString in subStringArray {
//            stringArray.append(CodeByteModel(withHex: "\(subString.uppercased())", line: lineNumber))
//            lineNumber+=1
//            if (lineNumber == 27){
//                lineNumber = 16384
//            }
//        }
//        return stringArray
//    }
    
    func splitToBytes(separator: Character, startFrom: Int = 0) -> [Substring] {
        let subStringArray = self.split(separator: separator)
        return subStringArray
    }
    
    func splitToBytesROM(separator: Character, startFrom: Int = 0) -> [UInt8] {
        let subStringArray = self.split(separator: separator)
        var rom: [UInt8] = []
        for subString in subStringArray {
            rom.append(UInt8(subString, radix: 16) ?? 0x00)
        }
        return rom
    }
    
    func reduce() -> String {
        if self.count > 1 {
            var str = self
            return String(str.removeLast())
        }
        return self
    }
    
//    func splitToHeader(separator: Character) -> [CodeByteModel] {
//        let subStringArray = self.split(separator: separator)
//        var stringArray: [CodeByteModel] = []
//        var lineNumber: Int = 0
//        for subString in subStringArray {
//            stringArray.append(CodeByteModel(withHex: "\(subString.uppercased())", line: lineNumber))
//            lineNumber+=1
//            if (lineNumber == 27){
//                break
//            }
//        }
//        return stringArray
//    }
    
    func padded(size: Int = 2) -> String {
        let len = self.count
        var rtrn = self
        for _ in len..<size{
            rtrn = "0\(rtrn)"
        }
        return rtrn
    }
    
    func isValidHex() -> Bool{
        let regex = try! NSRegularExpression(pattern: "^[0-9A-F]+$")
        let range = NSRange(self.startIndex..., in: self)
        let matchRange = regex.rangeOfFirstMatch(in: self, options: .reportProgress, range: range)
        return matchRange.location != NSNotFound
    }
    
    func isValidUInt16() -> Bool{
        if let integer = Int(self), integer <= 0xFFFF {
            return true
        }
        return false
    }
    
    func validUInt16(labels: Dictionary<String, Int>?) -> UInt16? {
        if self.contains("0X") || self.contains("$"){
            if let integer = Int(self.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "0X", with: "").replacingOccurrences(of: "$", with: ""), radix: 16), integer <= 0xFFFF, integer >= 0x00 {
                return UInt16(integer)
            }
        }
            if let integer = Int(self), integer <= 0xFFFF {
                return UInt16(integer)
            }
        
        if let integer = labels?[self], integer <= 0xFFFF {
            return UInt16(integer)
        }
        return nil
    }
    
    func validUInt8() -> UInt8? {
        if self.contains("0X") || self.contains("$"){
            if let integer = Int(self.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "0X", with: "").replacingOccurrences(of: "$", with: ""), radix: 16), integer <= 0xFF {
                return UInt8(integer)
            }
        }
            if let integer = Int(self), integer <= 0xFF, integer >= 0x00 {
                return UInt8(integer)
            }
        return nil
    }
    
    func validUInt8(labels: Dictionary<String, Int>?, line: Int) -> UInt8? {
        if self.contains("0X") || self.contains("$"){
            if let integer = Int(self.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "0X", with: "").replacingOccurrences(of: "$", with: ""), radix: 16), integer <= 0xFF {
                return UInt8(integer)
            }
        }
            if let integer = Int(self), integer <= 0xFF, integer >= 0x00 {
                return UInt8(integer)
            }
        
        if let integer = labels?[self], integer <= 0xFFFF {
            let difference = integer - line
            if let twos = difference.findTwosCompliment() {
                return twos
            }
        }
        return nil
    }
    
    func displacement() -> String? {
         let displacementSplit = self.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").split(separator: "+")
        if displacementSplit.count == 2 {
            if let displacement = String(displacementSplit[1]).validUInt8() {
                return displacement.hex()
            }
        }
        return nil
    }
    
    func regOffset() -> UInt8? {
        switch self {
        case "A":
            return 7
        case "B":
            return 0
        case "C":
            return 1
        case "D":
            return 2
        case "E":
            return 3
        case "H":
            return 4
        case "L":
            return 5
        default:
            return nil
        }
    }
}
