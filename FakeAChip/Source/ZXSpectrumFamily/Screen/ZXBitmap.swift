//
//  Bitmap.swift
//  inSpeccytor
//
//  Created by Mike Hall on 14/12/2020.
//

import Foundation
import SwiftUI

struct ZXBitmap {
    let width: Int
    //var pixels: [ZXColor]
    var pixels: [Color]
    var paper: [Color]
    var ink: [Color]
    var lastData: [Int]
    var positions: Dictionary<Int, Int> = Dictionary()
    var attributes: Dictionary<Int, Int> = Dictionary()
    var height: Int {
        pixels.count / width
    }
    
    init(width: Int, height: Int, color: Color) {
        self.width = width
        pixels = Array(repeating: color, count: 49152)
        paper = Array(repeating: ZXColor.white, count: 768)
        ink = Array(repeating: ZXColor.black, count: 768)
        lastData = Array(repeating: -1, count: 49152)
        setupPositions()
    }
    
    subscript(x: Int, y: Int) -> Color {
        get { pixels[y * width + x] }
        set { pixels[y * width + x] = newValue }
    }
    
    mutating func setAttributes(bytes: ArraySlice<UInt8>, flashing: Bool){
        var indicator = 0
        bytes.forEach { byte in
            let isFlashing = byte.isSet(bit: 7) && flashing
            let paperValue: Color = byte.paper()
            let inkValue: Color = byte.ink()
            if (isFlashing){
                paper[indicator] = inkValue
                ink[indicator] = paperValue
            } else {
                paper[indicator] = paperValue
                ink[indicator] = inkValue
            }
            indicator += 1
        }
    }
    
    mutating func blit(bytes: ArraySlice<UInt8>){
        var indicator = 16384
        bytes.forEach { byte in
            let position = positions[indicator] ?? 0
            let colPos = attributes[indicator] ?? 0
            let myInk = ink[colPos]
            let myPaper = paper[colPos]
            pixels[position] = (byte & 0x80) > 0 ? myInk : myPaper
            pixels[position + 1] = (byte & 0x40) > 0 ? myInk : myPaper
            pixels[position + 2] = (byte & 0x20) > 0 ? myInk : myPaper
            pixels[position + 3] = (byte & 0x10) > 0 ? myInk : myPaper
            pixels[position + 4] = (byte & 0x08) > 0 ? myInk : myPaper
            pixels[position + 5] = (byte & 0x04) > 0 ? myInk : myPaper
            pixels[position + 6] = (byte & 0x02) > 0 ? myInk : myPaper
            pixels[position + 7] = (byte & 0x01) > 0 ? myInk : myPaper
            indicator += 1
        }
    }
    
    mutating func setupPositions(){
        var x = 0
        var y = 0
        for a in 16384...18431 {
            let position = ((y * 256) + (x * 8))
            positions[a] = position
            let colPos = (((y / 8) * 32) + x)
            attributes[a] = colPos
            x += 1
            if x > 31 {
                x = 0
                y += 8
                if (y > 63) {
                    y -= 63
                }
            }
        }
        x = 0
        y = 0
        for a in 18432...20479 {
            let position = ((y * 256) + (x * 8)) + 16384
            positions[a] = position
            let colPos = ((((y / 8) * 32) + x)) + 256
            attributes[a] = colPos
            x += 1
            if x > 31 {
                x = 0
                y += 8
                if (y > 63) {
                    y -= 63
                }
            }
        }
        x = 0
        y = 0
        for a in 20480...22527 {
            let position = ((y * 256) + (x * 8)) + 32768
            positions[a] = position
            let colPos = ((((y / 8) * 32) + x)) + 512
            attributes[a] = colPos
            x += 1
            if x > 31 {
                x = 0
                y += 8
                if (y > 63) {
                    y -= 63
                }
            }
        }
    }
    
}
