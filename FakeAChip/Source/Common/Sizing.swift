//
//  Sizing.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/03/2021.
//

import Foundation
import UIKit

class Sizing {
    
    static let instance = Sizing()
    
    var size: CGSize = .zero
    
    func actualWidth() -> CGFloat {
        let w = min(size.width, size.height)
        if w < 1 {
            return 1
        }
        return w
    }
    
    func width() -> CGFloat {
        let maxWidth = actualWidth() * 0.85
        return CGFloat(Int(maxWidth / 256) * 256)
    }
    
    func height() -> CGFloat {
        return max(size.width, size.height) * 0.9
    }
    
    func widthforLandscape() -> CGFloat {
        let maxWidth = actualWidth() * 0.765
        return CGFloat(Int(maxWidth / 256) * 256)
         
    }
    
    
}
