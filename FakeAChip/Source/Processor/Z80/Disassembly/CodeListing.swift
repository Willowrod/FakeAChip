//
//  CodeListing.swift
//  inSpeccytor
//
//  Created by Mike Hall on 26/02/2021.
//

import Foundation

struct CodeListing: Codable {
    
    var startLine: UInt16 = 0x6000
    var baseComputer: ComputerType = .Sinclair_Spectrum
    var specificComputer: ComputerModel = .ZXSpectrum_48K
    var author = "Mike Hall"
    var InspeccytorVersion = "1.0"
    
    var opCodes: [OpCode] = []
    
    var listing: [UInt8] = []
    
}
