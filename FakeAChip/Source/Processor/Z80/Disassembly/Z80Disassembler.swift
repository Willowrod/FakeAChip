//
//  Z80Disassembler.swift
//  inSpeccytor
//
//  Created by Mike Hall on 03/03/2021.
//

import Foundation

protocol DisassemblyDelegate {
    func disassemblyComplete(disassembly: DisassemblyModel) //[OpCode])
  //  func disassemblyComplete(codeRoutines: [CodeRoutine])
}

class Z80Disassembler {
    
    var currentPC: Int = 0
    var lastPC: Int = 0
    var memoryDump: [UInt8] = []
    var disassembly: [OpCode] = []
    var entryPoints: [Int] = []
    var alreadyAdded: [Int] = []
    var linesAdded: [Int] = []
    var allRoutines: [CodeRoutine] = []
    var currentEntryPoint = 0
    let opcodeLookup = OpCodeDefs()
    var delegate: DisassemblyDelegate? = nil
    var isCalc = false
    var maxUnknownSectionLength = 256
    var minimumTextLength = 6
    
    init(withData: [UInt8], knownJumpPoints: [UInt16], fromPC: Int, delegate: DisassemblyDelegate, shouldIncludeSystemVariables: Bool = false, shouldIncludeRom: Bool = false, shouldIncludeScreen: Bool = false){
        memoryDump = withData
        currentPC = fromPC
        self.delegate = delegate
        entryPoints.append(fromPC)
        entryPoints.append(contentsOf: knownJumpPoints.map({Int($0)}))
        if !shouldIncludeRom {
            for a in 0x0000...0x3FFF {
                entryPoints.removeAll(where: {$0 < 0x4000})
            alreadyAdded.append(a)
                linesAdded.append(a)
            }
        }
        if !shouldIncludeSystemVariables {
            entryPoints.removeAll(where: {$0 < 0x5ccb && $0 > 0x5aff})
            for a in 0x5aff...0x5ccb {
            alreadyAdded.append(a)
                linesAdded.append(a)
            }
        }
        
        entryPoints.removeAll(where: {$0 > 0x3fff && $0 < 0x5b00})
        for a in 0x3fff...0x5b00 {
        alreadyAdded.append(a)
            linesAdded.append(a)
        }
        
        disassemble(shouldIncludeScreen: shouldIncludeScreen)
    }
    
    func disassemble(shouldIncludeScreen: Bool){
        // Zeroth sweep - Screen and attributes
        if shouldIncludeScreen {
        sweep0()
        }
        // First sweep - Add all known opcodes
        print ("0")
        sweep1()
        print ("1")
        disassembly.sort{$0.line < $1.line}
        print ("2")
        allRoutines.sort{$0.startLine < $1.startLine}
        print ("3")
        // Second Sweep - try to find unclaimed sections of data
        sweep2()
        print ("4")
        allRoutines.sort{$0.startLine < $1.startLine}
        print ("5")
        // Third sweep - compile 'allRoutines' array
        sweep3()
        print ("6")
        // Send result back to delegate
        //delegate?.disassemblyComplete(disassembly: disassembly)
        let disassembly = DisassemblyModel()
        
        allRoutines.forEach{routine in
            let disassemblySection = DisassemblySectionModel()
            disassemblySection.startingLine = UInt16(routine.startLine)
            disassemblySection.title = routine.title
            disassemblySection.type = routine.type
//            if routine.type == .POTENTIALTEXT || routine.type == .UNDEFINED {
//                disassemblySection.isShowing = true
//            }
            routine.code.forEach{line in
                let disassemblyLine = DisassemblyLineModel()
                disassemblyLine.line = UInt16(line.line)
                disassemblyLine.title = line.meaning
                disassemblyLine.code = line.code
                disassemblyLine.bytes = line.opCodeArray
                disassemblySection.lines.append(disassemblyLine)
                disassemblySection.bytes.append(contentsOf: line.opCodeArray)
            }
            disassembly.sections.append(disassemblySection)
        }
        
        print ("7")
        delegate?.disassemblyComplete(disassembly: disassembly)
    }
    
