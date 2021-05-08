//
//  TXZFormat.swift
//  inSpeccytor
//
//  Created by Mike Hall on 07/01/2021.
//

import Foundation
class TZXFormat: BaseFileFormat , TapeDelegate {
    
    
    var tzxData: [UInt8] = []
    var blocks: [BaseTZXBlock] = []
    var currentByte: Int = 0
    var currentBlock = 0
    var currentBit = 7
    var processing = false
    var workingBlock: BaseTZXBlock? = nil
    var onPulseLength: Int = 0
    var offPulseLength: Int = 0
    var isOnPulse = true
    
    
    init(data: [UInt8]){
        super.init()
        tzxData = data
        process()
    }
    
    init(data: String?){
        super.init()
        if let tzxBytes = data?.splitToBytes(separator: " "){
            tzxBytes.forEach{byte in
                tzxData.append(UInt8(byte, radix: 16) ?? 0x00)
            }
        process()
        }
    }
    
    func process(){
        processing = true
        while currentByte < tzxData.count && processing {
        readBlock(fromByte: currentByte)
        }
        print("TZX file imported")
        currentBlock = 0
//        let myTapeImporter = TapeLoader.init()
//        myTapeImporter.tapeDelegate = self
//        myTapeImporter.initialiseTape()
    }
    
    func readBlock(fromByte: Int){
        if (fromByte < tzxData.count){
            print("Block starts \(fromByte)")
            var addLength = true
            if fromByte == 0 {
                // read header - Header should be 10 byters long and start with 'ZXTape!' followed by 0x1A
                // Byte 0x08 if the major version of the TZX file and 0x09 is the minor version
                if tzxData[0x00...0x07] == [0x5A, 0x58, 0x54, 0x61, 0x70, 0x65, 0x21, 0x1A] {
                    blocks.append(TZXHeaderBlock.init(data: tzxData[0x00...0x09], order: currentBlock))
                } else {
                    processing = false
                    print("Not a valid TZX file")
                }
            } else {
                let id = tzxData[fromByte]
                switch (id){
                
                case 0x10:
                    blocks.append(TZXStandardSpeedBlock.init(data: tzxData[fromByte...], order: currentBlock))
                case 0x20:
                    blocks.append(TZXStandardSpeedBlock.init(data: tzxData[fromByte...], order: currentBlock))
                case 0x30:
                    blocks.append(TZXTextDescriptionBlock.init(data: tzxData[fromByte...], order: currentBlock))
                case 0x31:
                    blocks.append(TZXTextMessageBlock.init(data: tzxData[fromByte...], order: currentBlock))
                case 0x32:
                    blocks.append(TZXTextArchiveBlock.init(data: tzxData[fromByte...], order: currentBlock))
                
                default:
                    let length = fetchWord(byte: fromByte + 1)
                    print("Cannot import block type \(id.hex()) of length \(length)")
                    addLength = false
                    currentByte += 3
                    currentByte += Int(length)
                }
            }
            if addLength {
            currentByte += Int(blocks.last?.blockLength ?? 0) + Int(blocks.last?.blockCounter ?? 0)
            }
        } else {
            print("End of file reached or block out of scope")
        }
        currentBlock += 1
    }
    
    
    
    
    func fetchByte(byte: Int) -> UInt8 {
        if (tzxData.count > byte){
            return tzxData[byte]
        } else {
            print("Error importing byte \(byte) from TZX root - not enough data!")
            processing = false
        }
        return 0x00
    }
    
    func fetchWord(byte: Int) -> UInt16 {
        if (tzxData.count > byte &+ 1){
            return UInt16(tzxData[byte]) &+ (UInt16(tzxData[(byte + 1)]) * 256) // Little Endian
        } else {
            print("Error importing Word \(byte) from TZX root - not enough data!")
            processing = false
        }
        return 0x00
    }
    
