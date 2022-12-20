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

class DisassemblyData: ObservableObject, DisassemblyDelegate {

    let fakeAChip: FakeAChipDataDelegate

    let persistence = PersistenceController.shared

    var delegate: DisassemblyDataDelgate? = nil
    
    var currentSnapshot = ""
    var currentMemory: [UInt8] = [] {
        didSet{
            print ("Disassembly RAM updated")
        }
    }

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

    @Published var characterSet = ZXCharacterSet
    @Published var textOffset = 0x20

    @Published var showing: DataType? = nil
     @Published var undefinedDataShownAs: DataType = .UNDEFINED


    @Published var showDisassemblySettings = false

    init(fakeAChip: FakeAChipDataDelegate, delegate: DisassemblyDataDelgate) {
        self.fakeAChip = fakeAChip
        self.delegate = delegate
    }

    func showingValue() -> String {
        if let showing = showing {
            return "Showing \(showing.rawValue.capitalized)"
        }
        return "Showing All"
    }

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
        disassemblyName = target.name ?? ""
        currentDisassemblyVersion = persistence.getLatestVersion(target.id!.uuidString)
//        if let currentDisassemblyVersion {
//
//        }
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
                currentMajor = Int(currentDisassemblyVersion.major)
                currentMinor = Int(currentDisassemblyVersion.minor)
                currentRevision = Int(currentDisassemblyVersion.revision)


                offerLoadDisassembly = false
            } catch {
                print("Error decoding disassembly - \(error.localizedDescription)")
            }
        }
    }

    func create() {
        currentDisassembly = persistence.createDisassembly(name: disassemblyName, snapshot: disassembly.snapshot, screenShot: currentScreenShot())
        createVersion()
    }

    func delete(id: String?) {
        if let id {
            fakeAChip.db().deleteDisassembly(id: id)
        } else {
            logToScreen(log: "Cannot delete disassembly, UUID error")
        }
    }

    func createVersion() {
        guard let id = currentDisassembly?.id?.uuidString else {
            return
        }
        currentDisassemblyVersion = persistence.createDisassemblyVersion(disassembly: id, major: currentMajor, minor: currentMinor, revision: currentRevision, json: disassembly.toJson())
    }

    func createVersion(majo: Int, mino: Int, revi: Int) {
        guard let id = currentDisassembly?.id?.uuidString else {
            return
        }
        currentDisassemblyVersion = persistence.createDisassemblyVersion(disassembly: id, major: majo, minor: mino, revision: revi, json: disassembly.toJson())
        offerSaveDisassembly = false
    }

    func overwrite() {
        guard let version = currentDisassemblyVersion?.id?.uuidString else {
            return
        }
       persistence.updateDisassemblyVersion(version: version, json: disassembly.toJson())
        offerSaveDisassembly = false

    }

    func getAllDisassemblies() -> [Disassembly]{
       return persistence.getAllDisassemblies()
    }

    func getAllversions(_ forID: String) -> [DisassemblyVersion]{
       return persistence.getAllVersions(forID)
    }

    func disassemble(_ data: [UInt8], knownJumpPoints: [UInt16] = [], fromPC: Int){
        _ = Z80Disassembler.init(withData: data, knownJumpPoints: knownJumpPoints, fromPC: fromPC, delegate: self)
        disassembly.snapshot = fakeAChip.currentComputer().dumpSnapshot()
        currentMemory = disassembly.snapshot.splitToBytesROM(separator: " ")
    }

    func disassemblyComplete(disassembly: DisassemblyModel) {
        self.disassembly = disassembly
    }


    func logToScreen(log: String) {
        
    }
}
