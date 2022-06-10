//
//  Color+ZXColour.swift
//  Color+ZXColour
//
//  Created by Mike Hall on 22/09/2021.
//

import Foundation
import SwiftUI
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

extension Color {
    func toZXColour() -> ZXColour {
#if canImport(UIKit)
        typealias NativeColor = UIColor
#elseif canImport(AppKit)
        typealias NativeColor = NSColor
#endif
        let components = NativeColor(self)
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var o: CGFloat = 0
        components.getRed(&r, green: &g, blue: &b, alpha: &o)
//        else {
//            return ZXColour(r: UInt8(255),g: UInt8(0),b: UInt8(255))
//        }
        return ZXColour(r: UInt8(r), g: UInt8(g), b: UInt8(b))
        
    }
}
