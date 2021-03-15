//
//  Data+String.swift
//  inSpeccytor
//
//  Created by Mike Hall on 10/10/2020.
//

import Foundation
extension Data {

    var hexString: String? {
        return withUnsafeBytes { (bytes: UnsafePointer<UInt8>) in
            let charA = UInt8(UnicodeScalar("a").value)
            let char0 = UInt8(UnicodeScalar("0").value)

            func itoh(_ value: UInt8) -> UInt8 {
                return (value > 9) ? (charA + value - 10) : (char0 + value)
            }

            let hexLen = count * 2
            let ptr = UnsafeMutablePointer<UInt8>.allocate(capacity: hexLen)

            for i in 0 ..< count {
                ptr[i*2] = itoh((bytes[i] >> 4) & 0xF)
                ptr[i*2+1] = itoh(bytes[i] & 0xF)
            }

            return String(bytesNoCopy: ptr,
                               length: hexLen,
                             encoding: .utf8,
                             freeWhenDone: true)?.inserting(separator: " ", every: 2)
        }
    }
}
