//
//  Z80.swift
//  inSpeccytor
//
//  Created by Mike Hall on 18/12/2020.
//

import Foundation
import AVFoundation
import ZXLoaderSDK

//protocol TapeDelegate {
//    func callNextBlock() -> BaseTZXBlock?
//}


class Z80: CPU {
    static var F: FlagRegister = FlagRegister(value: 0x00, name: "F")
    static var A: Accumilator = Accumilator(value: 0x00, name: "A")
    var AF = AFRegisterPair(a: A, f: F)
    var BC = RegisterPair(highValue: 0x00, lowValue: 0x00, id: 1)
    var DE = RegisterPair(highValue: 0x00, lowValue: 0x00, id: 2)
    var HL = RegisterPair(highValue: 0x00, lowValue: 0x00, id: 3)
    var IX = RegisterPair(highValue: 0x00, lowValue: 0x00, id: 4)
    var IY = RegisterPair(highValue: 0x00, lowValue: 0x00, id: 5)
//    var AF2 = RegisterPair("AF2", highValue: 0x00, lowValue: 0x00, id: 6)
//    var BC2 = RegisterPair("BC2", highValue: 0x00, lowValue: 0x00, id: 7)
//    var DE2 = RegisterPair("DE2", highValue: 0x00, lowValue: 0x00, id: 8)
//    var HL2 = RegisterPair("HL2", highValue: 0x00, lowValue: 0x00, id: 9)
//    var sparePair = RegisterPair("Spare", highValue: 0x00, lowValue: 0x00, id: 10)
    var AF2: UInt16 = 0x0
     var BC2: UInt16 = 0x0
     var DE2: UInt16 = 0x0
     var HL2: UInt16 = 0x0
     var sparePair: UInt16 = 0x0
    var I: UInt8 = 0x0
    var R: UInt8 = 0x0
    //var I: Register = Register(value: 0x00, name: "I")
    var interupt: Bool = true
    var interupt2: Bool = true
    //var R: Register = Refresh(value: 0x00, name: "R")
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
    var header: Z80RegisterSnapshot = Z80RegisterSnapshot()
    
    var preProcessorDebug = false
    var postProcessorDebug = false
    var memDebug = false
    var miscDebug = false
    
    var isDebugging = false
    
    let tState = Double(1) / Double(3494400)
    
    var currentOpCode = ""
    
    var tick: TimeInterval = 0
    var averageTStateInOp: Double = 0.0
    var goodOps: Int = 0
    
    var thisPC: UInt16 = 0x0000
    
    
    static var sz53pvTable: [UInt8] = []
    static var sz53Table:   [UInt8] = []
    static var parityBit:   [UInt8] = []
    
    static let cBit:     UInt8 = 1 << 0
    static let nBit:     UInt8 = 1 << 1
    static let pvBit:    UInt8 = 1 << 2
    static let threeBit: UInt8 = 1 << 3
    static let hBit:     UInt8 = 1 << 4
    static let fiveBit:  UInt8 = 1 << 5
    static let zBit:     UInt8 = 1 << 6
    static let sBit:     UInt8 = 1 << 7
    