    func increasePC(){
        if currentPC <= 5 {
            print("No....")
        }
        if currentPC < lastPC {
            print("No....")
        }
        if !alreadyAdded.contains(currentPC){
            alreadyAdded.append(currentPC)
        }
        let oldPC = currentPC
        currentPC += 1
        lastPC = currentPC
        if oldPC > currentPC {
            print("No....")
        }
    }
    
    func getCodeByteHex() -> String {
        let modelPosition = currentPC
        if (modelPosition < memoryDump.count){
            let byte = memoryDump[modelPosition]
            return byte.hex() //CodeByteModel.init(withHex: byte.hex(), line: currentPC)
            
        } else {
            return "00"//CodeByteModel(withHex: "00", line: modelPosition)
        }
    }

    func getCodeByteInt() -> UInt8 {
        let modelPosition = currentPC
        if (modelPosition < memoryDump.count){
            return memoryDump[modelPosition]
        }
        return 0
    }
    
    func getCodeChunk() -> [UInt8] {
        let modelPosition = currentPC
        var thisChunk: [UInt8] = []
        for a in 0...3 {
            thisChunk.append(getByteAtMemoryPosition(modelPosition + a))
        }
        return thisChunk
    }
    
    func getByteAtMemoryPosition(_ modelPosition: Int) -> UInt8{
        if (modelPosition < memoryDump.count){
            return memoryDump[modelPosition]
        }
        return 0x00
    }

    func sweep0(){
        var currentPoint = 0x4000
        let step = 32
        var graphicSet: [OpCode] = []
        while currentPoint < 0x5800 {
            let thisLineOfGraphics = memoryDump[currentPoint..<currentPoint+step]
            var code = ""
            thisLineOfGraphics.forEach{ byte in
                code = "\(code)\(byte) "
            }
            var graphicalOpCode = OpCode(v: "GFX", c: "SCR$", m: code, l: 32)
            graphicalOpCode.line = currentPoint
            graphicalOpCode.lineType = .GRAPHICS
            graphicSet.append(graphicalOpCode)
            currentPoint += step
        }
        var title = "ScreenGraphics"
        allRoutines.append(CodeRoutine(startLine: 0x4000, length: graphicSet.count * 32, code: graphicSet, description: "Screen Graphics at snap shot point", title: title, type: .GRAPHICS))
        graphicSet = []
        while currentPoint < 0x5B00 {
            let thisLineOfGraphics = memoryDump[currentPoint..<currentPoint+step]
            var code = ""
            thisLineOfGraphics.forEach{ byte in
                code = "\(code)\(byte) "
            }
            var graphicalOpCode = OpCode(v: "ATTR", c: "Attribs", m: code, l: 32)
            graphicalOpCode.lineType = .GRAPHICS
            graphicalOpCode.line = currentPoint
            graphicSet.append(graphicalOpCode)
            currentPoint += step
        }
        title = "Attributes"
        allRoutines.append(CodeRoutine(startLine: 0x5800, length: graphicSet.count * 32, code: graphicSet, description: "Screen Attributes at snap shot point", title: title, type: .GRAPHICS))
        
        
        
    }
    
