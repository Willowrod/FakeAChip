//
//  Watch.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

struct SpectrumEmulationView: View {
    let computer: Speccy
    let host: HostSystem
    
    var body: some View {
        print("Screen size: \(Sizing.instance.actualWidth()), \(Sizing.instance.height())")
        return ZStack{
            SpectrumScreen(screenWidth: Sizing.instance.actualWidth())
            ZXKeyboard(keyWidth: Sizing.instance.actualWidth() / 11, keyHeight: Sizing.instance.actualWidth() / 16)
        }
    }
}
