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
    
    func width() -> CGFloat {
        
        return min(size.width, size.height) * 0.85
    }
    
    func height() -> CGFloat {
        return max(size.width, size.height) * 0.9
    }
    
    func widthforLandscape() -> CGFloat {
        return width() * 0.9
           // return (width() / 24.0) * 32.0
    }
    
    
}
