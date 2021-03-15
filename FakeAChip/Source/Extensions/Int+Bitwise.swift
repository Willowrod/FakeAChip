//
//  Int+Bitwise.swift
//  inSpeccytor
//
//  Created by Mike Hall on 15/12/2020.
//

import Foundation
extension Int {
    func isSet(bit: Int) -> Bool {
        return (self & (1 << bit)) > 0
    }
    
    func findTwosCompliment() -> UInt8?{
        switch self {
        case -128:
            return UInt8(128)
        case -127 ... -1:
            let pos = self * -1
            let posUInt = UInt8(pos)
            return ~posUInt &+ 1
        case 0...127:
            return UInt8(self)
        default:
            return nil
        }
    }
}

extension UInt8 {
    func isSet(bit: Int) -> Bool {
        return (self & (1 << bit)) > 0
    }
}
