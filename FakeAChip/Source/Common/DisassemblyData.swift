//
//  DisassemblyData.swift
//  DisassemblyData
//
//  Created by Mike Hall on 28/08/2021.
//

import Foundation

protocol DisassemblyDataDelgate {
    func saveDisassembly()
    func loadDisassembly()
}

class DisassemblyData: ObservableObject {

    let persistence = PersistenceController.shared

    var delegate: DisassemblyDataDelgate? = nil
    
    var currentSnapShot = ""
    var currentMemory: [UInt8] = []

    var currentDisassembly: Disassembly? = nil
    var currentDisassemblyVersion: DisassemblyVersion? = nil

    @Published var currentMajor: Int = 0
    @Published var currentMinor: Int = 0
    @Published var currentRevision: Int = 0
    
    @Published var disassembly: DisassemblyModel = DisassemblyModel()

    @Published var offerSaveDisassembly = false
    @Published var offerLoadDisassembly = false
    @Published var offerCreateDisassembly = false


    @Published var disassemblyName = ""

    func currentScreenShot() -> String {
        return currentMemory.toScreenShot()
    }

    func save() {
        delegate?.saveDisassembly()
    }

    func load() {
        delegate?.loadDisassembly()
    }

    func create() {
        currentDisassembly = persistence.createDisassembly(name: disassemblyName, snapshot: disassembly.snapshot, screenShot: currentScreenShot())
        createVersion()
    }

    func createVersion() {
        guard let id = currentDisassembly?.id?.uuidString else {
            return
        }
        currentDisassemblyVersion = persistence.createDisassemblyVersion(disassembly: id, major: currentMajor, minor: currentMinor, revision: currentRevision, json: disassembly.toJson())

    }
    
}
