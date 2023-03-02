//
//  Sizing.swift
//  FakeAWatch Watch App
//
//  Created by Mike Hall on 02/03/2023.
//

import Foundation
import UIKit

class Sizing {

    static let instance = Sizing()

    //   var size: CGSize = CGSize(width: 396, height: 484)
    var size: CGSize = CGSize(width: 256, height: 312)

    func actualWidth() -> CGFloat {
        return size.width
    }

    func width() -> CGFloat {
        return size.width
    }

    func height() -> CGFloat {
        return size.height
    }

    func widthforLandscape() -> CGFloat {
        return size.width
    }


}