    func sweep1(){
        var runLoop = true
        var count = 0
    //    var lineCount = 0
        var currentLine = -1
        var routineCodes: [OpCode] = []
        var thisLine = 0
        var chunk: [UInt8] = []
        while runLoop{
          //  lineCount = 0
            chunk = getCodeChunk()
            let lineAsInt = currentPC
            let initialCode = getCodeByteHex()
            var opCode = opcodeLookup.opCode(code:initialCode)
            opCode.opCodeArray.append(UInt8(initialCode, radix: 16) ?? 0x00)
            increasePC()
            if (!isCalc){
            if opCode.isPreCode {
                let thisCode = getCodeByteHex()
                increasePC()
                let extra = getCodeByteHex()
                increasePC()
                var secondextra = ""
                secondextra = getCodeByteHex()
                currentPC -= 1
          //      opCode = opcodeLookup.opCode(code: "\(opCode.value)\(thisCode)", extra: getCodeByteHex(), secondExtra: secondextra)
                opCode = opcodeLookup.opCode(code: "\(opCode.value)\(thisCode)", extra: extra, secondExtra: secondextra)
                
            }
            if opCode.length == 2 {
                let byte = getCodeByteInt()
                if opCode.code.contains("±"){
                    opCode.code = opCode.code.replacingOccurrences(of: "±", with: "$\(UInt8(byte).hex().padded(size: 2))")
                } else if opCode.code.contains("$$"){
                    opCode.code = opCode.code.replacingOccurrences(of: "$$", with: "$\(UInt8(byte).hex().padded(size: 2))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "$$", with: "\(byte)")
                    //opCode.code = "###\(opCode.code)"
                } else if opCode.code.contains("##"){ // Two's compliment
                    let subt = byte.isSet(bit: 7)
                    var comp: Int = -Int(byte.twosCompliment())
                    if !subt{
                        comp = Int(byte)
                    }
                    opCode.target = currentPC + comp + 1 //Add 1 to make PC correct before comp
                    if opCode.target > 0xffff {
                        opCode.code = opCode.code.replacingOccurrences(of: "##", with: "\(byte.hex()) - OVERFLOW!")
                        opCode.meaning = opCode.meaning.replacingOccurrences(of: "##", with: "\(comp) (\(String(opCode.target, radix: 16)) - OVERFLOW!")
                    } else {
                    opCode.code = opCode.code.replacingOccurrences(of: "##", with: "$\(byte.hex())")
                        opCode.meaning = opCode.meaning.replacingOccurrences(of: "##", with: "\(comp) (\(UInt16(opCode.target).hex()))")
                    }
                } else if opCode.code.contains("§§"){ // Two's compliment
                    let subt = byte.isSet(bit: 7)
                    var comp: Int = -Int(byte.twosCompliment())
                    if !subt{
                        comp = Int(byte)
                    }
                    opCode.target = currentPC + comp + 1 //Add 1 to make PC correct before comp
                    opCode.code = opCode.code.replacingOccurrences(of: "§§", with: "$\(byte.hex())")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "§§", with: "\(comp)")
                }

                opCode.meaning = opCode.meaning.replacingOccurrences(of: "±", with: "\(byte)")
                increasePC()
            } else if opCode.length == 3 {
                let low = getCodeByteInt()
                increasePC()
                let high = getCodeByteInt()

                if (opCode.code.contains("$$")){
                    let word: Int = Int(Int(high) * Int(256)) + Int(low)
                    opCode.target = word
                    opCode.code = opCode.code.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "$$", with: "$\(UInt16(word).hex().padded(size: 4))")
                } else {
                    opCode.code = opCode.code.replacingOccurrences(of: "¢1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "¢2", with: "$\(UInt8(high).hex().padded(size: 2))")
                    opCode.meaning = opCode.meaning.replacingOccurrences(of: "¢1", with: "$\(UInt8(low).hex().padded(size: 2))").replacingOccurrences(of: "¢2", with: "$\(UInt8(high).hex().padded(size: 2))")
                }
                increasePC()
            }
                opCode.line = Int(lineAsInt)
            if (!linesAdded.contains(opCode.line)){
                disassembly.append(opCode)
                linesAdded.append(opCode.line)
            }
            
            if (opCode.isJumpTarget()){
                if opCode.targetType == .RST {
                    switch opCode.value.uppercased() {
                    case "C7":
                        opCode.target = 0
                    case "CF":
                        opCode.target = 0x08
                    case "D7":
                        opCode.target = 0x10
                    case "DF":
                        opCode.target = 0x18
                    case "E7":
                        opCode.target = 0x20
                    case "EF":
                        opCode.target = 0x28
                    case "F7":
                        opCode.target = 0x30
                    case "FF":
                        opCode.target = 0x38
                    default:
                        opCode.target = 0
                    }
                }
                
                if (!entryPoints.contains(opCode.target) && !alreadyAdded.contains(opCode.target)){
   //                     print("Adding jump to \(String(opCode.target, radix: 16)) from \(String(opCode.line, radix: 16))")
                    entryPoints.append(opCode.target)
                }
            }
            
            
            if opCode.value.count == 6 {
                increasePC()
            }
            
                if opCode.value.uppercased() == "EF" {
                    isCalc = true
                }
                
             //   lineCount += 1
                count += opCode.length
                thisLine = opCode.line
                if currentLine == -1 {
                    currentLine = opCode.line
                //    lineCount = 1
                }
                opCode.opCodeArray.removeAll()
                for a in 0..<opCode.length {
                    if a < chunk.count{
                    opCode.opCodeArray.append(chunk[a])
                    }
                }
                routineCodes.append(opCode)
                if opCode.isEndOfRoutine {
                    let title = "\(UInt16(currentLine).hex()) - \(UInt16(thisLine).hex())"
                    allRoutines.append(CodeRoutine(startLine: currentLine, length: count, code: routineCodes, description: "", title: title, type: .CODE))
                    currentLine = -1
                    count = 0
 //                   print("Found routine \(title)")
                    routineCodes.removeAll()
//                }
//
//
//
//                if (opCode.isEndOfRoutine){
                        runLoop = sortNextOpCode()
                    }

            if (currentPC >= memoryDump.count){
                //             print("End Of File")
  //                runLoop = false
  //                //header.registerPC -= 1
  //                updatePCUI()
  //                opCodes.sort{$0.line < ¢1.line}
  //                mainTableView.reloadData()
  //              markPositions()
                runLoop = sortNextOpCode()
            }
            } else {
                if opCode.value.uppercased() == "38"{
                    opCode.code = "End Calc"
                    isCalc = false
                } else if opCode.value.uppercased() == "3B"{
                    opCode.code = "Single Calc Function"
                    isCalc = false
                } else {
                    opCode.code = "Calc \(opCode.value)"
                }
                opCode.line = Int(lineAsInt)
                if (!linesAdded.contains(opCode.line)){
                    opCode.meaning = "Calculator Function"
                disassembly.append(opCode)
                    alreadyAdded.append(opCode.line)
                    linesAdded.append(opCode.line)
                }
            }
            
      //      print("Adding line \(opCode.line): \(opCode.code) - \(opCode.opCodeString)")
            
        }
    }
    
