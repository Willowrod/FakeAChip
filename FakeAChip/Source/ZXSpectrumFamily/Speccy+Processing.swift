//
//  Speccy+Processing.swift
//  Speccy+Processing
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
extension Speccy {
    func initialPC() -> UInt16 {
        return initPc
    }
    
    func startProcessingInternal() {
        processing = true
        self.resume()
        DispatchQueue.background(background: {
            self.process()
        }, completion:{
            if self.shouldRestart {
                self.startProcessing()
            }
        })
    }
    
    func stopProcessingInternal() {
        self.pause()
        processing = false
    }
    
    func processInternal(){
        currentTStates = 0
        
        print ("Spectrum on - processing: \(processing)")
        while processing {
            framePair.inc()
            if !pauseProcessor {
                if (!frameEnds) {
                    if (shouldRunInterupt){
                        interupt = false
                        interupt2 = false
                        push(value: PC)
                        switch interuptMode {
                        case 0:
                            PC = 0x0066
                        case 1:
                            PC = 0x0038
                        default:
                            let intAddress = (UInt16(I.value()) * 256) + UInt16(R.value())
                            PC = fetchRamWord(location: intAddress)
                            
                        }
                        halt = false
                        shouldRunInterupt = false
                    }
                    if (halt){
                        instructionComplete(states: 4, length: 0)
                        halt = false
                    } else {
                        let byte = fetchRam(location: PC)
                        shouldBreak = breakPoints.contains(PC) || shouldStep || shouldForceBreak
                        if (shouldBreak){
                            DispatchQueue.main.sync {
                                //                        delegate?.updateRegisters()
                                //                        delegate?.updateDebug(line: PC)
                            }
                            while shouldBreak {
                            }
                        }
                        
                        shouldForceBreak = false
                        self.doAdditionalPreProcessing()
                        //                        if PC == 0x0605 {
                        //                            print("Breaking here -  A: \(a().hex()) F: (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
                        //                        }
                        //   if PC < 0x4000{
                        //      print("Running PC \(PC.hex()) opCode: \(byte)")
                        //  }
                        opCode(byte: byte)
                        //                        edgePair.ld(value: UInt16(PC))
                        //
                        //                        if PC > 0x4000{
                        //                            print("Running snapshot")
                        //                        } else {
                        //
                        //                        }
                        //
                        //                    if PC > 0x0600{
                        
                        //                            print("New edge found - TState: \(currentTStates) A: \(a().hex()) F: (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
                        //                   }
                        self.doAdditionalPostProcessing()
                        
                    }
                    if currentTStates >= tStatesPerFrame {
                        currentTStates = 0
                        renderFrame()
                    }
                } else {
                    let time = Date().timeIntervalSince1970
                    if (!restricted || frameStarted + 0.02 <= time){
                        frameStarted = time
                        frameEnds = false
                    }
                }
            }
        }
    }
    
    func doAdditionalPreProcessingInternal(){
        
    }
    
    func doAdditionalPostProcessingInternal(){
        if restricted {
            beeper.updateSample(UInt32(currentTStates), beep: clicks)
        }
    }
    
    func runInterupt() {
        if (interupt){
            shouldRunInterupt = true
        }
    }
}
