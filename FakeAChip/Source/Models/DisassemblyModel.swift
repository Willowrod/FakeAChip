//
//  DisassemblyModel.swift
//  FakeAChip
//
//  Created by Mike Hall on 25/03/2021.
//

import Foundation
import SwiftUI

enum DisassemblyMergeDirection {
    case Forwards, Backwards
}

protocol DisassemblyRestructureProtocol {
    func mergeSection(uuid: UUID, direction: DisassemblyMergeDirection)
}

class DisassemblyModel: ObservableObject, Codable, DisassemblyRestructureProtocol {
   @Published var sections: [DisassemblySectionModel] = []

    var delegate: DisassemblyDelegate? = nil
    var snapshot: String = "x"
    
    enum CodingKeys: CodingKey {
        case sections, snapshot
    }
    
    init(){
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        sections = try container.decode(Array.self, forKey: .sections)
        snapshot = try container.decode(String.self, forKey: .snapshot)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sections, forKey: .sections)
        try container.encode(snapshot, forKey: .snapshot)
    }

    func reassertDelegates() {
        sections.forEach { sec in
            sec.delegate = self
        }
    }

    func mergeSection(uuid: UUID, direction: DisassemblyMergeDirection) {
        // Find index
        print("Merging section \(uuid) \(direction)")
        if let index = sections.firstIndex(where: {$0.id == uuid}) {
            print("Index for section \(uuid) is \(index)")
            let initialSection = sections[index]
            var targetSection = sections[index]
            print("Initial index data = \(initialSection.dataOutput())")
            if (direction == .Forwards) {
                if index == sections.count - 1 {
                    return
                }
                     targetSection = sections[index + 1]
                print("Target data = \(targetSection.dataOutput())")
                targetSection.bytes.insert(contentsOf: initialSection.bytes, at: 0)

                print("New data = \(targetSection.dataOutput())")


            } else {
                if index == 0 {
                    return
                }
                 targetSection = sections[index - 1]
                print("Target data = \(targetSection.dataOutput())")
                targetSection.bytes.append(contentsOf: initialSection.bytes)
                print("New data = \(targetSection.dataOutput())")
            }
            targetSection.resolveData(undefinedType: delegate?.undefinedDataType() ?? .UNDEFINED)
            //sections.remove(at: index)
            var newSections: [DisassemblySectionModel] = []

            sections.forEach { sec in
                if sec.id == targetSection.id {
                    newSections.append(targetSection)
                } else if sec.id == initialSection.id {
                    //Do nothing
                } else {
                    newSections.append(sec)
                }
            }

            sections = newSections
            delegate?.reloadView()
        }
    }

    func updateSections() {
        sections.forEach { sec in
            sec.resolveData(undefinedType: delegate?.undefinedDataType() ?? .UNDEFINED)
        }
    }
    
    func export() {
        do {
            let json = try JSONEncoder().encode(self)
            if let jsonString = String(data: json, encoding: .utf8){
            let filename = getPath(forFile: "disassembly.json")
            do {
                try jsonString.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
                print("Disassembly written to: \(filename)")
            } catch {
                print("Could not write to \(filename.absoluteString)")
                print("Error: \(error.localizedDescription)")
                // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
            }
            }
        } catch {
            print("JSON encoding failed - \(error.localizedDescription)")
        }
    }

    func toJson() -> String {
        do {
            let json = try JSONEncoder().encode(self)
            guard let jsonString = String(data: json, encoding: .utf8) else {
                fatalError("Could not create disassembly JSON")
            }
            return jsonString
        } catch {
            print(error.localizedDescription)
        }
        return ""
    }
}


class DisassemblySectionModel: ObservableObject, Identifiable, Codable {
    var id = UUID()
    @Published var title: String = "PlaceHolder"
    var startingLine: UInt16 = 0
    @Published var type: DataType = .UNUSED{
        didSet {
            if (temporaryDisassembly.count > 0){
                lines = temporaryDisassembly
            } else {
                lines = codeOutput()
            }
        }
    }
    @Published var textOffset = 0
    @Published var isShowing = false
    @Published var temporaryStartLine: UInt16 = 0

@Published var visibleContent = ""

