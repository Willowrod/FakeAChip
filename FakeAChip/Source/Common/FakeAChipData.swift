//
//  FakeAChipData.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import Foundation
import UIKit

class FakeAChipData: ObservableObject {
    
    
    var delegate: KeyInput?
    
    @Published var host: HostSystem
    @Published var environment: SystemEnvironment = .Disassembly
    var environmentTag: Int = 1 {
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
    @Published var registerPairs: RegisterSetModel = RegisterSetModel(registerPairs: [])
    
    
    @Published var vdu: VDU = VDU(image: UIImage())
    
    init(_ host: HostSystem) {
        self.host = host
    }
}
