//
//  Z80.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation
import AVFoundation

//protocol TapeDelegate {
//    func callNextBlock() -> BaseTZXBlock?
//}


class Z80: CPU {
    static var F: FlagRegister = FlagRegister(value: 0x00, name: "F")
    static var A: Accumilator = Accumilator(value: 0x00, name: "A")
    var AF = AFRegisterPair("AF", highValue: 0x00, lowValue: 0x00, id: 0)
    var BC = RegisterPair("BC", highValue: 0x00, lowValue: 0x00, id: 1)
    var DE = RegisterPair("DE", highValue: 0x00, lowValue: 0x00, id: 2)
    var HL = RegisterPair("HL", highValue: 0x00, lowValue: 0x00, id: 3)
    var IX = RegisterPair("IX", highValue: 0x00, lowValue: 0x00, id: 4)
    var IY = RegisterPair("IY", highValue: 0x00, lowValue: 0x00, id: 5)
    var AF2 = RegisterPair("AF2", highValue: 0x00, lowValue: 0x00, id: 6)
    var BC2 = RegisterPair("BC2", highValue: 0x00, lowValue: 0x00, id: 7)
    var DE2 = RegisterPair("DE2", highValue: 0x00, lowValue: 0x00, id: 8)
    var HL2 = RegisterPair("HL2", highValue: 0x00, lowValue: 0x00, id: 9)
    var I: Register = Register(value: 0x00, name: "I")
    var interupt: Bool = true
    var interupt2: Bool = true
    var R: Register = Refresh(value: 0x00, name: "R")
    var SP: UInt16 = 0
    var MEMPTR: UInt16 = 0
    var pagingByte: UInt8 = 0
    var interuptMode = 1
    var screenWriteComplete = true
   // var ram: Array<UInt8> = []
   // var screenBuffer = Bitmap(width: 256, height: 192, color: .white)
    let tStatesPerFrame = 69888
    var currentTStates = 0
    var loadingTStates = 0
    var edges = 0
    var frameEnds = true
    var frameStarted: TimeInterval = Date().timeIntervalSince1970
    var flashCount = 0
    var flashOn = false
    var stackSize = 0
    var pauseProcessor = false
    var clicks: UInt8 = 0
    var header: RegisterModel = RegisterModel()
    
    override init() {
        super.init()
        allocateMemory()
        breakPoints = Array()
        AF = AFRegisterPair(a: Z80.A, f: Z80.F)
        bc().setPairs(h: b(), l: c())
        de().setPairs(h: d(), l: e())
        hl().setPairs(h: h(), l: l())
        iy().ld(value: 23610)
        PC = 0
        SP = 0
        

        
    }
    
    func accumilator() -> Accumilator{
        return Z80.A
    }
    
    static func flag() -> Register{
        return F
    }
    
    func aR() -> Accumilator{
        return Z80.A
    }
    
    static func fR() -> Register{
        return F
    }
    
    func hR() -> Register{
        return HL.registerPair.high
    }
    
    func lR() -> Register{
        return HL.registerPair.low
    }
    
    func bR() -> Register{
        return BC.registerPair.high
    }
    
    func cR() -> Register{
        return BC.registerPair.low
    }
    
    func dR() -> Register{
        return DE.registerPair.high
    }
    
    func eR() -> Register{
        return DE.registerPair.low
    }
    
    func a() -> UInt8{
        return Z80.A.value()
    }
    
    func f() -> UInt8{
        return Z80.F.value()
    }
    
    func h() -> UInt8{
        return HL.high()
    }
    
    func l() -> UInt8{
        return HL.low()
    }
    
    func b() -> UInt8{
        return BC.high()
    }
    
    func c() -> UInt8{
        return BC.low()
    }
    
    func d() -> UInt8{
        return DE.high()
    }
    
    func e() -> UInt8{
        return DE.low()
    }
    
    func af() -> RegisterPair{
        return AF
    }
    
    func hl() -> RegisterPair{
        return HL
    }
    
    func bc() -> RegisterPair{
        return BC
    }
    
    func de() -> RegisterPair{
        return DE
    }
    
    func af2() -> RegisterPair{
        return AF2
    }
    
    func hl2() -> RegisterPair{
        return HL2
    }
    
    func bc2() -> RegisterPair{
        return BC2
    }
    
    func de2() -> RegisterPair{
        return DE2
    }
    
    func ix() -> RegisterPair{
        return IX
    }
    
    func iy() -> RegisterPair{
        return IY
    }
    
    func testRegisters(){
        
    }
    
    func exchange(working: RegisterPair, spare: RegisterPair){
        let sparePair = RegisterPair("Spare", pair: working)
    //    sparePair.swap(spare: working)
        working.swap(spare: spare)
        spare.swap(spare: sparePair)
    }
    
    func exchangeAll(){
        exchange(working: BC, spare: BC2)
        exchange(working: DE, spare: DE2)
        exchange(working: HL, spare: HL2)
    }
    
    func initialiseRegisters(header: RegisterModel){
        
    }
    
    
       
       func writeRAMBanks(dataModel: [[UInt8]]){
   print("Writing nothing to 128K RAM....")
       }
    
    func writeRAM(dataModel: Array<UInt8>, startAddress: Int = 0){
print("Writing nothing to RAM....")
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
        if (states == 0) {
            print("That ain't right!")
        }
        currentTStates += states
        loadingTStates += states
        PC = PC &+ length
    }
    
    func call(location: UInt16, length: UInt16 = 1){
        PC = PC &+ length
        push(value: PC)
        //PC = location
        jump(location: location)
    }
    
    func jump(location: UInt16){
        if !jumpPoints.contains(location) {
            jumpPoints.append(location)
        }
        PC = location
    }
    
    func push(value: UInt16){
        SP = SP &- 2
        ldRam(location: SP, value: value)
        stackSize += 1
    }
    
    func pop() -> UInt16 {
        let value = fetchRamWord(location: SP)
        stackSize -= 1
        SP = SP &+ 2
        return value
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
        let subt = twos.isSet(bit: 7)
        let comp = twos.twosCompliment()
        if subt{
            return iy().value() &- UInt16(comp)
        } else {
            return iy().value() &+ UInt16(twos)
        }
    }
    
}
