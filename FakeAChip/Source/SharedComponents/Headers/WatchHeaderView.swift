//
//  HeaderView.swift
//  FakeAChip
//
//  Created by Mike Hall on 05/07/2022.
//

import SwiftUI
enum HeaderType: Int {
    case off = 0, mainHeader, tapePlayer, emulatorHeader, disassemblyHeader, codeHeader, debugHeader
}

struct HeaderView: View {
    @ObservedObject var settings: FakeAChipData
    @State private var currentHeader: HeaderType = .mainHeader
    var body: some View {
        
        Text("X")
        
    }
}
