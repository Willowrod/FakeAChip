//
//  Speccy+Screen.swift
//  Speccy+Screen
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
import UIKit
import SwiftUI

extension Speccy {
    func blitScreenInternal(){
        screenImage.setAttributes(bytes: ram[6144...6911], flashing: flashOn)
        screenImage.blit(bytes: ram[0...6143])
    }
    
    func renderFrameInternal(){
        if restricted {
            beeper.endFrame()
        }
        flashCount += 1
        if (flashCount >= 16){
            flashCount = 0
            flashOn = !flashOn
        }
        self.blitScreen()
        let pairs = [AF.registerPair, BC.registerPair, DE.registerPair, HL.registerPair, IX.registerPair, IY.registerPair, framePair.registerPair, edgePair.registerPair]
//        let bytesPerRow = screenImage.width * bytesPerPixel
//
//        guard let providerRef = CGDataProvider(data: Data(bytes: screenImage.pixels, count: screenImage.height * bytesPerRow) as CFData) else {
//            return
//        }
//
//        cgImage = CGImage(
//            width: screenImage.width,
//            height: screenImage.height,
//            bitsPerComponent: 8,
//            bitsPerPixel: bytesPerPixel * 8,
//            bytesPerRow: bytesPerRow,
//            space: CGColorSpaceCreateDeviceRGB(),
//            bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
//            provider: providerRef,
//            decode: nil,
//            shouldInterpolate: true,
//            intent: .defaultIntent
//        )
//        guard let cgImage = cgImage else {
//            return
//        }
       // if let screen = UIImage.init(bitmap: screenImage) {
        DispatchQueue.main.sync {
            data?.vdu = VDU(border: borderColour, map: screenImage.pixels)
            data?.registerPairs = RegisterSetModel(registerPairs: pairs)
        }
      //  }
        frameEnds = true
        runInterupt()
    }
}
