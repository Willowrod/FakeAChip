//
//  CPU.swift
//  FakeAChip
//
//  Created by Mike Hall on 16/03/2021.
//

import Foundation

//protocol CPUDelegate {
//    func updateView(bitmap: ZXBitmap?)
//    func updateDebug(line: UInt16)
//    func updateRegisters()
//    func updateBorder(colour: ZXColor)
//    func updateTitle(title: String)
////    func updateCodeByteModel(model: [CodeByteModel])
//}

class CPU: CoreDelegate {
    
    static var instance: CPU? = nil
    
    var data: FakeAChipData? = nil
    
    var jumpPoints: [UInt16] = []
    var memory: [[UInt8]] = []
    
    var ramUpdated = false
    
    var testMode = false
    
    var processing = false
    
    var instructionCompleted = true
    
    // Registers
    var spareRegister: Register = Register(value: 0x00, name: "Spare")
    
  //  var sparePair: UInt16 = 0x0
    
    
    // Processor
    var PC: UInt16 = 0
    var halt = false
    
    // Delegate
//    var delegate: CPUDelegate?
    
    // Debugging
    var breakPoints: Array<UInt16> = []
    var shouldRunInterupt = false
    var shouldBreak = false
    var shouldStep = false
    var shouldForceBreak = false
    
    func disengage(){
        
    }
    
    func process(){
        
    }
    
    func allocateMemory(){
        
    }
    
    func load(file: String, path: String? = nil){
        
    }
    
    func findRam(data:[UInt8]) -> String{
        return "00"
    }
    
    func decRam(location: Int){
    }
    
    func incRam(location: Int){
    }
    
    func ldRam(location: Int, value: UInt8){
    }
    
    func ldRam(location: Int, value: UInt16){
        ldRam(location: location, value: value.lowByte())
        ldRam(location: location &+ 1, value: value.highByte())
    }
    
    func ldRam(location: UInt16, value: UInt8){
        ldRam(location: Int(location), value: value)
    }
    
    func ldRam(location: UInt16, value: UInt16){
        ldRam(location: Int(location), value: value)
    }
    
    func ldRam(registerPair: RegisterPair, value: UInt8) {
        return ldRam(location: registerPair.value(), value: value)
    }
    
    func ldRam(registerPair: RegisterPair, value: UInt16) {
        return ldRam(location: registerPair.value(), value: value)
    }
    
    func fetchRam(location: Int) -> UInt8 {
        return 0x00
    }
    
    func fetchRamWord(location: Int) -> UInt16 {
        return 0x00
    }
    
    func fetchRam(location: UInt16) -> UInt8 {
        return fetchRam(location: Int(location))
    }
    
    func fetchRamWord(location: UInt16) -> UInt16 {
        return fetchRamWord(location: Int(location))
    }
    
    func fetchRam(registerPair: RegisterPair) -> UInt8 {
        return fetchRam(location: registerPair.value())
    }
    
    func fetchRamWord(registerPair: RegisterPair) -> UInt16 {
        return fetchRamWord(location: registerPair.value())
    }
    
    func writeCodeBytes(){
        
    }
    
    func memoryDump(withRom: Bool = true) -> [UInt8] {
        return []
    }
    
//    func usingRom() -> ComputerModel {
//        return .ZXSpectrum_48K
//    }
    
    func pause(){
        
    }
    
    func resume() {
        
    }
    
    func addSettings(_ data: FakeAChipData){
        self.data = data
    }
    
    
    func keyboardInteraction(key: Int, pressed: Bool) {
    }
    
    
    func keyboardInteraction(bank: Int, bit: Int, pressed: Bool) {
    }
    
    
    func joystickInteraction(key: Int, pressed: Bool){
        
    }

    func startProcessing() {
        
    }
    
    func stopProcessing() {
        
    }
    
    func download() {
        
    }
    
    func download(url: String) {
        
    }
    
    func reboot() {
        
    }
    
    func fast() {
        
    }
    
    func startLoadingProcess() {
        
    }
    
    func saveSnapshot() {
        
    }
    
    func dumpSnapshot() -> String {
        return "DumpSnapshot required overriding"
    }
    
    func importDisassembly() {
        
    }
    
    func loadEmulation() {
        
    }
    
    func saveEmulation() {
        
    }
}
