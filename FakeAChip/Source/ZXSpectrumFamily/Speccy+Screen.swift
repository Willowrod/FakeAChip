//
//  Speccy+Screen.swift
//  Speccy+Screen
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
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
//        let pairs = [AF.registerPair, BC.registerPair, DE.registerPair, HL.registerPair, IX.registerPair, IY.registerPair, framePair.registerPair, edgePair.registerPair]
        DispatchQueue.main.sync {
            data?.vdu = VDU(screen: screenImage, border: borderColour)//map: screenImage.pixels)
           // data?.registerPairs = RegisterSetModel(registerPairs: pairs)
        }
        frameEnds = true
        runInterupt()
    }
    
}