    // Delegate Methods
    
    
    func callNextBlock() -> BaseTZXBlock? {
        while currentBlock < blocks.count {
            if let block = blocks.first(where: {$0.order == currentBlock}){
                if block.isCodeBlock {
                    currentBlock += 1
                    return block
                }
            } else {
            currentBlock += 1
            }
        }
        return nil
    }
    
    func getcurrentBlock() -> BaseTZXBlock? {
        while currentBlock < blocks.count {
            if blocks[currentBlock].isCodeBlock {
                print("Current block = \(currentBlock)")
                return blocks[currentBlock]
            }
            currentBlock += 1
        }
        return nil
    }
    
    func fetchData(tState: Int) -> (signal: Bool, reset: Bool)? {
      //  return (true, true)
        if workingBlock == nil {
            workingBlock = getcurrentBlock()
            if let thisBlock = workingBlock, let thisBlockData = thisBlock.read() {
                onPulseLength = thisBlockData.onPulse
                offPulseLength = thisBlockData.offPulse
            }
        }
        switch isOnPulse {
        case true:
            if tState < onPulseLength {
                return(true, false)
            } else {
                isOnPulse = false
                return(true, true)
            }
            
        case false:
            if tState < onPulseLength {
                return(false, false)
            } else {
                isOnPulse = true
                if let thisBlock = workingBlock, let thisBlockData = thisBlock.read() {
                    onPulseLength = thisBlockData.onPulse
                    offPulseLength = thisBlockData.offPulse
                } else {
                    currentBlock += 1
                    workingBlock = nil//getcurrentBlock()
                }
                return(false, true)
            }
        }
//        if let thisBlock = workingBlock, let thisBlockData = thisBlock.read(tStates: tState) {
//            return thisBlockData
//        }
//        currentBlock += 1
//        workingBlock = getcurrentBlock()
//        return (false, false)
    }
    
    func startTape() {
        currentBlock = 0
        currentByte = 0
        currentBit = 7
        
    }
}
enum PlayState {
    case pilot, sync, play, pause, complete
}

class BaseTZXBlock {
    var blockType: UInt8 = 0
    var blockLength: UInt16 = 0
    var order: Int = 0
    var blockData: [UInt8] = []
    var blockCounter = 0
    var rawData: [UInt8] = []
    var pause: UInt16 = 0
    var isHeader = false
    var isCodeBlock = true
    var currentByte: Int = 0
    var currentBit = 7
    var isOffPulse = false
    var pulseLength = 855
    var currentPulseLength = 2168
    var playState: PlayState = .pilot
    var pilotCount = 0
    var workingByte: UInt8 = 0x00
    var currentlySet = false
    
    init(data: ArraySlice<UInt8>, order: Int){
        self.order = order
        rawData = Array(data)
        process()
  //      rawData.removeAll()
    }
    
    func process(){}
    
    func read() -> (onPulse: Int, offPulse: Int)?{ //reset: Bool)? {
  //      var reset = false
        switch playState {
        
        case .pilot:
            if isHeader {
                if pilotCount >= 565 {
                    playState = .sync
                }
            } else {
                if pilotCount >= 3223 {
                    playState = .sync
                }
            }
            pilotCount += 2
            return (2168, 2168)
        case .sync:
            workingByte = blockData[0]
            playState = .play
            return (667, 735)
        case .play:
            currentlySet = workingByte.isSet(bit: currentBit)
            currentBit -= 1
            if currentBit < 0 {
                currentByte += 1
                currentBit = 7
                if currentByte < blockData.count {
                workingByte = blockData[currentByte]
                } else {
                    playState = .pause
                }
            }
            if currentlySet {
                return(pulseLength * 2, pulseLength * 2)
            } else {
                return(pulseLength, pulseLength)
            }
        case .pause:
            playState = .complete
            return (0, 69888 * 50)
        case .complete:
        return nil
        }
    }
    
