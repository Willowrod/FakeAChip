//
//  WatchHeaders.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

struct SnapshotView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    let computer: CPU
    var body: some View {
Text("Watch stuff")
    }


}

struct EnvironmentPicker: View {
    @ObservedObject var headerData: HeaderData
    var body: some View {
        Picker(selection: $headerData.environmentTag, label: Text("What are you doing with FakeAChip today?")) {
            Text("Emulation").tag(0)
            Text("Disassembly").tag(1)
            Text("Coding").tag(2)
        }
        .padding(20)
        .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .leading)

    }
}
