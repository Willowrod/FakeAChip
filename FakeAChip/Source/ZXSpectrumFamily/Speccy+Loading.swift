//
//  Speccy+Loading.swift
//  Speccy+Loading
//
//  Created by Mike Hall on 23/08/2021.
//

import Foundation
import ZXDB_SDK
import Zip

extension Speccy {
    func downloadInternal() {
        //        guard let url = URL(string: "https://worldofspectrum.net/pub/sinclair/games/a/Airwolf.tzx.zip") else {
        //            return
        //        }
        //        Network.common.download(url: url) { (path: String?, error: ZXDBError?) in
        //            if error == nil {
        //                print("Path: \(path!)")
        //                self.unzipFile(path: path)
        //            } else {
        //                print("Error: \(error!.getAllMessages())")
        //            }
        //        }
        //   if #available(macCatalyst 15.0, *) {
        
        //                  if #available(iOS 15.0, *) {
        //            async {
        //                await asyncDownload()
        //            }
        //        } else {
        //            // Fallback on earlier versions
        //        }
    }
    
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
    
    //func asyncDownload() async {
    //               let availableTitles = try? await ZXDB().asyncSearch("Spellbound")
    //    availableTitles?.forEach { item in
    //        print(item)
    //    }
    //    }
    
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
   //     writeZ80Internal()
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
        //        writeCodeBytes()
    }
    
    
    func loadZ80Internal(z80Snap: String, path: String? = nil){
        let snapShot = Z80Format(fileName: z80Snap, path: path)
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
        spareRegister.ld(value: pagingByte)
        performOut(port: 0xfd, map: 0x74, source: spareRegister)
    }
    
    func loadZ80Internal(data: String){
        let snapShot = Z80Format(data: data)
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
        spareRegister.ld(value: pagingByte)
        performOut(port: 0xfd, map: 0x74, source: spareRegister)
    }
    
    func importTZX(tzxFile: String, path: String? = nil){
        if let filePath = path, filePath.count > 0 {
            let file = "\(filePath)/\(tzxFile)"
            if let contents = NSData(contentsOfFile: file) {
                let tzxData = contents as Data
                let dataString = tzxData.hexString
                let tzx = TZXFormat.init(data: dataString)
                loadingTStates = 0
                tzx.setControlDelegate(del: data?.headerData.tapePlayerData)
                data?.headerData.tapePlayerData.tape = tzx
            }
        } else if let filePath = Bundle.main.path(forResource: tzxFile.replacingOccurrences(of: ".tzx", with: ""), ofType: "tzx"){
            print("File found - \(filePath)")
            let contents = NSData(contentsOfFile: filePath)
            let tzxData = contents! as Data
            let dataString = tzxData.hexString
            let tzx = TZXFormat.init(data: dataString)
            loadingTStates = 0
            tzx.setControlDelegate(del: data?.headerData.tapePlayerData)
            data?.headerData.tapePlayerData.tape = tzx
        } else {
            print("file not found")
        }
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
        snap.add(PC)
        snap.add(SP)
        snap.add(I.value())
        snap.add(R.value())
        var bit12: UInt8 = 0x00
        if R.value().set(bit: 7) != 0 {
            bit12 = 0x01
        }
        bit12 = bit12 & (borderColourInt << 1)
        snap.add(bit12)
        snap.add(DE.value())
        snap.add(BC2.value())
        snap.add(DE2.value())
        snap.add(HL2.value())
        snap.add(AF2.value().highByte())
        snap.add(AF2.value().lowByte())
        snap.add(IY.value())
        snap.add(IX.value())
        if interupt {
            snap.add(UInt8(0x01))
        } else {
            snap.add(UInt8(0x00))
        }
        snap.add(UInt8(interuptMode))
        snap.add(ram)
        
        currentSnapshot = snap.write()
        
    }
    
    func importSpectrumDisassemblyInternal() {
        
        let filename = getPath(forFile: "disassembly.json")
        do {
            //let contents = try String(contentsOfFile: filename.absoluteString)
            guard let disassembly = FileManager.default.contents(atPath: filename.path) else {
                print("Failed to read data")
                return
            }
               // print(contents)
            let json = try JSONDecoder().decode(DisassemblyModel.self, from: disassembly) //JSONEncoder().encode(self)
       
            currentSnapshot = json.snapshot
            loadZ80Internal(data: currentSnapshot)
            data?.disassemblyData.disassembly = json
            resume()
            
            } catch {
                // contents could not be loaded
            }
        
        
    }
    
    
}
