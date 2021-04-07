//
//  FakeAChipData.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import Foundation
import UIKit

protocol CoreDelegate {
    func keyboardInteraction(key: Int, pressed: Bool)
    func keyboardInteraction(bank: Int, bit: Int, pressed: Bool)
    func joystickInteraction(key: Int, pressed: Bool)
}

class FakeAChipData: ObservableObject, DisassemblyDelegate {
    
    let supportedComputers: [ComputerModel] = [.Sinclair_Spectrum_48K, .Sinclair_Spectrum_128K]
    
    var delegate: CoreDelegate?
    var isShowingSettings = false
    
    var currentComputerInstance: CPU = EmptyCPU() // = Speccy.instance
    
    @Published var emulatedSystem: ComputerModel = .Sinclair_Spectrum_48K
    
    @Published var host: HostSystem
    @Published var environment: SystemEnvironment = .Emulation
    var environmentTag: Int = 0 {
        didSet {
            switch environmentTag {
            case 0:
                environment = .Emulation
            case 1:
                environment = .Disassembly
            default:
                environment = .Code
            }
        }
    }
    
    @Published var disassembly: DisassemblyModel = DisassemblyModel()
    
    
    @Published var registerPairs: RegisterSetModel = RegisterSetModel(registerPairs: [])
    
    
    @Published var vdu: VDU = VDU(image: UIImage()){
        didSet{
            frames += 1
            let timeNow = Date().timeIntervalSince1970
            if timeNow > time + 1.0 {
                seconds += 1
                time = timeNow
                debugModel = DebugModel(fps: frames / seconds)
            }
        }
    }
    
    // Debug bits
    
    var time = Date().timeIntervalSince1970
    var frames = 0
    var seconds = 0
    @Published var debugModel: DebugModel = DebugModel()
    
    func changeEnvironment(model: ComputerModel){
        if supportedComputers.contains(model){
        emulatedSystem = model
            bootNewSystem(model: model)
        } else {
            print ("\(model.rawValue) is not currently supported")
        }
    }
    
    func bootNewSystem(model: ComputerModel){
        // Known supported models!
        let oldModel = currentComputerInstance
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
        oldModel.disengage()
    }
    
    func disassemble(_ data: [UInt8], knownJumpPoints: [UInt16] = [], fromPC: Int){
        _ = Z80Disassembler.init(withData: data, knownJumpPoints: knownJumpPoints, fromPC: fromPC, delegate: self)
    }
    
    func disassemblyComplete(disassembly: DisassemblyModel) {
        self.disassembly = disassembly
    }
    
    init(_ host: HostSystem) {
        self.host = host
        changeEnvironment(model: .Sinclair_Spectrum_128K)
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
    
    func listOfGames(extensions: [String]) -> [String] {
        var snapShots: [String] = []
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        do {
            let items = try fm.contentsOfDirectory(atPath: path)

            for item in items {
                for fileExtension in extensions{
                if item.contains(".\(fileExtension)") {
                    snapShots.append(item)
                }
                }
            }
            snapShots.sort()
            
        } catch {
            // failed to read directory – bad permissions, perhaps?
        }
        return snapShots
    }
}
