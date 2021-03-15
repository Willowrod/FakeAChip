//
//  BaseFileFormat.swift
//  inSpeccytor
//
//  Created by Mike Hall on 07/01/2021.
//

import Foundation

class BaseFileFormat {
    var fileFormat: FileFormat = .UNKNOWN
    var importSuccessful = false
    var ramBanks: [[UInt8]] = []
    var registers: RegisterModel = RegisterModel()
    var dataStart: Int = 27
}
