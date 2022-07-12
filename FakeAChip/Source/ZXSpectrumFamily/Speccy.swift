//
//  Speccy.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation
import UIKit
import SwiftUI
import ZXDB_SDK
import GameController
import ZXLoaderSDK

class Speccy: Z80 {
    
    let beeper = ZXBeeper.sharedInstance
    var borderColour: Color = .black
    var borderColourInt: UInt8 = 0x00
    static var instanceSpectrum48: Speccy? = nil
    var shouldRestart = false
    var commandsPerFrame = 0
    var framePair = RegisterPair(highValue: 0x00, lowValue: 0x00, id: -2)
    var edgePair = RegisterPair(highValue: 0x00, lowValue: 0x00, id: -3)
    var rom: [UInt8] = []
    var ram: [UInt8] = []
    var totalRam: UInt16 = 0xffff - 0x4000
    var keyboard: [UInt8] = Array(repeating: 0xFF, count: 8)
    var kempston: UInt8 = 0x00
    var initPc: UInt16 = 0x5B00
    var screenImage = ZXBitmap(width: 256, height: 192, color: ZXColor.blue)
    var cgImage: CGImage? = nil
    var restricted = true
    let alphaInfo = CGImageAlphaInfo.premultipliedLast
    let bytesPerPixel = MemoryLayout<ZXColor>.stride
    var currentSnapshot = ""
    
    override init() {
        super.init()
   //     createScreen()
        loadRom()
        beeper.ticksPerFrame = tStatesPerFrame
        ram = Array(repeating: 0x00, count: 0xC000)
    }
    
    override func disengage(){
        disengageInternal()
    }
    
    override func pause() {
        pauseInternal()
    }
    
    override func resume() {
        resumeInternal()
    }
    
    override func fast() {
        fastInternal()
    }
    
    override func reboot() {
        rebootInternal()
    }
    
    override func findRam(data:[UInt8]) -> String{
      return findRamInternal(data: data)
    }
    
    override func decRam(location: Int){
        decRamInternal(location: location)
    }
    
    override func incRam(location: Int){
        incRamInternal(location: location)
    }
    
    override func ldRam(location: Int, value: UInt8){
        ldRamInternal(location: location, value: value)
    }
    
    override func fetchRam(location: Int) -> UInt8 {
        fetchRamInternal(location: location)
    }
    
    override func fetchRamWord(location: Int) -> UInt16 {
        fetchRamWordInternal(location: location)
    }
    
    override func download() {
        downloadInternal()
    }
    
    override func download(url: String) {
        downloadInternal(url: url)
    }
    
    override func load(file: String, path: String? = nil){
loadInternal(file: file, path: path)
    }
    
    override func startLoadingProcess() {
        startLoadingProcessInternal()
    }
    
    override func startProcessing() {
        startProcessingInternal()
    }
    
    override func stopProcessing() {
        stopProcessingInternal()
    }
    
    override func blitScreen(){
        blitScreenInternal()
    }
    
    override func renderFrame(){
        updateDebugStatus()
        renderFrameInternal()
    }
    
    override func process() async {
        await processInternal()
    }
    
    override func performIn(port: UInt8, map: UInt8, destination: AvailableRegister){
performInInternal(port: port, map: map, destination: destination)
    }
    
    override func performOut(port: UInt8, map: UInt8, source: AvailableRegister) {
     performOutInternal(port: port, map: map, source: source)
    }
    
    override func keyboardInteraction(key: Int, pressed: Bool){
      keyboardInteractionInternal(key: key, pressed: pressed)
    }
    
    
    override func keyboardInteraction(bank: Int, bit: Int, pressed: Bool) {
        keyboardInteractionInternal(bank: bank, bit: bit, pressed: pressed)
    }
    
    override func joystickInteraction(key: Int, pressed: Bool){
joystickInteractionInternal(key: key, pressed: pressed)  
    }
    
    override func initialiseRegisters(header: Z80RegisterSnapshot){
       initialiseRegistersInternal(header: header)
    }
    
    override func memoryDump(withRom: Bool = true) -> [UInt8]{
      memoryDumpInternal(withRom: withRom)
    }
    
    
    
    
    func loadZ80(z80Snap: String, path: String? = nil){
        loadZ80Internal(z80Snap: z80Snap, path: path)
    }
    
    func loadRom(){
        loadRomInternal()
    }
    
    func expandROM(data: String?){
        expandROMInternal(data: data)
    }
    
    func writeROM(dataModel: [UInt8]){
        writeROMInternal(dataModel: dataModel)
    }
    
    func ldRom(location: Int, value: UInt8){
        ldRomInternal(location: location, value: value)
    }
    
    func doAdditionalPreProcessing(){
        doAdditionalPreProcessingInternal()
    }
    
    func doAdditionalPostProcessing(){
        doAdditionalPostProcessingInternal()
    }
    
    override func saveSnapshot() {
        writeZ80Internal()
    }
    
    override func dumpSnapshot() -> String {
        saveSnapshot()
        return currentSnapshot
    }
    
    override func importDisassembly() {
        importSpectrumDisassemblyInternal()
    }

    override func loadEmulation() {
        loadEmulationInternal()
    }
    
    override func saveEmulation() {
        saveEmulationInternal()
    }
    
}
