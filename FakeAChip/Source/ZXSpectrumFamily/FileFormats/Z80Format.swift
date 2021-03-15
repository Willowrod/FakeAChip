//
//  Z80Format.swift
//  inSpeccytor
//
//  Created by Mike Hall on 17/01/2021.
//
enum ZXZ80HardwareMode {
    case ZX48, ZX128, ZX128P2, ZX128P2A, ZX128P3, SAMRAM, UNSUPPORTED, UNKNOWN
}

import Foundation
class Z80Format: BaseFileFormat {
    var snaData: [UInt8] = []
    var hasCompressedData = false
    var z80Version = 1
    var memory: ZXZ80HardwareMode = .UNKNOWN
    let MAX_BLOCK_LENGTH = 16384
    
    
    init(data: [UInt8]){
        super.init()
        snaData = data
        process()
    }
    
    init(data: String?){
        super.init()
        guard let dataString = data else{
            importSuccessful = false
            return
        }
        
        importDataFromString(data: dataString)
        process()
        registers.shouldReturn = true
    }
    
    
    
    init(fileName: String, path: String? = nil){
        super.init()
        if let path = path {
            let filePath = "\(path)/\(fileName).z80"
            let contents = NSData(contentsOfFile: filePath)
            let data = contents! as Data
            let dataString = data.hexString
            if let dataString = dataString{
                importDataFromString(data: dataString)
            }
            do {
                try FileManager.default.removeItem(at: URL(fileURLWithPath: path))
            } catch let error as NSError {
                print("Error: \(error.domain)")
            }
            process()
        } else if let filePath = Bundle.main.path(forResource: fileName, ofType: "z80"){
            print("File found - \(filePath)")
            let contents = NSData(contentsOfFile: filePath)
            let data = contents! as Data
            let dataString = data.hexString
            if let dataString = dataString{
                importDataFromString(data: dataString)
            }
            process()
        } else {
            print("file not found")
        }
    }
    
    func process(){
        sortHeaderData()
        ramBanks = [[],[],[],[],[],[],[],[],[],[],[],[]]
        addDataToRam()
        importSuccessful = true
    }
    
    func importDataFromString(data: String){
        data.splitToBytes(separator: " ").forEach {byte in
            snaData.append(UInt8(byte, radix: 16) ?? 0x00)
        }
    }
    
    func sortHeaderData(){
        
        // FirstBlock
        
        /*
         
         0       1       A register
         1       1       F register
         2       2       BC register pair (LSB, i.e. C, first)
         4       2       HL register pair
         6       2       Program counter
         8       2       Stack pointer
         10      1       Interrupt register
         11      1       Refresh register (Bit 7 is not significant!)
         12      1       Bit 0  : Bit 7 of the R-register
         Bit 1-3: Border colour
         Bit 4  : 1=Basic SamRom switched in
         Bit 5  : 1=Block of data is compressed
         Bit 6-7: No meaning
         13      2       DE register pair
         15      2       BC' register pair
         17      2       DE' register pair
         19      2       HL' register pair
         21      1       A' register
         22      1       F' register
         23      2       IY register (Again LSB first)
         25      2       IX register
         27      1       Interrupt flipflop, 0=DI, otherwise EI
         28      1       IFF2 (not particularly important...)
         29      1       Bit 0-1: Interrupt mode (0, 1 or 2)
         Bit 2  : 1=Issue 2 emulation
         Bit 3  : 1=Double interrupt frequency
         Bit 4-5: 1=High video synchronisation
         3=Low video synchronisation
         0,2=Normal
         Bit 6-7: 0=Cursor/Protek/AGF joystick
         1=Kempston joystick
         2=Sinclair 2 Left joystick (or user
         defined, for version 3 .z80 files)
         3=Sinclair 2 Right joystick
         
         */
        
        
        registers.primary.registerA = snaData[0]
        registers.primary.registerF = snaData[1]
        registers.primary.registerC = snaData[2]
        registers.primary.registerB = snaData[3]
        registers.primary.registerL = snaData[4]
        registers.primary.registerH = snaData[5]
        registers.registerPC = registers.registerPair(l: snaData[6], h: snaData[7])
        registers.registerSP = registers.registerPair(l: snaData[8], h: snaData[9])
        registers.registerI = snaData[10]
        registers.registerR = snaData[11]
        registers.registerR.clear(bit: 7)
        let flagByte = snaData[12]
        hasCompressedData = flagByte.isSet(bit: 5)
        registers.borderColour = (flagByte & 14) >> 1
        registers.primary.registerE = snaData[13]
        registers.primary.registerD = snaData[14]
        
        registers.swap.registerC = snaData[15]
        registers.swap.registerB = snaData[16]
        registers.swap.registerE = snaData[17]
        registers.swap.registerD = snaData[18]
        registers.swap.registerL = snaData[19]
        registers.swap.registerH = snaData[20]
        registers.swap.registerA = snaData[21]
        registers.swap.registerF = snaData[22]
        
        registers.registerIY = registers.registerPair(l:snaData[23], h:snaData[24])
        registers.registerIX = registers.registerPair(l:snaData[25], h:snaData[26])
        let interuptFlag = snaData[27]
        registers.interuptEnabled = interuptFlag > 0x00
        // Byte 28 - not needed yet?
        let multiFlag = snaData[29]
        registers.interuptMode = Int(multiFlag & 0x03)
        registers.shouldReturn = false
        dataStart = 30
        // End of V1 header - Check for V2 header:
        
        if (registers.registerPC == 0x00){
            // Signifies V 2 or 3
            /*
             * 30      2       Length of additional header block (see below)
              * 32      2       Program counter
              * 34      1       Hardware mode (see below)
              * 35      1       If in SamRam mode, bitwise state of 74ls259.
                                For example, bit 6=1 after an OUT 31,13 (=2*6+1)
                                If in 128 mode, contains last OUT to 7ffd
              * 36      1       Contains 0FF if Interface I rom paged
              * 37      1       Bit 0: 1 if R register emulation on
                                Bit 1: 1 if LDIR emulation on
              * 38      1       Last OUT to fffd (soundchip register number)
              * 39      16      Contents of the sound chip registers
                55      2       Low T state counter
                57      1       Hi T state counter
                58      1       Flag byte used by Spectator (QL spec. emulator)
                                Ignored by Z80 when loading, zero when saving
                59      1       0FF if MGT Rom paged
                60      1       0FF if Multiface Rom paged. Should always be 0.
                61      1       0FF if 0-8191 is RAM
                62      1       0FF if 8192-16383 is RAM
                63      10      5x keyboard mappings for user defined joystick
                73      10      5x ascii word: keys corresponding to mappings above
                83      1       MGT type: 0=Disciple+Epson,1=Discipls+HP,16=Plus D
                84      1       Disciple inhibit button status: 0=out, 0ff=in
                85      1       Disciple inhibit flag: 0=rom pageable, 0ff=not
             */
            let additionalLength = registers.registerPair(l: snaData[30], h: snaData[31])
            registers.registerPC = registers.registerPair(l: snaData[32], h: snaData[33])
            dataStart += Int(additionalLength) + 2
            let hardwareMode = snaData[34]
            switch additionalLength {
            case 23:
                z80Version = 2
                switch hardwareMode{
                case 0,1:
                    memory = .ZX48
                case 3,4:
                    memory = .ZX128
                default:
                    memory = .UNSUPPORTED
                }
                case 54,55:
                   z80Version = 3
                    switch hardwareMode{
                    case 0,1,2:
                        memory = .ZX48
                    case 4,5,6:
                        memory = .ZX128
                    default:
                        memory = .UNSUPPORTED
                    }
                    
            default:
                z80Version = 3
            }
            
            registers.ramBankSetting = snaData[35]
        }
    }
    
