//
//  Color.swift
//  inSpeccytor
//
//  Created by Mike Hall on 14/12/2020.
//

import Foundation
import SwiftUI

struct ZXColor {
    var r, g, b: UInt8
    var a: UInt8 = 255
}

extension ZXColor {
    static let black = ZXColor(r: 0, g: 0, b: 0)
    static let blue = ZXColor(r: 0, g: 0, b: 215)
    static let red = ZXColor(r: 215, g: 0, b: 0)
    static let magenta = ZXColor(r: 215, g: 0, b: 215)
    static let green = ZXColor(r: 0, g: 215, b: 0)
    static let cyan = ZXColor(r: 0, g: 215, b: 215)
    static let yellow = ZXColor(r: 215, g: 215, b: 0)
    static let white = ZXColor(r: 215, g: 215, b: 215)
    
    static let bright_black = ZXColor(r: 0, g: 0, b: 0)
    static let bright_blue = ZXColor(r: 0, g: 0, b: 255)
    static let bright_red = ZXColor(r: 255, g: 0, b: 0)
    static let bright_magenta = ZXColor(r: 255, g: 0, b: 225)
    static let bright_green = ZXColor(r: 0, g: 255, b: 0)
    static let bright_cyan = ZXColor(r: 0, g: 255, b: 255)
    static let bright_yellow = ZXColor(r: 0, g: 255, b: 255)
    static let bright_white = ZXColor(r: 255, g: 255, b: 255)
    
    func toUIColor() -> UIColor {
        let red: CGFloat = CGFloat(r) / 255.0
        let green: CGFloat = CGFloat(g) / 255.0
        let blue: CGFloat = CGFloat(b) / 255.0
        
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}


