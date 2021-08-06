//
//  EnvironmentSettings.swift
//  EnvironmentSettings
//
//  Created by Mike Hall on 15/07/2021.
//

import Foundation

class EnvironmentSettings: ObservableObject {
    
    @Published var host: HostSystem = .iOS
}
