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
    func updateRegister(register: AvailableRegister, value: UInt8)
    func writeOpCodeData(stream: [UInt8], updatefrom: Int)
}

protocol FakeAChipDataDelegate {
    func logToScreen(log: String)
    func currentComputer() -> CPU
    func db() -> PersistenceController
}

class FakeAChipData: ObservableObject, HeaderDelegate, DiagnosticDataDelegate {



    let supportedComputers: [ComputerModel] = [.Sinclair_Spectrum_48K, .Sinclair_Spectrum_128K]
    
    var delegate: CoreDelegate?
    
    var currentComputerInstance: CPU = EmptyCPU()
    
    lazy var headerData = HeaderData(fakeAChip: self, delegate: self)
    
    lazy var disassemblyData: DisassemblyData = DisassemblyData(fakeAChip: self, delegate: self)
    
    var emulatorData = EmulatorData()
    
    lazy var diagnosticData = DiagnosticData(fakeAChip: self, delegate: self)

    lazy var persistentController = PersistenceController.shared

    @AppStorage("computerModel") var currentComputerModel: ComputerModel = .Sinclair_Spectrum_48K
    
    @Published var host: HostSystem
    
    @Published var registerPairs: RegisterSetModel = RegisterSetModel(registerPairs: [])
    
    @Published var vdu: VDU = VDU(screen: ZXBitmap(width: 1, height: 1, color: Colour.white)){
        didSet{
            frames += 1
            let timeNow = Date().timeIntervalSince1970
            if timeNow > time + 1.0 {
                seconds += 1
                time = timeNow
                headerData.debugModel = DebugModel(fps: frames)
                frames = 0
            }
        }
    }
    
    @Published var borderColour: Color = Colour.white

    @Published var offerSave: Bool = false
    @Published var offerLoad: Bool = false


    @Published var isShowingTapeSelector = false
    @Published var showSettings = false

    @Published var processorSpeed = "Unknown"


    // Debug bits
    
    var time = Date().timeIntervalSince1970
    var frames = 0
    var seconds = 0

    
    
    init(_ host: HostSystem) {
        self.host = host
        emulatorData.setDelegate(self)
        changeEnvironment(model: currentComputerModel)
    }

    init(_ host: HostSystem, cpu: CPU) {
        self.host = host
        currentComputerInstance = cpu
    }
    
    func changeEnvironment(model: ComputerModel){
        if supportedComputers.contains(model){
            headerData.emulatedSystem = model
            currentComputerModel = model
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
    
//    func disassemble(_ data: [UInt8], knownJumpPoints: [UInt16] = [], fromPC: Int){
//        _ = Z80Disassembler.init(withData: data, knownJumpPoints: knownJumpPoints, fromPC: fromPC, delegate: self)
//        disassemblyData.disassembly.snapshot = currentComputerInstance.dumpSnapshot()
//        disassemblyData.currentMemory = disassemblyData.disassembly.snapshot.splitToBytesROM(separator: " ")
//    }
//    
//    func disassemblyComplete(disassembly: DisassemblyModel) {
//        disassemblyData.disassembly = disassembly
//    }
    
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

    func updateRegister(register: AvailableRegister, value: UInt8){
        delegate?.updateRegister(register: register, value: value)
    }

    func writeOpCodeData(stream: [UInt8], updatefrom: Int) {
        delegate?.writeOpCodeData(stream: stream, updatefrom: updatefrom)
    }

    func hideSettings() {
        showSettings = false
        currentComputerInstance.resume()
    }
}

extension FakeAChipData: EmulatorDataDelegate {
    func delete(id: String) {
        persistentController.deleteSnapshot(id: id)
    }

    func saveToDatabase(name: String, dump: String, screen: String) {
        currentComputerInstance.saveToDatabase(name: name, dump: dump, screen: screen)
    }

    func load(snapshot: String) {
        currentComputerInstance.loadSnapshot(from: snapshot)
    }

    func resume(){
        currentComputerInstance.resume()
    }
}

extension FakeAChipData: DisassemblyDataDelgate {
    func loadSnapshot(snap: String) {
        currentComputerInstance.loadSnapshot(from: snap)
    }
}

extension FakeAChipData: FakeAChipDataDelegate {
    func currentComputer() -> CPU {
        return currentComputerInstance
    }

    func logToScreen(log: String) {
        diagnosticData.addLog(itemToLog: log)
    }

    func db() -> PersistenceController {
        return persistentController
    }

}
