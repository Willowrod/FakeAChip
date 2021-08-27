//
//  Z80Type1FormatWrite.swift
//  Z80Type1FormatWrite
//
//  Created by Mike Hall on 27/08/2021.
//

import Foundation

class Z80Type1FormatWrite {

var ramDump: [UInt8] = []

func add(_ byte: UInt8) {
    ramDump.append(byte)
}
    
    func add(_ byte: UInt16) {
        ramDump.append(byte.lowByte())
        ramDump.append(byte.highByte())
    }

func add(_ bytes: [UInt8]) {
    ramDump.append(contentsOf: bytes)
}

func write() -> String {
    var returnString: String = ""
    ramDump.forEach{ byte in
        returnString += "\(byte.hex()) "
    }
if !returnString.isEmpty {
returnString.removeLast()
}
return returnString
}
}
