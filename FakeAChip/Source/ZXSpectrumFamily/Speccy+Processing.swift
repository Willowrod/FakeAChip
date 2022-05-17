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
        while processing {
            framePair.inc()
            if !pauseProcessor {
                if (!frameEnds) {
                    if (shouldRunInterupt){
// Run interupt (if enabled) after every frame
                        interupt = false
                        interupt2 = false
                        push(value: PC)
                        switch interuptMode {
                        case 0:
                            PC = 0x0066
                        case 1:
                            PC = 0x0038
                        default:
                            let intAddress = (UInt16(I) * 256) + UInt16(R)
                            PC = fetchRamWord(location: intAddress)
                            
                        }
                        halt = false
                        shouldRunInterupt = false
                    }
                    if (halt){
// NOP until next interupt
                        instructionComplete(states: 4, length: 0)
                    } else {
// Actual processor
                        // TODO: checkForBreakPoint()
                        thisPC = PC
                        let byte = fetchRam(location: PC)
                        self.doAdditionalPreProcessing()
                            opCode(byte: byte)
                        self.doAdditionalPostProcessing()
                    }
                    if currentTStates >= tStatesPerFrame {
// Render screen after TStates max reached
                        currentTStates = 0
                        renderFrame()
                    }
                } else {
// Wait for frame to elapse
                    let time = Date().timeIntervalSince1970
                    if (restricted && frameStarted + 0.02 <= time){
                        frameStarted = time
                        frameEnds = false
                    } else if !restricted && !opcodeDebug {
                        frameStarted = time
                        frameEnds = false
                    } else if !restricted && opcodeDebug && frameStarted + 0.005 <= time{
                        frameStarted = time
                        frameEnds = false
                    }
                }
            }
        }
    }
    
    func checkForBreakPoint(){
        shouldBreak = breakPoints.contains(PC) || shouldStep || shouldForceBreak
        if (shouldBreak){
            DispatchQueue.main.sync {
//                delegate?.updateRegisters()
//                delegate?.updateDebug(line: PC)
            }
            while shouldBreak {
            }
        }
        shouldForceBreak = false
    }
    
    func resetRegisters(){
        
            HL2 = 0x0
        BC2 = 0x0
        DE2 = 0x0
        HL.ld(word: 0x0)
        BC.ld(word: 0x0)
        DE.ld(word: 0x0)
        AF.ld(value: 0x0)
    }
    
    func dumpRegisters(){
                                    print ("AF: \(af().value().hex()) '\(af2().value().hex())")
                                    print ("BC: \(bc().value().hex()) '\(bc2().value().hex())")
                                    print ("DE: \(de().value().hex()) '\(de2().value().hex())")
                                    print ("HL: \(hl().value().hex()) '\(hl2().value().hex())")
    }
    
    func doAdditionalPreProcessingInternal(){
        //                                                if PC == 0x9c26 {
        //                                                    print("Breaking here -  A: \(a().hex()) F: (\(String(f(), radix: 2))) HL: \(String(HL.value(), radix: 16))  BC: \(String(BC.value(), radix: 16)) DE: \(String(DE.value(), radix: 16))")
        //                                                }
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
