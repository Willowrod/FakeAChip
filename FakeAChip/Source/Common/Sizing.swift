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
        return size.width * 0.85
    }
    
    func height() -> CGFloat {
        return size.width * 0.9
    }
    
}
