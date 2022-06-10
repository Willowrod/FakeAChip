//
//  Sizing.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/03/2021.
//

import Foundation

class Sizing {
    
    static let instance = Sizing()
    
    var size: CGSize = CGSize(width: 1080, height: 800)
    
    func actualWidth() -> CGFloat {
        return min(size.width, size.height)
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
