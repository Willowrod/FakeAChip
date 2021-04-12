//
//  StandardSprite.swift
//  FakeAChip
//
//  Created by Mike Hall on 08/04/2021.
//

import UIKit

struct StandardSprite {
    let widthOfSprite: Int
    let heightOfSprite: Int
    let pixelsPerSpriteX = 8
    let pixelsPerSpriteY = 8
    let pixelsPerSprite = 64
    let pixelCount: Int
    let width: Int
    let height: Int
    var pixels: [ZXColor]
    let myInk = ZXColor.black
    let myPaper = ZXColor.white
    
    init(bytes: [UInt8]) {
        self.widthOfSprite = 1
        self.heightOfSprite = 1
        self.pixelCount = pixelsPerSprite
        pixels = Array(repeating: ZXColor.white, count: pixelsPerSprite)
        var position = 0
        self.width = pixelsPerSpriteX * widthOfSprite
        self.height = pixelsPerSpriteY * heightOfSprite
        bytes.forEach { byte in
            pixels[position] = (byte & 0x80) > 0 ? myInk : myPaper
              pixels[position + 1] = (byte & 0x40) > 0 ? myInk : myPaper
              pixels[position + 2] = (byte & 0x20) > 0 ? myInk : myPaper
              pixels[position + 3] = (byte & 0x10) > 0 ? myInk : myPaper
              pixels[position + 4] = (byte & 0x08) > 0 ? myInk : myPaper
              pixels[position + 5] = (byte & 0x04) > 0 ? myInk : myPaper
              pixels[position + 6] = (byte & 0x02) > 0 ? myInk : myPaper
              pixels[position + 7] = (byte & 0x01) > 0 ? myInk : myPaper
            position += 8
        }
    }
    
    init(widthAndHeight: Int) {
        self.widthOfSprite = widthAndHeight
        self.heightOfSprite = widthAndHeight
        self.pixelCount = pixelsPerSprite * widthAndHeight * widthAndHeight
        pixels = Array(repeating: ZXColor.white, count: self.pixelCount)
        self.width = pixelsPerSpriteX * widthOfSprite
        self.height = pixelsPerSpriteY * heightOfSprite
    }
    
    init(width: Int, height: Int) {
        self.widthOfSprite = width
        self.heightOfSprite = height
        self.pixelCount = pixelsPerSprite * width * height
        pixels = Array(repeating: ZXColor.white, count: self.pixelCount)
        self.width = pixelsPerSpriteX * widthOfSprite
        self.height = pixelsPerSpriteY * heightOfSprite
    }
    
    subscript(x: Int, y: Int) -> ZXColor {
        get { pixels[y * width + x] }
        set { pixels[y * width + x] = newValue }
    }
}
