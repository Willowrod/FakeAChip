//
//  Array+Helpers.swift
//  FakeAChip
//
//  Created by Mike Hall on 18/01/2022.
//

import Foundation

extension Array {
    
    subscript(_ ix: UInt8) -> Element {
        return self[Int(ix)]
    }
    
    subscript(_ ix: UInt16) -> Element {
        return self[Int(ix)]
    }
}

extension ContiguousArray {

    subscript(_ ix: UInt8) -> Element {
        return self[Int(ix)]
    }

    subscript(_ ix: UInt16) -> Element {
        return self[Int(ix)]
    }
}
