//
//  SystemConstants.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import Foundation

enum HostSystem: String {
    case Mac = "Mac", iOS = "iOS"
}

enum SystemEnvironment: String {
    case Emulation = "Emulation", Disassembly = "Disassembly", Code = "Code"
}
