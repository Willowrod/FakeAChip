//
//  BaseFileFormat.swift
//  inSpeccytor
//
//  Created by Mike Hall on 07/01/2021.
//

import Foundation
import ZXLoaderSDK

class BaseFileFormat {
    var fileFormat: FileFormat = .UNKNOWN
    var importSuccessful = false
    var ramBanks: [[UInt8]] = []
    var registers: Z80RegisterSnapshot = Z80RegisterSnapshot()
    var dataStart: Int = 27
}
