//
//  DisassemblyData.swift
//  DisassemblyData
//
//  Created by Mike Hall on 28/08/2021.
//

import Foundation

protocol DisassemblyDataDelgate {
    //func saveDisassembly()
    func loadSnapshot(snap: String)
}

class DisassemblyData: ObservableObject {

    let persistence = PersistenceController.shared

    var delegate: DisassemblyDataDelgate? = nil
    
    var currentSnapshot = ""
    var currentMemory: [UInt8] = []

    var currentDisassembly: Disassembly? = nil
    var currentDisassemblyVersion: DisassemblyVersion? = nil

    @Published var currentMajor: Int = 0
    @Published var currentMinor: Int = 0
    @Published var currentRevision: Int = 0

    @Published var latestVersion: String = ""
    
    @Published var disassembly: DisassemblyModel = DisassemblyModel()

    @Published var offerSaveDisassembly = false
    @Published var offerLoadDisassembly = false
    @Published var offerCreateDisassembly = false


    @Published var disassemblyName = ""

    func currentScreenShot() -> String {
        return currentMemory.toScreenShot()
    }

//    func save() {
//        delegate?.saveDisassembly()
//    }
//
//    func load() {
//        delegate?.loadDisassembly()
//    }

    func loadLatest(_ target: Disassembly) {
        currentDisassembly = target
        currentDisassemblyVersion = persistence.getLatestVersion(target.id!.uuidString)
        loadCurrentDisassembly()
    }

    func fetchLatest(major: Int? = nil, minor: Int? = nil) -> DisassemblyVersion? {
        if let currentDisassembly {
           return persistence.getLatestVersion(currentDisassembly.id!.uuidString)
        }
        return nil
    }

    func loadCurrentDisassembly() {
        if let currentDisassemblyVersion, let data = currentDisassemblyVersion.json?.data(using: .utf8) {
            do{
                let json = try JSONDecoder().decode(DisassemblyModel.self, from: data)
                currentSnapshot = json.snapshot
                delegate?.loadSnapshot(snap: currentSnapshot)
                disassembly = json
            } catch {
                print("Error decoding disassembly - \(error.localizedDescription)")
            }
        }
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

    func getAllDisassemblies() -> [Disassembly]{
       return persistence.getAllDisassemblies()
    }

    func getAllversions(_ forID: String) -> [DisassemblyVersion]{
       return persistence.getAllVersions(forID)
    }
}
