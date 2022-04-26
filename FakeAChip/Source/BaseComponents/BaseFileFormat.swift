//
//  BaseFileFormat.swift
//  inSpeccytor
//
//  Created by Mike Hall on 07/01/2021.
//

import Foundation
import ZXLoaderSDK

open class BaseFileFormat {

    public init() {
        
    }

    public var fileFormat: FileFormat = .UNKNOWN
    public var importSuccessful = false
    public var ramBanks: [[UInt8]] = []
    public var registers: Z80RegisterSnapshot = Z80RegisterSnapshot()
    public var dataStart: Int = 27
}
