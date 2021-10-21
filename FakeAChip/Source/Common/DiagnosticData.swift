//
//  DiagnosticData.swift
//  DiagnosticData
//
//  Created by Mike Hall on 13/10/2021.
//

import Foundation

class DiagnosticData: ObservableObject {
    @Published var logs: [String] = []
    
    var maximumNumberOfLogs = 30
    
    func addLog(itemToLog: String){
        logs.append(itemToLog)
        if logs.count > maximumNumberOfLogs {
            logs.removeFirst()
        }
    }
}
