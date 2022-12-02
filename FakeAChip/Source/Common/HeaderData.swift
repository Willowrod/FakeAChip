//
//  HeaderData.swift
//  FakeAChip
//
//  Created by Mike Hall on 14/06/2021.
//

import Foundation
import SwiftUI

protocol HeaderDelegate {
   func changeEnvironment(model: ComputerModel)
}

class HeaderData: ObservableObject {
    
    var delegate: HeaderDelegate? = nil
    
    var tapePlayerData = TapePlayerData()
    
    var shouldResetPixels = false
    
    @AppStorage("preDebugging") var debugPreProcessing = false
    
    @AppStorage("postDebugging") var debugPostProcessor = false
    
    @AppStorage("memDebugging") var debugMemoryData = false
    
    @AppStorage("miscDebugging") var debugMiscellaneousData = false

    @AppStorage("opcodeDebugging") var debugOpcodes = false
    
    @AppStorage("environment") var environment: SystemEnvironment = .Emulation
    @AppStorage("environmentTag") var environmentTag: Int = 0 {
        didSet {
            switch environmentTag {
            case 0:
                environment = .Emulation
            case 1:
                environment = .Disassembly
            default:
                environment = .Code
            }
            shouldResetPixels = true
        }
    }
    
    
    @Published var debugModel: DebugModel = DebugModel()
    
    @Published var emulatedSystem: ComputerModel = .Sinclair_Spectrum_48K
    
    func changeEnvironment(model: ComputerModel){
        delegate?.changeEnvironment(model: model)
    }
    
}
