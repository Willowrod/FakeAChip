//
//  Refresh.swift
//  inSpeccytor
//
//  Created by Mike Hall on 07/01/2021.
//

import Foundation
class Refresh: Register {
    override func ld(value: UInt8) {
        super.ld(value: value & 0x7f)
    }
    
    override func inc() {
        super.ld(value: (value() &+ 1) & 0x7f)
    }
}
