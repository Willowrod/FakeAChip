//
//  ZX_ULA.swift
//  FakeAChip
//
//  Created by Mike Hall on 21/12/2021.
//

import Foundation
import SwiftUI

class ZX_ULA {
    var pixels: [Color] = Array(repeating: Colour.white, count: 49152)
    var attributes: [ZXAttribute] = Array(repeating: ZXAttribute(ink: Colour.black, paper: Colour.white), count: 768)
}

struct ZXAttribute {
    let ink: Color
    let paper: Color
}