    @Published var codeLines: [DisassemblyLineModel] = []
    @Published var graphicSprites: [GraphicsLine] = []
    @Published var textOutputValue: String = ""


    var delegate: DisassemblyRestructureProtocol?
    var bytes: [UInt8] = []
    var lines: [DisassemblyLineModel] = []
    var temporaryDisassembly: [DisassemblyLineModel] = []

    // Graphics Section

    var offsetSelected = false
    @Published var grouped = false
    
    

    enum CodingKeys: CodingKey {
        case title, lines, id, startingLine, type, bytes
    }
    
    init(model: DisassemblyRestructureProtocol?){
        delegate = model
    }

    func mergeBack(){
        delegate?.mergeSection(uuid: id, direction: .Backwards)
    }

    func mergeForward(){
        delegate?.mergeSection(uuid: id, direction: .Forwards)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        lines = try container.decode(Array.self, forKey: .lines)
        id = try container.decode(UUID.self, forKey: .id)
        startingLine = try container.decode(UInt16.self, forKey: .startingLine)
        temporaryStartLine = startingLine
        type = try container.decode(DataType.self, forKey: .type)
        bytes = try container.decode(Array.self, forKey: .bytes)
        delegate = nil
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(lines, forKey: .lines)
        try container.encode(id, forKey: .id)
        try container.encode(startingLine, forKey: .startingLine)
        try container.encode(type, forKey: .type)
        try container.encode(bytes, forKey: .bytes)
    }

    func resolveData(undefinedType: DataType) {

        print("Resolving \(undefinedType.rawValue)")
        switch type {
        case .CODE:
            //DisassemblerCodeSection(section: section)
            _ = codeOutput()
        case .GRAPHICS:
            //DisassemblerGraphicSection(section: section)
            resolveGraphics()
        case .DATA:
            //DisassemblerDataSection(section: section)
            _ = dataOutput()
        case .VALUE:
           // DisassemblerValueSection(section: section)
            _ = valueOutput()
        case .TEXT, .POTENTIALTEXT:
           // DisassemblerTextSection(section: section)
            _ = textOutput()
        case .UNDEFINED:
            switch undefinedType {
            case .CODE:
                // DisassemblerCodeSection(section: section)
                //DisassemblyUndefinedAsCodeSection(section: section)
                _ = codeOutput()
            case .GRAPHICS:
                //DisassemblerGraphicSection(section: section)
                resolveGraphics()
            case .TEXT, .POTENTIALTEXT:
                // DisassemblerTextSection(section: section)
                 _ = textOutput()
            case .DATA:
                //DisassemblerDataSection(section: section)
                _ = dataOutput()
            case .VALUE:
                // DisassemblerValueSection(section: section)
                 _ = valueOutput()
            default:

                textOutputValue = "Undefined"
            }
        default:
            textOutputValue = "Not Supported"
        }
    }
    
    func textOutput(offset: Int = 32) -> String { //-64
        var string = ""
        bytes.forEach{byte in

   //         print("Parsing \(byte)")

            if byte > 128 {
                let overloadedByte = byte - 128
                if overloadedByte >= 0x20 + offset, overloadedByte <= 0x7F + offset{
     //              print("Byte is overloaded - value = \(overloadedByte)")
                    let myASCIICharacter = Int(overloadedByte) - offset
                    string = "\(string)<\(myASCIICharacter.toZXCharacter())>"  //\(String(UnicodeScalar(UInt8(byte - offset + 0x20))))"
                }
            } else
            if byte >= 0x20 + offset, byte <= 0x7F + offset{
                let myASCIICharacter = Int(byte) - offset
                string = "\(string)\(myASCIICharacter.toZXCharacter())"  //\(String(UnicodeScalar(UInt8(byte - offset + 0x20))))"
            } else {
                string = "\(string)~"
            }
   //         print("Current value is '\(string)'")
        }
        textOutputValue = string
        return string
    }
    
