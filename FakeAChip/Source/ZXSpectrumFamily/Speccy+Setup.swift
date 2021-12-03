//
//  Speccy+Setup.swift
//  Speccy+Setup
//
//  Created by Mike Hall on 24/08/2021.
//

import Foundation

extension Speccy {
    
    
    
    static func getSpectrum48Instance() -> Speccy{
        if let instance = Speccy.instanceSpectrum48 {
            return instance
        }
        Speccy.instanceSpectrum48 = Speccy()
        return Speccy.instanceSpectrum48!
    }
    
    func disengageInternal(){
        pause()
        beeper.stop()
        Speccy.instanceSpectrum48 = nil
        print("Disengaged....")
    }
    
    func pauseInternal() {
        pauseProcessor = true
        restricted = true
        print("Paused")
    }
    
    func resumeInternal() {
        pauseProcessor = false
        restricted = true
        print("True Speed")
    }
    
    func fastInternal() {
        pauseProcessor = false
        restricted = false
        print("Fast forward")
        //       fatalError()
    }
    
    func rebootInternal() {
        pause()
        PC = 0x00
        data?.headerData.tapePlayerData.tape = nil
        resume()
    }
    
    func initialiseRegistersInternal(header: RegisterModel){
        testRegisters()
        aR().ld(value:header.primary.registerA)
        Z80.fR().ld(value:header.primary.registerF)
        bR().ld(value:header.primary.registerB)
        cR().ld(value:header.primary.registerC)
        dR().ld(value:header.primary.registerD)
        eR().ld(value:header.primary.registerE)
        hR().ld(value:header.primary.registerH)
        lR().ld(value:header.primary.registerL)
        
        BC2 = (UInt16(header.swap.registerB) * UInt16(256)) + UInt16(header.swap.registerC) //.ld(value:header.registerPair(l: header.swap.registerC, h: header.swap.registerB))
        DE2 = (UInt16(header.swap.registerD) * UInt16(256)) + UInt16(header.swap.registerE) //.ld(value:header.registerPair(l: header.swap.registerE, h: header.swap.registerD))
        HL2 = (UInt16(header.swap.registerH) * UInt16(256)) + UInt16(header.swap.registerL) //.ld(value:header.registerPair(l: header.swap.registerL, h: header.swap.registerH))
        AF2 = (UInt16(header.swap.registerA) * UInt16(256)) + UInt16(header.swap.registerF) //.ld(value:header.registerPair(l: header.swap.registerF, h: header.swap.registerA))
        
        SP = header.registerSP
        ix().ld(value: header.registerIX)
        iy().ld(value: header.registerIY)
        
        I = header.registerI //.ld(value: header.registerI)
        R = header.registerR //.ld(value: header.registerR)
        
        interuptMode = header.interuptMode
        interupt = header.interuptEnabled
        interupt2 = interupt
        
        if (header.shouldReturn){
            ret()
            initPc = PC
        } else {
            PC = header.registerPC
            initPc = PC
        }
        pagingByte = header.ramBankSetting
        updateBorder(header.borderColour)
    }
    
//    func update(){
//        AF.inc()
//        if AF.value() == 0x00 {
//            BC.inc()
//            if BC.value() == 0x00 {
//                DE.inc()
//                if DE.value() == 0x00 {
//                    HL.inc()
//                    if HL.value() == 0x00 {
//                        IX.inc()
//                        if IX.value() == 0x00 {
//                            IY.inc()
//                        }
//                    }
//                }
//            }
//        }
//    }
}
