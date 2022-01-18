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
                    if (shouldRunInterupt && !isDebugging){
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
                            let intAddress = (UInt16(I.value()) * 256) + UInt16(R.value())
                            PC = fetchRamWord(location: intAddress)
                            if miscDebug {
                                print("IM2 triggered at \(intAddress.hex()) and processes from \(PC.hex())")
                            }
                            
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
                        let byte = fetchRam(location: PC)
                        self.doAdditionalPreProcessing()
                        if PC == 0x2320 {
                            if !isDebugging {
                            isDebugging = true
                                HL2.ld(word: 0x58ee)
                            }
                            dumpRegisters()
                        }
//                        if isDebugging {
////                        if (PC == 0x3071){
////                            print("Pre RRA - A: \(a().hex()) (\(a().bin())) - F: \(f().bin())")
////                         //   dumpRegisters()
////                        }
////                        if (PC == 0x3072){
////                            print("Post RRA - A: \(a().hex()) (\(a().bin())) - F: \(f().bin())")
////                         //   dumpRegisters()
////                        }
////                        if (PC == 0x33c8){
////                            print("33c8")
////                            dumpRegisters()
////                        }
//                        }
                        if isDebugging {
                            //opCodeDebug(byte: byte)
                            print("\(PC.hex()) - \(a().hex()) - F:\(f().bin()) - BC:\(BC.hex()) - DE:\(DE.hex()) - HL:\(HL.hex()) - BC2:\(BC2.hex()) - DE2:\(DE2.hex()) - HL2:\(HL2.hex()) - SP:\(SP.hex())")
                            opCode(byte: byte)
                        } else {
                            opCode(byte: byte)
                        }
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
                    if (!restricted || frameStarted + 0.02 <= time){
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
        
            HL2.ld(word: 0x0)
        BC2.ld(word: 0x0)
        DE2.ld(word: 0x0)
        HL.ld(word: 0x0)
        BC.ld(word: 0x0)
        DE.ld(word: 0x0)
            AF.ld(word: 0x0)
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