    func sweep2(){
        var currentStartLine: Int = 0x5B00
        allRoutines.forEach{routine in
            //var nextRoutineStart = routine.startLine
            var addon = true
            while routine.startLine > currentStartLine {
                addon = false
                let chunkEnd = routine.startLine//currentStartLine + maxUnknownSectionLength
//                if chunkEnd > routine.startLine {
//                    chunkEnd = routine.startLine
//                }
                currentStartLine = routineLengthChunk(currentStartLine, chunkEnd: chunkEnd)
            }
            if addon {
            currentStartLine = routine.startLine + routine.length
            }
        }
        while 0xffff > currentStartLine {
            var chunkEnd = currentStartLine + maxUnknownSectionLength
            if chunkEnd > 0xffff {
                chunkEnd = 0xffff
            }
            currentStartLine = routineLengthChunk(currentStartLine, chunkEnd: chunkEnd)
        }
    }
    
    func routineLengthChunk(_ start: Int, chunkEnd: Int) -> Int{
        if start < 0x5B00 {
            return 0x5B00
        }
        //var opCodeSet: [OpCode] = []
        let unknownCode = memoryDump[start..<chunkEnd]
        var chunkStart = start
        var textBytes:[UInt8] = []
        var nonTextBytes:[UInt8] = []
        unknownCode.forEach{ byte in
            if byte >= 0x20 && byte <= 0x7C{
                textBytes.append(byte)
                if textBytes.count >= minimumTextLength && nonTextBytes.count > 0 {
                    addChunkOfData(nonTextBytes, startChunk: chunkStart, type: .UNDEFINED)
                    chunkStart += nonTextBytes.count
                    nonTextBytes.removeAll()
                }
            } else {
                if textBytes.count > minimumTextLength {
                    addChunkOfData(textBytes, startChunk: chunkStart, type: .POTENTIALTEXT)
                    chunkStart += textBytes.count
                    textBytes.removeAll()
                } else if textBytes.count > 0 {
                    nonTextBytes.append(contentsOf: textBytes)
                    textBytes.removeAll()
                }
                
                nonTextBytes.append(byte)
                if nonTextBytes.count > maxUnknownSectionLength {
                    addChunkOfData(nonTextBytes, startChunk: chunkStart, type: .UNDEFINED)
                    chunkStart += nonTextBytes.count
                    nonTextBytes.removeAll()
                }
            }
        }
        if textBytes.count > minimumTextLength {
            addChunkOfData(textBytes, startChunk: chunkStart, type: .POTENTIALTEXT)
            chunkStart += textBytes.count
            textBytes.removeAll()
        } else if textBytes.count > 0 {
            nonTextBytes.append(contentsOf: textBytes)
            textBytes.removeAll()
        }
        
        if nonTextBytes.count > 0 {
            addChunkOfData(nonTextBytes, startChunk: chunkStart, type: .UNDEFINED)
            chunkStart += nonTextBytes.count
            nonTextBytes.removeAll()
        }

        return chunkEnd
    }
    
