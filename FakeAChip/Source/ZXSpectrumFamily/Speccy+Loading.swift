//
//  Speccy+Loading.swift
//  Speccy+Loading
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
import ZXDB_SDK
import Zip
import ZXLoaderSDK

extension Speccy {
//    func downloadInternal() {
//
//    }
    
    func downloadInternal(url: String) {
        guard let dlURL = URL(string: url) else {
            return
        }
        Network.common.download(url: dlURL) { (path: String?, error: ZXDBError?) in
            if error == nil {
                print("Path: \(path!)")
                self.unzipFile(path: path)
            } else {
                print("Error: \(error!.getAllMessages())")
            }
        }
    }
    
    func loadInternal(file: String, path: String? = nil){
        
        pauseProcessor = true
        interupt = false
        var fileStruct = file.split(separator: ".")
        
        if fileStruct.count > 1{
            let fileType = fileStruct.last
            fileStruct.removeLast()
            let name = fileStruct.joined(separator: ".")
            switch fileType {
            case "sna":
                loadSnapshot(sna: name)
            case "z80":
                loadZ80(z80Snap: name, path: path)
            case "zip":
                unzipFile(file: file)
            case "tzx":
                importTZX(tzxFile: file, path: path)
            default:
                print("Unknown file type = \(file)")
            }
        } else {
            print("Unknown or bad file = \(file)")
        }
        jumpPoints.removeAll()
        interupt = true
        pauseProcessor = false
        
    }
    
    func unzipFile(file: String){
        let fm = FileManager.default
        do {

            let filePath = Bundle.main.url(forResource: file.replacingOccurrences(of: ".zip", with: ""), withExtension: "zip")!
            let unzipDirectory = try Zip.quickUnzipFile(filePath)
            let items = try fm.contentsOfDirectory(atPath: unzipDirectory.path)
            if (items.count > 0){
                load(file: items[0], path: unzipDirectory.path)
            }
        }
        catch {
            print("Something went wrong")
        }
    }
    
    func unzipFile(path: String?){
        let fm = FileManager.default
        do {
            if let myPath = path {
                guard let url = URL(string: myPath) else {
                    print("Error Unzipping")
                    return
                }
                let unzipDirectory = try Zip.quickUnzipFile(url)
                let items = try fm.contentsOfDirectory(atPath: unzipDirectory.path)
                if (items.count > 0){
                    load(file: items[0], path: unzipDirectory.path)
                }
            }
        }
        catch {
            print("Something went wrong")
        }
    }
    
    func loadSnapshot(sna: String){
        let snapShot = SNAFormat(fileName: sna)
        //writeRAM(dataModel: snapShot.ramBanks[0], startAddress: 16384)
        var count = 0
        snapShot.ramBanks[0].forEach{ byte in
            ram[count] = byte
            count += 1
        }
        initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
    }
    
    
    func loadZ80Internal(z80Snap: String, path: String? = nil){
        let snapShot =  Z80Format(fileName: z80Snap, path: path) // Z80Format(fileName: z80Snap, path: path)
        let banks = snapShot.retrieveRam()
        if (banks.count > 0){
            if banks.count == 1{
                var count = 0
                banks[0].forEach{ byte in
                    if count < ram.count {
                        // print ("count: \(count) - banks[0].count: \(banks[0].count)")
                        ram[count] = byte
                        count += 1
                    } else {
                        print ("RAM overflow!")
                    }
                }
                print("RAM import complete")
            }
        }
        
        initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
        spareRegister = pagingByte //.ld(value: pagingByte)
        performOut(port: 0xfd, map: 0x74, source: .SPARE)
    }
    
