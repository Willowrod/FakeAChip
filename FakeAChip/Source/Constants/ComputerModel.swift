//
//  ComputerModel.swift
//  inSpeccytor
//
//  Created by Mike Hall on 25/01/2021.
//

import Foundation

enum ComputerType: String, CodingKey, CaseIterable {
    case Sinclair = "SPECTRUM", Commodore = "COMMODORE", Acorn = "ACORN", Amstrad = "AMSTRAD", Atari = "ATARI"//, Unknown = "UNKNOWN" //, Sinclair_Spectrum_128 = "SPECTRUM 128k", Sinclair_Spectrum_Plus_2 = "SPECTRUM +2", Sinclair_Spectrum_Plus_3 = "SPECTRUM +3" , Commodore_Vic20 = "VIC20", Commodore_64 = "C64", Acorn_BBC = "BBC"
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
        case "SPECTRUM": self = .Sinclair
        case "COMMODORE": self = .Commodore
        case "AMSTRAD": self = .Amstrad
        case "ACORN": self = .Acorn
        case "ATARI": self = .Atari
//        case "SPECTRUM 128k": self = .Sinclair_Spectrum_128
//        case "SPECTRUM +2": self = .Sinclair_Spectrum_Plus_2
//        case "SPECTRUM +3": self = .Sinclair_Spectrum_Plus_3
        default:
            self = .Sinclair
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        case .Sinclair:
            try container.encode("SPECTRUM", forKey: .rawValue)
        case .Commodore:
            try container.encode("COMMODORE", forKey: .rawValue)
        case .Amstrad:
            try container.encode("AMSTRAD", forKey: .rawValue)
        case .Acorn:
            try container.encode("ACORN", forKey: .rawValue)
        case .Atari:
            try container.encode("ATARI", forKey: .rawValue)
//        case .Sinclair_Spectrum:
//            try container.encode("SPECTRUM", forKey: .rawValue)
//        case .Commodore_Vic20:
//            try container.encode("VIC20", forKey: .rawValue)
//        case .Commodore_64:
//            try container.encode("C64", forKey: .rawValue)
//        case .Acorn_BBC:
//            try container.encode("BBC", forKey: .rawValue)
            
//        case .Sinclair_Spectrum_128:
//            try container.encode("SPECTRUM 128k", forKey: .rawValue)
//        case .Sinclair_Spectrum_Plus_2:
//            try container.encode("SPECTRUM +2", forKey: .rawValue)
//        case .Sinclair_Spectrum_Plus_3:
//            try container.encode("SPECTRUM +3", forKey: .rawValue)
            
//        default:
//            try container.encode("UNKNOWN", forKey: .rawValue)
        }
    }
    
    func associatedModels() -> [ComputerModel] {
        switch self {
        
        case .Sinclair:
            return [.Sinclair_Spectrum_48K, .Sinclair_Spectrum_128K, .Sinclair_Spectrum_128K_Plus2, .Sinclair_Spectrum_128K_Plus3, .Sinclair_ZX80, .Sinclair_ZX81]
        case .Commodore:
            return [.Commodore_Vic_20, .Commodore_64, .Commodore_PET]
        case .Acorn:
            return [.Acorn_Atom, .Acorn_BBC_A, .Acorn_BBC_B, .Acorn_BBC_Master]
        case .Amstrad:
            return [.Amstrad_464, .Amstrad_6128]
        case .Atari:
            return [.Atari_VCS, .Atari_600, .Atari_800]
        }
    }
}



enum ComputerModel: String {
    case Sinclair_Spectrum_48K, Sinclair_Spectrum_128K, Sinclair_Spectrum_128K_Plus2, Sinclair_Spectrum_128K_Plus3, Sinclair_ZX80, Sinclair_ZX81, Commodore_Vic_20, Commodore_64, Commodore_PET, Acorn_Atom, Acorn_BBC_A, Acorn_BBC_B, Acorn_BBC_Master, Amstrad_464, Amstrad_6128, Atari_VCS, Atari_600, Atari_800
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
        case "ZXSPECTRUM": self = .Sinclair_Spectrum_48K
        case "ZXSPECTRUM128": self = .Sinclair_Spectrum_128K
        case "ZXSPECTRUMPLUS2": self = .Sinclair_Spectrum_128K_Plus2
        case "ZXSPECTRUMPLUS3": self = .Sinclair_Spectrum_128K_Plus3
        case "ZX80": self = .Sinclair_ZX80
        case "ZX81": self = .Sinclair_ZX81
        case "VIC20": self = .Commodore_Vic_20
        case "C64": self = .Commodore_64
        case "COMMODOREPET": self = .Commodore_PET
        case "ACORNATOM": self = .Acorn_Atom
        case "ACORNBBCA": self = .Acorn_BBC_A
        case "ACORNBBCB": self = .Acorn_BBC_B
        case "ACORNBBCMASTER": self = .Acorn_BBC_Master
        case "AMSTRAD464": self = .Amstrad_464
        case "AMSTRAD6128": self = .Amstrad_6128
        case "ATARIVCS": self = .Atari_VCS
        case "ATARI600": self = .Atari_600
        case "ATARI800": self = .Atari_800
        default:
            self = .Sinclair_Spectrum_48K
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        case .Sinclair_Spectrum_48K:
            try container.encode("ZXSPECTRUM", forKey: .rawValue)
        case .Sinclair_Spectrum_128K:
            try container.encode("ZXSPECTRUM128", forKey: .rawValue)
        case .Sinclair_Spectrum_128K_Plus2:
            try container.encode("ZXSPECTRUMPLUS2", forKey: .rawValue)
        case .Sinclair_Spectrum_128K_Plus3:
            try container.encode("ZXSPECTRUMPLUS2", forKey: .rawValue)
        case .Sinclair_ZX80:
            try container.encode("ZX80", forKey: .rawValue)
        case .Sinclair_ZX81:
            try container.encode("ZX81", forKey: .rawValue)
        case .Commodore_Vic_20:
            try container.encode("VIC20", forKey: .rawValue)
        case .Commodore_64:
            try container.encode("C64", forKey: .rawValue)
        case .Commodore_PET:
            try container.encode("COMMODOREPET", forKey: .rawValue)
        case .Acorn_Atom:
            try container.encode("ACORNATOM", forKey: .rawValue)
        case .Acorn_BBC_A:
            try container.encode("ACORNBBCA", forKey: .rawValue)
        case .Acorn_BBC_B:
            try container.encode("ACORNBBCB", forKey: .rawValue)
        case .Acorn_BBC_Master:
            try container.encode("ACORNBBCMASTER", forKey: .rawValue)
        case .Amstrad_464:
            try container.encode("AMSTRAD464", forKey: .rawValue)
        case .Amstrad_6128:
            try container.encode("AMSTRAD6126", forKey: .rawValue)
        case .Atari_VCS:
            try container.encode("ATARIVCS", forKey: .rawValue)
        case .Atari_600:
            try container.encode("ATARI600", forKey: .rawValue)
        case .Atari_800:
            try container.encode("ATARI800", forKey: .rawValue)
        }
    }
}
