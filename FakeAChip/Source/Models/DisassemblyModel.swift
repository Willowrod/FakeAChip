//
//  DisassemblyModel.swift
//  FakeAChip
//
//  Created by Mike Hall on 25/03/2021.
//

import Foundation
import SwiftUI

class DisassemblyModel: ObservableObject, Codable {
   @Published var sections: [DisassemblySectionModel] = []
   @Published var showing: DataType? = nil
    @Published var undefinedDataShownAs: DataType = .UNDEFINED
    
    enum CodingKeys: CodingKey {
        case sections
    }
    
    init(){
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        sections = try container.decode(Array.self, forKey: .sections)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sections, forKey: .sections)
    }
    
    func showingValue() -> String {
        if let showing = showing {
            return "Showing \(showing.rawValue.capitalized)"
        }
        return "Showing All"
    }
    
    func export() {
//        sections.forEach{section in
//            print (section.title)
//            section.lines.forEach{line in
//                print("\(line.title) \(line.id.uuidString)")
//            }
//        }
        do {
            let json = try JSONEncoder().encode(self)
            let jsonString = String(data: json, encoding: .utf8)
            print("JSON: \(jsonString)")
        } catch {
            print("JSON encoding failed - \(error.localizedDescription)")
        }
    }
}


class DisassemblySectionModel: ObservableObject, Identifiable, Codable {
    var id = UUID()
    @Published var title: String = "PlaceHolder"
    @Published var startingLine: UInt16 = 0
    @Published var type: DataType = .UNUSED
    @Published var textOffset = 0
    @Published var isShowing = false
    var lines: [DisassemblyLineModel] = [] //DisassemblyLineModel(), DisassemblyLineModel(), DisassemblyLineModel()

    enum CodingKeys: CodingKey {
        case title, lines, id
    }
    
    init(){
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        lines = try container.decode(Array.self, forKey: .lines)
        id = try container.decode(UUID.self, forKey: .id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(lines, forKey: .lines)
        try container.encode(id, forKey: .id)
    }
    
    func textOutput() -> String {
        var string = ""
        lines.forEach{byte in
            if let ascii = UInt8(byte.code, radix: 16), ascii >= 0x20, ascii <= 0x7C{
            string = "\(string)\(String(UnicodeScalar(UInt8(ascii))))"
            } else {
                string = "\(string)~"
            }
        }
        return string
    }
    
    func graphicOutput(offset: Int = 0) -> [UIImage] {
        var returner: [UIImage] = []
        var count = 0
        var graphicBlock: [UInt8] = []
        lines.forEach{byte in
            if count >= offset {
                if let uint8 = UInt8(byte.code, radix: 16){
                graphicBlock.append(uint8)
                if graphicBlock.count == 8 {
                    let newImage = StandardSprite(bytes: graphicBlock)
                    if let image = UIImage(bitmap: newImage){
                   returner.append(image)
                    }
                    graphicBlock.removeAll()
                }
                }
            }
            count += 1
        }
        return returner
    }


}

class DisassemblyLineModel: ObservableObject, Identifiable, Codable {
    @Published var title = "Title"
    var id = UUID()
    @Published var line: UInt16 = 0
    @Published var code: String = ""
    @Published var meaning: String = "?"
    
    
    enum CodingKeys: CodingKey {
        case title, id
    }
    
    init(){
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        id = try container.decode(UUID.self, forKey: .id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(id, forKey: .id)
    }
}
