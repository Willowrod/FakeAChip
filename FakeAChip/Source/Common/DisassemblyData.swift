//
//  DisassemblyData.swift
//  DisassemblyData
//
//  Created by Mike Hall on 28/08/2021.
//

import Foundation

class DisassemblyData: ObservableObject {
    
    var currentSnapShot = ""
    var currentMemory: [UInt8] = []
    
    @Published var disassembly: DisassemblyModel = DisassemblyModel()
    
}