    func fetchByte(byte: Int) -> UInt8 {
        if (rawData.count > byte){
            blockCounter += 1
            return rawData[byte]
        } else {
            print("Error importing byte \(byte) for block type \(blockType) - not enough data!")
        }
        blockCounter += 1
        return 0x00
    }
    
    func fetchWord(byte: Int) -> UInt16 {
        if (rawData.count > byte &+ 1){
            blockCounter += 2
            return UInt16(rawData[byte]) &+ (UInt16(rawData[(byte + 1)]) * 256) // Little Endian
        } else {
            print("Error importing Word \(byte) for block type \(blockType) - not enough data!")
        }
        blockCounter += 2
        return 0x00
    }
}

class TZXHeaderBlock: BaseTZXBlock {
    var majorVersion: UInt8 = 0
    var minorVersion: UInt8 = 0
    
    override func process() {
        isCodeBlock = false
    blockLength = 10
    majorVersion = fetchByte(byte: 8)
    minorVersion = fetchByte(byte: 9)
        blockCounter = 0
        
        print ("TZX Version \(majorVersion).\(minorVersion) being imported")
    }
}

class TZXTAPStyleBlock: BaseTZXBlock {
    var type: UInt8 = 0x00
    var fileName = ""
    var dataBlockLength: UInt16 = 0x00
    var parameter1: UInt16 = 0x00
    var parameter2: UInt16 = 0x00
    var checkSum: UInt8 = 0x00
    
    func headerType() -> String{
        switch type {
        case 0:
           return "Program"
        case 1:
           return "Number Var"
        case 2:
           return "String Var"
        case 3:
           return "Memory Block"
        default:
           return "Program"
        }
    }
    
    func parameter1Details() -> String {
        switch type {
        case 0:
           return "Auto Start: \(parameter1)"
        case 1:
            return "Number Var: \(String(UnicodeScalar(UInt8(parameter1.highByte()))))"
        case 2:
           return "String Var: \(String(UnicodeScalar(UInt8(parameter1.highByte()))))"
        case 3:
           return "Start Address: \(parameter1)"
        default:
           return "Unknown"
        }
    }
    
    func parameter2Details() -> String {
        switch type {
        case 0:
           return "Program Length: \(parameter2)"
        default:
           return "Parameter 2 Unused: \(parameter2)"
        }
    }
    
}

class TZXMessage {
    var type: UInt8 = 0x00
    var length: Int = 0
    var description: String = ""
    var text: String = ""
    
    init(type: UInt8, block: ArraySlice<UInt8>){
        self.type = type
        
parseText(block: block)
    }
    
    init(type: String, block: ArraySlice<UInt8>){
        self.type = 0xFE
        description = type
        parseText(block: block)
    }
    
    func parseText(block: ArraySlice<UInt8>){
        for char in block{
            text += String(UnicodeScalar(UInt8(char)))
        }
        length = block.count
    }
    
    func setDescript(){
        switch type {
        case 0x00:
            description = "Full title"
        case 0x01:
            description = "Software house/publisher"
        case 0x02:
            description = "Author(s)"
        case 0x03:
            description = "Year of publication"
        case 0x04:
            description = "Language"
        case 0x05:
            description = "Game/utility type"
        case 0x06:
            description = "Price"
        case 0x07:
            description = "Protection scheme/loader"
        case 0x08:
            description = "Origin"
        case 0xFF:
            description = "Comment(s)"
        default:
            description = "Unknown"
        }
    }
}

class TZXMessageStyleBlock: BaseTZXBlock{
    var text: [TZXMessage] = []
    
    override func process() {
        isCodeBlock = false
    }
    
    func displayMessages() {
        text.forEach{message in
            print("... \(message.description): \(message.text)")
        }
    }
}

