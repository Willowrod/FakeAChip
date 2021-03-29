//
//  TargetType.swift
//  inSpeccytor
//
//  Created by Mike Hall on 01/11/2020.
//

import Foundation

enum TypeOfTarget: String{
    case CODE = "CODE", DATA = "DATA", TEXT = "TEXT", GRAPHICS = "GRAPHICS", VALUE = "VALUE", RELATIVE = "RELATIVE", NOTARGET = "NOTARGET", RST = "RST", EMPTY = "EMPTY"
}

extension TypeOfTarget: Codable {
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
       case "VALUE": self = .VALUE
       case "RELATIVE": self = .RELATIVE
       case "NOTARGET": self = .NOTARGET
       case "RST": self = .RST
       case "EMPTY": self = .EMPTY
       default:
       self = .NOTARGET
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
        case .GRAPHICS:
            try container.encode("GRAPHICS", forKey: .rawValue)
        case .VALUE:
            try container.encode("VALUE", forKey: .rawValue)
        case .RELATIVE:
            try container.encode("RELATIVE", forKey: .rawValue)
        case .NOTARGET:
            try container.encode("NOTARGET", forKey: .rawValue)
        case .RST:
            try container.encode("RST", forKey: .rawValue)
        case .EMPTY:
            try container.encode("EMPTY", forKey: .rawValue)
        }
    }
}

    
    
