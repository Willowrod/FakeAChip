//
//  Color+ZXColour.swift
//  Color+ZXColour
//
//  Created by Mike Hall on 22/09/2021.
//

import Foundation
import SwiftUI

extension Color {
    func toZXColour() -> ZXColour {
        let components = UIColor(self)
        var r: CGFloat = 0
             var g: CGFloat = 0
             var b: CGFloat = 0
             var o: CGFloat = 0
        guard components.getRed(&r, green: &g, blue: &b, alpha: &o) else {
            return ZXColour(r: UInt8(255),g: UInt8(0),b: UInt8(255))
        }
        return ZXColour(r: UInt8(r), g: UInt8(g), b: UInt8(b))
        
    }
}
