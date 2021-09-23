//
//  EmulatorData.swift
//  EmulatorData
//
//  Created by Mike Hall on 14/09/2021.
//

import Foundation
import SwiftUI

class EmulatorData: ObservableObject {
    @Published var keyboardShowing: Bool = true
    var currentXAxis: Float = 0.0
    var currentYAxis: Float = 0.0
    var currentButtonAValue: Bool = false
    var count = 0
    var emulatorPixels: [Path] = []
}
