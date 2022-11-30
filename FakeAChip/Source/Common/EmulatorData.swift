//
//  EmulatorData.swift
//  EmulatorData
//
//  Created by Mike Hall on 14/09/2021.
//

import Foundation
import SwiftUI

protocol EmulatorDataDelegate {
    func saveToDatabase(name: String, dump: String, screen: String)
    func load(snapshot: String)
}

class EmulatorData: ObservableObject {

    var delegate: EmulatorDataDelegate? = nil

    @Published var keyboardShowing: Bool = true
    var currentXAxis: Float = 0.0
    var currentYAxis: Float = 0.0
    var currentButtonAValue: Bool = false
    var count = 0
    var emulatorPixels: [Path] = []


// SaveState

    @Published var saveFileScreenShot: String = ""
    var saveFileRamDump: String = ""
    @Published var saveFileName: String = ""
    @Published var offerSave: Bool = false
    @Published var offerLoad: Bool = false


    func setDelegate(_ delegate: EmulatorDataDelegate) {
        self.delegate = delegate
    }

    func save() {
        delegate?.saveToDatabase(name: saveFileName, dump: saveFileRamDump, screen: saveFileScreenShot)
    }

    func load(_ snap: String?){
        if let snap{
            delegate?.load(snapshot: snap)
        }
        offerLoad = false
    }

    func listOfSaves() -> [Snapshot] {
       return PersistenceController.shared.getAllSnapshots()
    }


}