    func addChunkOfData(_ data: [UInt8], startChunk: Int, type: DataType){
        let chunkEnd = startChunk + data.count
        var opCodeSet: [OpCode] = []
        var count = startChunk
        data.forEach{ byte in
            var unknownOpCode = OpCode(v: "UNKNOWN", c: byte.hex(), m: byte.hex(), l: 1)
            unknownOpCode.line = count
            unknownOpCode.lineType = .DATA
            unknownOpCode.opCodeArray.append(byte)
            opCodeSet.append(unknownOpCode)
            count += 1
        }
        var title = "\(UInt16(startChunk).hex()) - \(UInt16(startChunk + data.count - 1).hex()) - "
        if type == .POTENTIALTEXT || type == .TEXT {
            title += textOutput(opCodeSet: opCodeSet)
        } else {
            title += type.rawValue.capitalized
        }
        allRoutines.append(CodeRoutine(startLine: startChunk, length: chunkEnd - startChunk, code: opCodeSet, description: "", title: title, type: type))
//        print("Found routine \(title)")
    }
    
    func textOutput(opCodeSet: [OpCode]) -> String {
        var string = ""
        opCodeSet.forEach{opcode in
            if opcode.opCodeArray.count > 0{
            let byte = opcode.opCodeArray[0]
            if byte >= 0x20, byte <= 0x7C{
            string = "\(string)\(String(UnicodeScalar(UInt8(byte))))"
            } else {
                string = "\(string)~"
            }
            }
        }
        return string
    }
    
    func sweep3(){
        
    }
    
    
    
    
    
    func sortNextOpCode() -> Bool {
        currentEntryPoint += 1
        while currentEntryPoint < entryPoints.count {
            let nextEP = entryPoints[currentEntryPoint]
            if nextEP > 0xffff {
                print("Bad EP \(String(nextEP, radix: 16))")
                return false
            } else
  //            if nextEP < 0x4000 {
  //
  //                } else
            if !alreadyAdded.contains(nextEP){
            currentPC = entryPoints[currentEntryPoint]
            return true
            }
            currentEntryPoint += 1
        }
        print("Processing completed")
        return false
    }
    
    func markPositions(){
        let tempCodes = disassembly
        tempCodes.forEach({ opCode in
            if (opCode.target > 0){
                if let target = self.disassembly.firstIndex(where: {$0.line == opCode.target}) {
                    // print("Target: \(target.line) is jump position")
                    //                    let jumpPos = opCodes[target]
                    //                    print("Target: \(jumpPos.line) is jump position")
                    //opCodes[target].isJumpPosition = true
                    disassembly[target].lineType = opCode.targetType
                }
            }
        })
    }
    
    // Block Disassembly

    
    
    
}
