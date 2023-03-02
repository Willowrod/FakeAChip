//
//  NonWatchHeaders.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

struct SnapshotView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    let computer: CPU
    var body: some View {

        Menu("Load Snapshot"){
            ForEach(tapePlayerData.listOfGames(extensions: ["sna", "z80", "zip"]), id: \.self){ item in
                if item.contains("128") {
                    Button("128K: \(item)"){
                        loadData(item)
                    }
                } else {
                    Button(item){
                        loadData(item)
                    }
                }
            }
        }
        .padding(20)
    }

    func loadData(_ file: String){
        computer.load(file: file)
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
        .pickerStyle(SegmentedPickerStyle())
        .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .leading)

    }
}
