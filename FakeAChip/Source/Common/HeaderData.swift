//
//  HeaderData.swift
//  FakeAChip
//
//  Created by Mike Hall on 14/06/2021.
//

import Foundation

protocol HeaderDelegate {
   func changeEnvironment(model: ComputerModel)
}

class HeaderData: ObservableObject {
    
    var delegate: HeaderDelegate? = nil
    
    var tapePlayerData = TapePlayerData()
    
    var isShowingSettings = false
    
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
    
    
    @Published var debugModel: DebugModel = DebugModel()
    
    @Published var emulatedSystem: ComputerModel = .Sinclair_Spectrum_48K
    
    func changeEnvironment(model: ComputerModel){
        delegate?.changeEnvironment(model: model)
    }
    
}
