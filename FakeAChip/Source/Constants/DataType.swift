//
//  DataType.swift
//  inSpeccytor
//
//  Created by Mike Hall on 03/03/2021.
//

import Foundation

enum DataType: String, CaseIterable {
    case CODE = "CODE"
    case DATA = "DATA"
    case TEXT = "TEXT"
    case POTENTIALTEXT = "POTENTIALTEXT"
    case GRAPHICS = "GRAPHICS"
    case UNUSED = "VALUE"
    case UNDEFINED = "UNDEFINED"
}

extension DataType: Codable {
    enum Key: CodingKey {
        case rawValue
    }
    
    enum CodingError: Error {
        case unknownValue
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Key.self)
        let label = try values.decode(String.self, forKey: .rawValue)
        switch label {
        case "CODE": self = .CODE
        case "DATA": self = .DATA
        case "TEXT": self = .TEXT
        case "GRAPHICS": self = .GRAPHICS
        case "UNUSED": self = .UNUSED
        case "UNDEFINED": self = .UNDEFINED
        case "POTENTIALTEXT": self = .POTENTIALTEXT
        default:
            self = .UNDEFINED
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        
        case .CODE:
            try container.encode("CODE", forKey: .rawValue)
        case .DATA:
            try container.encode("DATA", forKey: .rawValue)
        case .TEXT:
            try container.encode("TEXT", forKey: .rawValue)
        case .POTENTIALTEXT:
            try container.encode("POTENTIALTEXT", forKey: .rawValue)
        case .GRAPHICS:
            try container.encode("GRAPHICS", forKey: .rawValue)
        case .UNUSED:
            try container.encode("UNUSED", forKey: .rawValue)
        case .UNDEFINED:
            try container.encode("UNDEFINED", forKey: .rawValue)
        }
    }
}