    func dataOutput() -> String {
        var string = ""
        bytes.forEach{byte in
            string = "\(string)\(byte.hex()):"

        }
        if string.count > 1 {
            string.removeLast()
        }
        textOutputValue = string
        return string
    }
    
    
    func valueOutput() -> String {
        
        var string = "Byte: \n"
        var offset0 = "Word: \n"
        var offset1 = "Word Offset 1: \n"
        
        let length = bytes.count
        
        var word0: UInt16 = 0x00
        var word1: UInt16 = 0x00
        
        if length % 2 == 1 {
             offset0 = "Word Offset 0: \n"
        }
        var offset = false
        bytes.forEach{byte in
            string = "\(string)\(byte),"

            if offset {
                word0 = word0 &+ UInt16(byte)*256
                word1 = word1 &+ UInt16(byte)
                offset0 = "\(offset0)\(word0),"
                word0 = 0x00
            } else {
                word1 = word1 &+ UInt16(byte)*256
                word0 = word0 &+ UInt16(byte)
                offset1 = "\(offset1)\(word1),"
                word1 = 0x00
            }
            offset.toggle()
        }
        
        
        if length % 2 == 1 {
            offset0 = "\(offset0)\(word0),"
            return "\(string.reduce())\n\(offset0.reduce())\n\(offset1.reduce())"
        }

        textOutputValue = "\(string.reduce())\n\(offset0.reduce())"

        return textOutputValue
        
        
        
      //  return string
    }
    
    
    func valueOutputWord() -> String {
        var string = ""
        if bytes.count % 2 == 1 {
            string = "Offset 0"
        }
        bytes.forEach{byte in
            string = "\(string)\(byte),"

        }
        if string.count > 1 {
            string.removeLast()
        }
        textOutputValue = string
        return string
    }
    
    func graphicOutput(offset: Int = 0) -> [StandardSprite] {
        var returner: [StandardSprite] = []
        var count = 0
        var graphicBlock: [UInt8] = []
        bytes.forEach{byte in
            if count >= offset {
  //              if let uint8 = UInt8(byte, radix: 16){
                graphicBlock.append(byte)
                                    if graphicBlock.count == 8 {
                                       returner.append(StandardSprite(bytes: graphicBlock))
                                        graphicBlock.removeAll()
                                    }
//                }
            }
            count += 1
        }
        return returner
    }



    func resolveGraphics() {
        var tempGraphics: [GraphicsLine] = []
        for offset in 0...7 {
            let tempStore = graphicOutput(offset: offset);
            print("Offset \(offset) = \(tempStore)")
            tempGraphics.append(GraphicsLine(index: offset, graphics: tempStore))
        }
        graphicSprites = tempGraphics
    }
    
    func codeOutput() -> [DisassemblyLineModel] {
        temporaryDisassembly.removeAll()
        let block = Z80BlockDisassembly(block: bytes, initialLine: Int(startingLine))
        block.disassembly.forEach{line in
            let disassemblyLine = DisassemblyLineModel()
            disassemblyLine.line = UInt16(line.line)
            disassemblyLine.title = line.meaning
            disassemblyLine.code = line.code
            temporaryDisassembly.append(disassemblyLine)
        }
        codeLines = temporaryDisassembly
        return temporaryDisassembly
    }

    

}

class DisassemblyLineModel: ObservableObject, Identifiable, Codable {
    @Published var title = "Title"
    var id = UUID()
    @Published var line: UInt16 = 0
    @Published var code: String = ""
    @Published var meaning: String = "?"
    var bytes: [UInt8] = []
    
    enum CodingKeys: CodingKey {
        case title, id, line, code, meaning, bytes
    }
    
    init(){
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        id = try container.decode(UUID.self, forKey: .id)
        line = try container.decode(UInt16.self, forKey: .line)
        code = try container.decode(String.self, forKey: .code)
        meaning = try container.decode(String.self, forKey: .meaning)
        bytes = try container.decode([UInt8].self, forKey: .bytes)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(id, forKey: .id)
        try container.encode(line, forKey: .line)
        try container.encode(code, forKey: .code)
        try container.encode(meaning, forKey: .meaning)
        try container.encode(bytes, forKey: .bytes)
    }
}

struct GraphicsLine {
    let index: Int
    let graphics: [StandardSprite]
}
