//
//  ComputerModel.swift
//  inSpeccytor
//
//  Created by Mike Hall on 25/01/2021.
//

import Foundation

enum ComputerType: String, CodingKey {
   case Sinclair_Spectrum = "SPECTRUM", Commodore_Vic20 = "VIC20", Commodore_64 = "C64", Acorn_BBC = "BBC", Unknown = "UNKNOWN"
}

extension ComputerType: Codable {
    enum Key: CodingKey {
        case rawValue
    }
    
    enum CodingError: Error {
        case unknownValue
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: Key.self)
        let label = try values.decode(String.self, forKey: .rawValue)

    //    self = .Sinclair_Spectrum
       switch label {
       case "SPECTRUM": self = .Sinclair_Spectrum
       case "VIC20": self = .Commodore_Vic20
       case "C64": self = .Commodore_64
       case "BBC": self = .Acorn_BBC
       default:
       self = .Unknown
       }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {

        case .Sinclair_Spectrum:
            try container.encode("SPECTRUM", forKey: .rawValue)
        case .Commodore_Vic20:
            try container.encode("VIC20", forKey: .rawValue)
        case .Commodore_64:
            try container.encode("C64", forKey: .rawValue)
        case .Acorn_BBC:
            try container.encode("BBC", forKey: .rawValue)
        default:
            try container.encode("UNKNOWN", forKey: .rawValue)
        }
    }
}



enum ComputerModel: String {
    case ZXSpectrum_48K, ZXSpectrum_128K, ZXSpectrum_128K_Plus2, ZXSpectrum_128K_Plus3
}
extension ComputerModel: Codable {
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
       case "ZXSPECTRUM": self = .ZXSpectrum_48K
       case "ZXSPECTRUM128": self = .ZXSpectrum_128K
       case "ZXSPECTRUMPLUS2": self = .ZXSpectrum_128K_Plus2
       case "ZXSPECTRUMPLUS3": self = .ZXSpectrum_128K_Plus3
       default:
       self = .ZXSpectrum_48K
       }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {

        case .ZXSpectrum_48K:
            try container.encode("ZXSPECTRUM", forKey: .rawValue)
        case .ZXSpectrum_128K:
            try container.encode("ZXSPECTRUM128", forKey: .rawValue)
        case .ZXSpectrum_128K_Plus2:
            try container.encode("ZXSPECTRUMPLUS2", forKey: .rawValue)
        case .ZXSpectrum_128K_Plus3:
            try container.encode("ZXSPECTRUMPLUS2", forKey: .rawValue)
        }
    }
}