    func extendedHardwareProfiles(hardwareMode: UInt8) -> ZXZ80HardwareMode{
        switch hardwareMode {
        case 7, 8:
            return .ZX128P3
        case 12:
            return .ZX128P2
        case 13:
            return .ZX128P2A
        default:
            return .UNSUPPORTED
        }
    }
    
    func addDataToRam(){
        var currentByte = dataStart
        if (z80Version == 1){
            if hasCompressedData {
                decompress(blockData: Array(snaData[dataStart...]), memoryBank: 0)
            } else {
                ramBanks[0].append(contentsOf: snaData[dataStart...])
            }
        } else {
            // Version 2 & 3 follow
            // Broken into blocks of data
//            0       2       Length of data (without this 3-byte header)
//            2       1       Page number of block
//            3       [0]     Compressed data
           while currentByte < snaData.count {
                let blockLength = Int(registers.registerPair(l: snaData[currentByte], h: snaData[currentByte + 1]))
            currentByte += 2
            let memoryBank = Int(snaData[currentByte])
            currentByte += 1
            print("Writing bank \(memoryBank) data")
            if blockLength == 0xffff {
                ramBanks[memoryBank].append(contentsOf: snaData[currentByte..<currentByte+MAX_BLOCK_LENGTH])
                currentByte += MAX_BLOCK_LENGTH
            } else {
            decompress(blockData: Array(snaData[currentByte..<currentByte+blockLength]), memoryBank: memoryBank)
                currentByte += blockLength
            }
            }
            
        }
        
        
        
    }
    
    func decompress(blockData: [UInt8], memoryBank: Int){
        var currentByte = 0
        while currentByte < blockData.count {
            let thisByte = blockData[currentByte]
            if currentByte + 3 < blockData.count {
                let nextByte = blockData[currentByte + 1]
                if thisByte == 0xED && nextByte == 0xED{
                    let countByte = blockData[currentByte + 2]
                    let repeatedByte = blockData[currentByte + 3]
                    for _ in 0..<Int(countByte) {
                        ramBanks[memoryBank].append(repeatedByte)
                    }
                    currentByte = currentByte &+ 4
                } else {
                    ramBanks[memoryBank].append(thisByte)
                    currentByte = currentByte &+ 1
                }
            } else {
                ramBanks[memoryBank].append(thisByte)
                currentByte = currentByte &+ 1
            }
        }
    }
    
    func retrieveRam() -> [[UInt8]] {
        if z80Version == 1 {
            var ret: [[UInt8]] = []
            ret.append(ramBanks[0])
            return ret
        }
        switch memory {
        case .ZX48:
        var ram: [UInt8] = []
            ram.append(contentsOf: ramBanks[8])
            ram.append(contentsOf: ramBanks[4])
            ram.append(contentsOf: ramBanks[5])
            var ret: [[UInt8]] = []
            ret.append(ram)
            return ret
        case .ZX128, .ZX128P2, .ZX128P3, .ZX128P2A:
            var ret: [[UInt8]] = []
            for a in 3...10 {
                ret.append(ramBanks[a])
            }
            return ret
        default:
        print ("unsupported hardware model")
        return []
    }
    }
}
