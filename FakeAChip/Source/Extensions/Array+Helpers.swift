//
//  Array+Helpers.swift
//  FakeAChip
//
//  Created by Mike Hall on 18/01/2022.
//

import Foundation
import UIKit

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


extension Array<UInt8> {
    func write() -> String {
        var returnString: String = ""
        self.forEach{ byte in
            returnString += "\(byte.hex()) "
        }
        if !returnString.isEmpty {
            returnString.removeLast()
        }
        return returnString
    }

    func toZXImageData() -> String? {
        var screenImage = ZXBitmap(width: 256, height: 192, color: ZXColor.red)
        screenImage.setAttributes(bytes: self[6144...6911], flashing: false)
        screenImage.blat(bytes: self[0...6143])
        let image = UIImage(bitmap: screenImage)
        return image?.pngData()?.base64EncodedString()
    }

    func toScreenShot() -> String {
            if self.count > 6911 {
                if let string = Array(self[0...6911]).toZXImageData(){
                    return string
                }
            }
        return ""
    }
}
