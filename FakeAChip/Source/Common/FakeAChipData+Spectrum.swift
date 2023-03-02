//
//  FakeAChipData+Spectrum.swift
//  FakeAChipData+Spectrum
//
//  Created by Mike Hall on 14/09/2021.
//

import Foundation


#if canImport(GameController)
import GameController
#endif

extension FakeAChipData {
    func handleVirtualController(dPad: GCControllerDirectionPad, xAxis: Float, yAxis: Float) {
       // print("xAxis: \(xAxis), yAxis: \(yAxis)")
        if xAxis < 0.4 && xAxis > -0.4 {
            if emulatorData.currentXAxis != 0 {
            delegate?.joystickInteraction(key: 0, pressed: false)
            delegate?.joystickInteraction(key: 1, pressed: false)
                emulatorData.currentXAxis = 0
            }
        }
        if xAxis >= 0.4 && emulatorData.currentXAxis < 0.4 {
            delegate?.joystickInteraction(key: 1, pressed: true)
            delegate?.joystickInteraction(key: 0, pressed: false)
            emulatorData.currentXAxis = 1
        }
        if xAxis <= -0.4 && emulatorData.currentXAxis > -0.4 {
            delegate?.joystickInteraction(key: 1, pressed: false)
            delegate?.joystickInteraction(key: 0, pressed: true)
            emulatorData.currentXAxis = -1
        }
        
        if yAxis < 0.4 && yAxis > -0.4 {
            if emulatorData.currentYAxis != 0 {
            delegate?.joystickInteraction(key: 2, pressed: false)
            delegate?.joystickInteraction(key: 3, pressed: false)
                emulatorData.currentYAxis = 0
            }
        }
        if yAxis >= 0.4 && emulatorData.currentYAxis < 0.4 {
            delegate?.joystickInteraction(key: 2, pressed: true)
            delegate?.joystickInteraction(key: 3, pressed: false)
            emulatorData.currentYAxis = 1
        }
        if yAxis <= -0.4 && emulatorData.currentYAxis > -0.4 {
            delegate?.joystickInteraction(key: 2, pressed: false)
            delegate?.joystickInteraction(key: 3, pressed: true)
            emulatorData.currentYAxis = -1
        }
        
    }
    
    func handleButtonAPressed(button: GCControllerButtonInput, value: Float, pressed: Bool) {
        if emulatorData.currentButtonAValue != pressed {
            delegate?.joystickInteraction(key: 4, pressed: pressed)
            emulatorData.currentButtonAValue = pressed
        }
    }
    
    
}