    func loadZ80Internal(data: String){
        let snapShot = Z80Format(data: data)
        let banks = snapShot.retrieveRam()
        if (banks.count > 0){
            if banks.count == 1{
                var count = 0
                banks[0].forEach{ byte in
                    if count < ram.count {
                        ram[count] = byte
                        count += 1
                    } else {
                        print ("RAM overflow!")
                    }
                }
                print("RAM import complete")
            }
        }
        
        initialiseRegisters(header: snapShot.registers)
        header = snapShot.registers
        spareRegister = pagingByte //.ld(value: pagingByte)
        performOut(port: 0xfd, map: 0x74, source: .SPARE)
    }
    
    func importTZX(tzxFile: String, path: String? = nil){
        let tzx = TZXFormat.init(filename: tzxFile, path: path)
        loadingTStates = 0
        tzx.setControlDelegate(del: data?.headerData.tapePlayerData)
        data?.headerData.tapePlayerData.tape = tzx
    }

    func importTAP(tapFile: String, path: String? = nil){
        let tap = TAPFormat.init(filename: tapFile, path: path)
        loadingTStates = 0
        tap.setControlDelegate(del: data?.headerData.tapePlayerData)
        data?.headerData.tapePlayerData.tape = tap
    }
    
    
    
    func startLoadingProcessInternal() {
        pause()
        ram = Array(repeating: 0x00, count: 0xC000)
        ldRam(location: UInt16(0x5c74), value: UInt8(0xe1))
        ldRam(location: UInt16(0x2596), value: UInt16(0x221c))
        BC.ld(value: 0x0022)
        DE.ld(value: 0x5c92)
        HL.ld(value: 0x2596)
        PC = 0x0605
        resume()
    }
   
    func writeZ80Internal() {
        
        pause()
        let snap: Z80Type1FormatWrite = Z80Type1FormatWrite()
        snap.add(a())
        snap.add(f())
        snap.add(BC.value())
        snap.add(HL.value())
        snap.add(PC)  //(UInt16(0x00))
        snap.add(SP)
        snap.add(I)
        snap.add(R)
        var bit12: UInt8 = 0x00
        if R.set(bit: 7) != 0 {
            bit12 = 0x01
        }
        bit12 = bit12 & (borderColourInt << 1)
        snap.add(bit12) // Bit 12
        snap.add(DE.value())
        snap.add(BC2)  // Bit 15
        snap.add(DE2)
        snap.add(HL2)  // Bit 19
        snap.add(AF2.highByte())
        snap.add(AF2.lowByte())
        snap.add(IY.value())// Bit 23
        snap.add(IX.value())
        if interupt {           // Bit 27
            snap.add(UInt8(0x01))
        } else {
            snap.add(UInt8(0x00))
        }
        snap.add(UInt8(0x00))          // bit 29
        snap.add(UInt8(interuptMode))  // Bit 28

        
        snap.add(ram)
        
        currentSnapshot = snap.write()
    }
    
    func importSpectrumDisassemblyInternal() {
        
        let filename = getPath(forFile: "disassembly.json")
        do {
            guard let disassembly = FileManager.default.contents(atPath: filename.path) else {
                print("Failed to read data")
                return
            }
            let json = try JSONDecoder().decode(DisassemblyModel.self, from: disassembly) //JSONEncoder().encode(self)
       
            currentSnapshot = json.snapshot
            loadZ80Internal(data: currentSnapshot)
            data?.disassemblyData.disassembly = json
            resume()
            
            } catch {
                // contents could not be loaded
            }
    }
    
     func loadEmulationInternal() {
         
         data?.offerLoad = true
    }
    
     func saveEmulationInternal() {
            let snappy = dumpSnapshot()
         let screenShot = dumpScreenShot()
         data?.persistentController.saveSnapshot(name:"\(Date.timeIntervalSinceReferenceDate)", snapshot: snappy, screenShot: screenShot)
    }

    func saveToDatabaseInternal(name: String, dump: String, screen: String) {
        data?.persistentController.saveSnapshot(name:name, snapshot: dump, screenShot: screen)
    }

    func loadSnapshotInternal(from: String){
        pause()
           loadZ80Internal(data: from)
           resume()
    }
}
