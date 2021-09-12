//
//  MOS6502.swift
//  MOS6502
//
//  Created by Mike Hall on 10/09/2021.
//

import Foundation

class MOS6502: CPU {
    static var P: FlagRegister = FlagRegister(value: 0x00, name: "P")
    static var A: Accumilator = Accumilator(value: 0x00, name: "A")
    var SP: UInt8 = 0
    var X: Register = Register(value: 0x00, name: "X")
    var Y: Register = Register(value: 0x00, name: "Y")
    var pagingByte: UInt8 = 0
    let tStatesPerFrame = 69888
    var currentTStates = 0
    var frameEnds = true
    var frameStarted: TimeInterval = Date().timeIntervalSince1970
    var flashCount = 0
    var flashOn = false
    var stackSize = 0
    var pauseProcessor = false
    var clicks: UInt8 = 0
    
    override init() {
        super.init()
        allocateMemory()
        breakPoints = Array()
        PC = 0
        SP = 0
        

        
    }
    
    func accumilator() -> Accumilator{
        return MOS6502.A
    }
    
    static func flag() -> Base8BitRegister{
        return MOS6502.P
    }
    
    func aR() -> Accumilator{
        return MOS6502.A
    }
    
    static func pR() -> Base8BitRegister{
        return MOS6502.P
    }
    
    func a() -> UInt8{
        return MOS6502.A.value()
    }
    
    func f() -> UInt8{
        return MOS6502.P.value()
    }
    
    func x() -> UInt8{
        return X.value()
    }
    
    func y() -> UInt8{
        return Y.value()
    }

    
    func xR() -> Register{
        return X
    }
    
    func yR() -> Register{
        return Y
    }
    
    func testRegisters(){
        
    }
    
    func exchange(working: RegisterPair, spare: RegisterPair){
        let sparePair = RegisterPair("Spare", pair: working, flag: MOS6502.P)
    //    sparePair.swap(spare: working)
        working.swap(spare: spare)
        spare.swap(spare: sparePair)
    }
    
       
       func writeRAMBanks(dataModel: [[UInt8]]){
           
       }
    
    func writeRAM(dataModel: Array<UInt8>, startAddress: Int = 0){
        
    }
    
    func renderFrame(){

    }
    
    func blitScreen(){
    }
    
    func performIn(port: UInt8, map: UInt8, destination: Register){
       
    }
    
    func performOut(port: UInt8, map: UInt8, source: Register) {
       
    }
    
    func instructionComplete(states: Int, length: UInt16 = 1) {
        currentTStates += states
        PC = PC &+ length
    }
    
    func call(location: UInt16, length: UInt16 = 1){
        PC = PC &+ length
        push(value: PC)
        jump(location: location)
    }
    
    func jump(location: UInt16){
        if !jumpPoints.contains(location) {
            jumpPoints.append(location)
        }
        PC = location
    }
    
    func push(value: UInt16){
//        SP = SP &- 2
//        ldRam(location: SP, value: value)
//        stackSize += 1
    }
    
    func pop() -> UInt16 {
//        let value = fetchRamWord(location: SP)
//        stackSize -= 1
//        SP = SP &+ 2
//        return value
        return 0x00
    }
    
    func ret(){
        PC = pop()
    }

    
    func relativeJump(twos: UInt8) {
        PC = PC &+ 2
        let subt = twos.isSet(bit: 7)
        let comp = twos.twosCompliment()
        if subt{
            PC = PC &- UInt16(comp)
        } else {
            PC = PC &+ UInt16(twos)
        }
    }
    
    func iYOffset(twos: UInt8) -> UInt16 {
//        let subt = twos.isSet(bit: 7)
//        let comp = twos.twosCompliment()
//        if subt{
//            return iy().value() &- UInt16(comp)
//        } else {
//            return iy().value() &+ UInt16(twos)
//        }
        return 0x00
    }
    
}
