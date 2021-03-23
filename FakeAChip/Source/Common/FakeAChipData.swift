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
}

class FakeAChipData: ObservableObject {
    
    
    var delegate: CoreDelegate?
    
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
    
    
    
    init(_ host: HostSystem) {
        self.host = host
    }
    
    func keyboardInteraction(key: Int, pressed: Bool){
        delegate?.keyboardInteraction(key: key, pressed: pressed)
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
