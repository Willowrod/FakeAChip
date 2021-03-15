//
//  UInt16+Bitwise.swift
//  inSpeccytor
//
//  Created by Mike Hall on 27/12/2020.
//

import Foundation

extension UInt16 {
    func highByte() -> UInt8 {
        return UInt8(self / 256)
    }
    
    func lowByte() -> UInt8 {
       return UInt8(self - ((self / 256) * 256))
    }
    
    func hex() -> String {
        return String(self, radix: 16).padded(size: 4)
    }
    
    func bin() -> String {
        return String(self, radix: 2).padded(size: 16)
    }
}