class TZXTextDescriptionBlock: TZXMessageStyleBlock {
    override func process() {
        super.process()
        blockType = 0x30
        blockCounter += 1
        let length = fetchByte(byte: blockCounter)
        text.append(TZXMessage.init(type: "Text Description", block: rawData[blockCounter...blockCounter + Int(length) - 1]))
        blockCounter += Int(length)
        displayMessages()
    }
}

class TZXTextMessageBlock: TZXMessageStyleBlock {
    var displayTime: UInt8 = 0x00
    override func process() {
        super.process()
        blockType = 0x31
        blockCounter += 1
        displayTime = fetchByte(byte: blockCounter)
        let length = fetchByte(byte: blockCounter)
        text.append(TZXMessage.init(type: "Text Description", block: rawData[blockCounter...blockCounter + Int(length) - 1]))
        blockCounter += Int(length)
        displayMessages()
    }
}


class TZXTextArchiveBlock: TZXMessageStyleBlock {
    var totalTextLength: UInt16 = 0x00
    var numberOfStrings: UInt8 = 0x00
    override func process() {
        super.process()
        blockType = 0x32
        blockCounter += 1
        totalTextLength = fetchWord(byte: blockCounter)
        numberOfStrings = fetchByte(byte: blockCounter)
        for _ in 0..<Int(numberOfStrings){
            let msgType = fetchByte(byte: blockCounter)
            let len = fetchByte(byte: blockCounter)
            text.append(TZXMessage.init(type: msgType, block: rawData[blockCounter...blockCounter + Int(len) - 1]))
            blockCounter += Int(len)
        }
        displayMessages()
    }
}


class TZXStandardSpeedBlock: TZXTAPStyleBlock {
    override func process() {
        blockType = 0x10
        blockCounter += 1
        pause = fetchWord(byte: blockCounter)
        blockLength = fetchWord(byte: blockCounter)
        if blockCounter + Int(blockLength) < rawData.count {
        blockData = Array(rawData[blockCounter...blockCounter + Int(blockLength - 1)])
        } else {
            blockData = Array(rawData[blockCounter...])
        }
        let tempByteCount = blockCounter
        
        if fetchByte(byte: blockCounter) == 0x00{
            isHeader = true
            type = fetchByte(byte: blockCounter)
            for char in blockData[1...10]{
                fileName += String(UnicodeScalar(UInt8(char)))
            }
            blockCounter += 10
            dataBlockLength = fetchWord(byte: blockCounter)
            parameter1 = fetchWord(byte: blockCounter)
            parameter2 = fetchWord(byte: blockCounter)
            print("Header imported - Type: \(headerType()) - Name: \(fileName) - Block Length: \(dataBlockLength) - \(parameter1Details()) - \(parameter2Details()) - Length: \(blockLength) - ")
        } else {
            isHeader = false
            print ("Standard Speed block imported of length \(blockLength)")
        }
 //       printBlockData(data: blockData)
        blockCounter = tempByteCount
    }
    
//    override func read(tStates: Int) -> (signal: Bool, reset: Bool)? {
//        var reset = false
//        var pulse = pulseLength
//        if currentByte > blockData.count {
//            return nil
//        }
//        if blockData[currentByte].isSet(bit: currentBit){
//            pulse = pulseLength * 2
//        }
//        if tStates >= pulse {
//            reset = true
//            isOffPulse = !isOffPulse
//            if (!isOffPulse) {
//                currentBit -= 1
//                if currentBit < 0 {
//                    currentByte += 1
//                    currentBit = 7
//                }
//            }
//        }
//        return (false, reset)
//    }
}

func printBlockData(data: [UInt8]){
    var blockD = ""
    data.forEach{ byte in
        blockD += "\(byte.hex()), "
    }
    print(blockD)
}

class TZXPauseBlock: BaseTZXBlock {
    override func process() {
        blockType = 0x20
        blockCounter += 1
        pause = fetchWord(byte: blockCounter)

        
        print ("Pause block imported of length \(blockLength)")
    }
}
