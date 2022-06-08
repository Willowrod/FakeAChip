//
//  FakeAChipData.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import Foundation
import UIKit
import SwiftUI

protocol CoreDelegate {
    func keyboardInteraction(key: Int, pressed: Bool)
    func keyboardInteraction(bank: Int, bit: Int, pressed: Bool)
    func joystickInteraction(key: Int, pressed: Bool)
}

class FakeAChipData: ObservableObject, DisassemblyDelegate, HeaderDelegate {
    
    let supportedComputers: [ComputerModel] = [.Sinclair_Spectrum_48K, .Sinclair_Spectrum_128K]
    
    var delegate: CoreDelegate?
    
    var currentComputerInstance: CPU = EmptyCPU() // = Speccy.instance
    
    var headerData = HeaderData()
    
    var disassemblyData = DisassemblyData()
    
    var emulatorData = EmulatorData()
    
    var diagnosticData = DiagnosticData()
    
    @Published var host: HostSystem
    
    @Published var registerPairs: RegisterSetModel = RegisterSetModel(registerPairs: [])
    
    @Published var vdu: VDU = VDU(screen: ZXBitmap(width: 1, height: 1, color: Color.white)){
        didSet{
            frames += 1
            let timeNow = Date().timeIntervalSince1970
            if timeNow > time + 1.0 {
                seconds += 1
                time = timeNow
//                debugModel = DebugModel(fps: frames / seconds)
                headerData.debugModel = DebugModel(fps: frames)
                frames = 0
            }
        }
    }
    
    @Published var borderColour: Color = Color.white
    
    // Debug bits
    
    var time = Date().timeIntervalSince1970
    var frames = 0
    var seconds = 0
    
    init(_ host: HostSystem) {
        self.host = host
        headerData.delegate = self
        changeEnvironment(model: .Sinclair_Spectrum_48K)
    }

    init(_ host: HostSystem, isMock: Bool) {
        self.host = host
        headerData.delegate = self
 //       changeEnvironment(model: .Sinclair_Spectrum_48K)
    }
    
    func changeEnvironment(model: ComputerModel){
        if supportedComputers.contains(model){
            headerData.emulatedSystem = model
            bootNewSystem(model: model)
        } else {
            print ("\(model.rawValue) is not currently supported")
        }
    }
    
    func bootNewSystem(model: ComputerModel){
        currentComputerInstance.stopProcessing()
        switch model {
        case .Sinclair_Spectrum_48K:
            currentComputerInstance = Speccy.getSpectrum48Instance()
            delegate = currentComputerInstance
        case .Sinclair_Spectrum_128K:
            currentComputerInstance = Speccy128.getSpectrum128Instance()
            delegate = currentComputerInstance
        default:
            currentComputerInstance = Speccy.getSpectrum48Instance()
            delegate = currentComputerInstance
        }
        currentComputerInstance.addSettings(self)
        currentComputerInstance.startProcessing()
    }
    
    func disassemble(_ data: [UInt8], knownJumpPoints: [UInt16] = [], fromPC: Int){
        _ = Z80Disassembler.init(withData: data, knownJumpPoints: knownJumpPoints, fromPC: fromPC, delegate: self)
        disassemblyData.disassembly.snapshot = currentComputerInstance.dumpSnapshot()
    }
    
    func disassemblyComplete(disassembly: DisassemblyModel) {
        disassemblyData.disassembly = disassembly
    }
    
    func keyboardInteraction(key: Int, pressed: Bool){
        delegate?.keyboardInteraction(key: key, pressed: pressed)
    }
    
    func joyStickInteraction(key: Int, pressed: Bool){
        delegate?.joystickInteraction(key: key, pressed: pressed)
    }
    
    func keyboardInteraction(bank: Int, bit: Int, pressed: Bool){
        delegate?.keyboardInteraction(bank: bank, bit: bit, pressed: pressed)
    }
    
    func saveSnapshot() {

    }
    
    func loadSnapshot() {
        
    }
    
    func logToScreen(log: String) {
        diagnosticData.addLog(itemToLog: log)
    }

}