    static let halfCarryAdd:  [UInt8] = [0, 1 << 4, 1 << 4, 1 << 4, 0, 0, 0, 1 << 4]
    static let halfCarrySub:  [UInt8] = [0, 0, 1 << 4, 0, 1 << 4, 0, 1 << 4, 1 << 4]
    static let overFlowAdd:   [UInt8] = [0, 0, 0, 1 << 2, 1 << 2, 0, 0, 0]
    static let overFlowSub:   [UInt8] = [0, 1 << 2, 0, 0, 0, 0, 1 << 2, 0]
    
    
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
        calculateTables()

        
    }
    
    func calculateTables() {
        for ii in 0...255 {
            Z80.sz53Table.append(UInt8(ii) & (Z80.threeBit | Z80.fiveBit | Z80.sBit))
            var j = UInt(ii)
            var parity:UInt8 = 0
            for _ in 0...7 {
                parity = parity ^ UInt8(j) & 1
                j = j >> 1
            }
            
            if parity == 0 {
                Z80.parityBit.append(0)
            } else {
                Z80.parityBit.append(Z80.pvBit)
            }
            
            Z80.sz53pvTable.append(Z80.sz53Table[ii] | Z80.parityBit[ii])
        }
        
        Z80.sz53Table[0]   = Z80.sz53Table[0]   | Z80.zBit
        Z80.sz53pvTable[0] = Z80.sz53pvTable[0] | Z80.zBit
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
    
    func af() -> AFRegisterPair{
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
    
    func af2() -> UInt16{
        return AF2
    }
    
    func hl2() -> UInt16{
        return HL2
    }
    
    func bc2() -> UInt16{
        return BC2
    }
    
    func de2() -> UInt16{
        return DE2
    }
    
    func ix() -> RegisterPair{
        return IX
    }
    
    func iy() -> RegisterPair{
        return IY
    }
    
    func ldA(value: UInt8) {
            AF.accumilator.ld(value: value)
        }

        func ldF(value: UInt8) {
            AF.flag.ld(value: value)
        }

        func ldB(value: UInt8) {
            BC.ldHigh(value: value)
        }

        func ldC(value: UInt8) {
            BC.ldLow(value: value)
        }

        func ldD(value: UInt8) {
            DE.ldHigh(value: value)
        }

        func ldE(value: UInt8) {
            DE.ldLow(value: value)
        }

        func ldH(value: UInt8) {
            HL.ldHigh(value: value)
        }

        func ldL(value: UInt8) {
            HL.ldLow(value: value)
        }
    
    func testRegisters(){
        
    }
    
    func exchangeAF(){
            sparePair = AF.value()
            AF.ld(value: AF2)
            AF2 = sparePair
        }
    
    func exchange(working: RegisterPair, spare: RegisterPair){
        sparePair =  working.value()
        working.ld(pair: spare)
        spare.ld(value: sparePair)
    }
    
    func exchangeAll(){
//        exchange(working: BC, spare: BC2)
//        exchange(working: DE, spare: DE2)
//        exchange(working: HL, spare: HL2)
        sparePair = BC.value()
               BC.ld(value: BC2)
               BC2 = sparePair

                   sparePair = DE.value()
                   DE.ld(value: DE2)
                   DE2 = sparePair

                   sparePair = HL.value()
                   HL.ld(value: HL2)
                   HL2 = sparePair
    }
    
    func initialiseRegisters(header: Z80RegisterSnapshot){
        
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
    
    func performIn(port: UInt8, map: UInt8, destination: AvailableRegister){
       
    }
    
    func performOut(port: UInt8, map: UInt8, source: AvailableRegister) {
       
    }
    
    func instructionComplete(states: Int, length: UInt16 = 1) {
        if (states == 0) {
            print("That ain't right!")
        }
        let now = CFAbsoluteTimeGetCurrent()//Date().timeIntervalSince1970
        averageTStateInOp = (now - tick) / Double(states)
//        if averageTStateInOp > tState {
//            print
//        }
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
    
    func fetchRegisterValue(register: AvailableRegister) -> UInt8 {
            switch register {
            case .A:
                return AF.accumilator.value()
            case .F:
                return AF.flag.value()
            case .B:
                return BC.high()
            case .C:
                return BC.low()
            case .D:
                return DE.high()
            case .E:
                return DE.low()
            case .H:
                return HL.high()
            case .L:
                return HL.low()
            case .SPARE:
                return spareRegister
            default:
                return 0x00
            }
        }
    
    func updateDebugStatus() {
        if let data = data {
            preProcessorDebug = data.headerData.debugPreProcessing
            postProcessorDebug = data.headerData.debugPostProcessor
            memDebug = data.headerData.debugMemoryData
            miscDebug = data.headerData.debugMiscellaneousData
            isDebugging = preProcessorDebug || postProcessorDebug || memDebug || miscDebug
        }
    }
    
}
