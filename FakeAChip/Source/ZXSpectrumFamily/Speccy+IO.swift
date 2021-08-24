//
//  Speccy+IO.swift
//  Speccy+IO
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
import UIKit
import SwiftUI

extension Speccy {
    func performInInternal(port: UInt8, map: UInt8, destination: Register){

        if (port == 0xfe){
            
            var byteVal: UInt8 = 0x1f
            switch map{
            case 0xfe:
                byteVal = keyboard[7]
            case 0xfd:
                byteVal = keyboard[6]
            case 0xfb:
                byteVal = keyboard[5]
            case 0xf7:
                byteVal = keyboard[4]
            case 0xef:
                byteVal = keyboard[3]
            case 0xdf:
                byteVal = keyboard[2]
            case 0xbf:
                byteVal = keyboard[1]
            case 0x7f:
                byteVal = keyboard[0]
            default:
                break
            }
            if data?.headerData.tapePlayerData.tapePlayerState == .Playing {
                if let tapeData = data?.headerData.tapePlayerData.tape?.fetchData(tState: loadingTStates){
                    byteVal = byteVal.set(bit: 6, value: tapeData.signal)
                    if tapeData.reset {
                        loadingTStates = 0
                    }
                } else {
                    data?.headerData.tapePlayerData.tape = nil
                    data?.headerData.tapePlayerData.tapePlayerState = .Paused
                    resume()
                }
            }
            destination.inCommand(byte: byteVal)
        } else if port == 0x7f {
            //           print("Checking for Fuller Joystick")
            //             destination.inCommand(byte: kempston)
        } else if port == 0x1f {
            destination.inCommand(byte: kempston)
            //          print("Checking for Kempston Joystick")
        } else {
            //           print("Checking port \(port.hex())")
        }
    }
    
    func performOutInternal(port: UInt8, map: UInt8, source: Register) {
        if (port == 0xfe){
            updateBorder(source.value())
            clicks = source.value() & 24
        }
        if (port == 0xfd){
        }
    }
    
    func borderColour(_ colour: UInt8) -> Color {
        let zxColour = colour.border()
        return Color(red: Double(zxColour.r), green: Double(zxColour.g), blue: Double(zxColour.b), opacity: 1)
    }
    
    func updateBorder(_ colour: UInt8) {
        borderColour = borderColour(colour)
    }
    
    func keyboardInteractionInternal(key: Int, pressed: Bool){
        var bank = -1
        var bit = -1
        switch key{
        case 4: // a
            bank = 6
            bit = 0
        case 5: // b
            bank = 0
            bit = 4
        case 6: // c
            bank = 7
            bit = 3
        case 7: // d
            bank = 6
            bit = 2
        case 8: // e
            bank = 5
            bit = 2
        case 9: // f
            bank = 6
            bit = 3
        case 10: // g
            bank = 6
            bit = 4
        case 11: // h
            bank = 1
            bit = 4
        case 12: // i
            bank = 2
            bit = 2
        case 13: // j
            bank = 1
            bit = 3
        case 14: // k
            bank = 1
            bit = 2
        case 15: // l
            bank = 1
            bit = 1
        case 16: // m
            bank = 0
            bit = 2
        case 17: // n
            bank = 0
            bit = 3
        case 18: // o
            bank = 2
            bit = 1
        case 19: // p
            bank = 2
            bit = 0
        case 20: // q
            bank = 5
            bit = 0
        case 21: // r
            bank = 5
            bit = 3
        case 22: // s
            bank = 6
            bit = 1
        case 23: // t
            bank = 5
            bit = 4
        case 24: // u
            bank = 2
            bit = 3
        case 25: // v
            bank = 7
            bit = 4
        case 26: // w
            bank = 5
            bit = 1
        case 27: // x
            bank = 7
            bit = 2
        case 28: // y
            bank = 2
            bit = 4
        case 29: // z
            bank = 7
            bit = 1
        case 30: // 1
            bank = 4
            bit = 0
        case 31: // 2
            bank = 4
            bit = 1
        case 32: // 3
            bank = 4
            bit = 2
        case 33: // 4
            bank = 4
            bit = 3
        case 34: // 5
            bank = 4
            bit = 4
        case 35: // 6
            bank = 3
            bit = 4
        case 36: // 7
            bank = 3
            bit = 3
        case 37: // 8
            bank = 3
            bit = 2
        case 38: // 9
            bank = 3
            bit = 1
        case 39: // 0
            bank = 3
            bit = 0
        case 40: // enter
            bank = 1
            bit = 0
        case 44: // space
            bank = 0
            bit = 0
        case 225: // LShift (CS)
            bank = 7
            bit = 0
        case 224: // LCnt (SS)
            bank = 0
            bit = 1
            
        default:
            bank = -1
            bit = -1
        }
        if bank >= 0 && bit >= 0 {
            keyboard[bank] = pressed ? keyboard[bank].clear(bit: bit) : keyboard[bank].set(bit: bit)
        }
    }
    
    
    func keyboardInteractionInternal(bank: Int, bit: Int, pressed: Bool) {
        keyboard[bank] = pressed ? keyboard[bank].clear(bit: bit) : keyboard[bank].set(bit: bit)
    }
    
    func joystickInteractionInternal(key: Int, pressed: Bool){
        // Kempston 000FUDLR
        switch key{
        case 0: // Left
            kempston = pressed ? kempston.set(bit: 1) : kempston.clear(bit: 1)
        case 1: // Right
            kempston = pressed ? kempston.set(bit: 0) : kempston.clear(bit: 0)
        case 2: // Up
            kempston = pressed ? kempston.set(bit: 3) : kempston.clear(bit: 3)
        case 3: // Down
            kempston = pressed ? kempston.set(bit: 2) : kempston.clear(bit: 2)
        case 4: // LFire
            kempston = pressed ? kempston.set(bit: 4) : kempston.clear(bit: 4)
        case 5: // RFire
            kempston = pressed ? kempston.set(bit: 4) : kempston.clear(bit: 4)
        default:
            break
        }
        
        
    }
    
}