//
//  HeaderView.swift
//  FakeAChip
//
//  Created by Mike Hall on 05/07/2022.
//

import SwiftUI
enum HeaderType: Int {
    case off = 0, mainHeader, tapePlayer, debugHeader, saveLoad, disassemblyHeader, codeHeader
}

struct HeaderView: View {
    @ObservedObject var settings: FakeAChipData
    @State private var currentHeader: HeaderType = .mainHeader
        var body: some View {
            VStack {
                switch settings.headerData.environment {
                case .Emulation:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Tape").tag(HeaderType.tapePlayer)
                        Text("Save/Load").tag(HeaderType.saveLoad)
                        Text("Emulator").tag(HeaderType.debugHeader)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                case .Disassembly:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Disassebler").tag(HeaderType.disassemblyHeader)
                    }
                    .padding(20)
                    .pickerStyle(SegmentedPickerStyle())
                case .Code:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Code").tag(HeaderType.codeHeader)
                    }
                    .padding(20)
                    .pickerStyle(SegmentedPickerStyle())
                }
Spacer()
            switch currentHeader {
            case .off:
                Spacer().frame(width: 10, height: 10)
            case .mainHeader:
                MainHeader(headerData: settings.headerData, computer: settings.currentComputerInstance)
            case .tapePlayer:
                TapePlayerView(tapePlayerData: settings.headerData.tapePlayerData, computer: settings.currentComputerInstance)
            case .debugHeader:
                Text("FPS: \(settings.headerData.debugModel.fps)")
            case .saveLoad:
                EmulatorHeaderView(emulatorData: settings.emulatorData, computer: settings.currentComputerInstance)
            case .disassemblyHeader:
                DisassemblyHeaderView(disassembly: settings.disassemblyData.disassembly, computer: settings.currentComputerInstance)
            case .codeHeader:
                SpectrumTestText(text: "codeHeader")
            }
            }
            .frame(maxWidth: Sizing.instance.actualWidth() - 20, minHeight: 120, maxHeight: 120)
            .sheet(isPresented: $settings.headerData.isShowingSettings) {
                SettingsSheet( settings:settings.headerData)
            }
            .sheet(isPresented: $settings.headerData.tapePlayerData.isShowingTapeSelector) {
                ZXTapeLoaderView(tapePlayerData: settings.headerData.tapePlayerData, computer: settings.currentComputerInstance).environmentObject(settings.headerData.tapePlayerData)
            }
        }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Sizing.instance.size = UIScreen.main.bounds.size
        let mockData = FakeAChipMock.init(cpu: EmptyZXSpectrum()).mock(host: .iOS)
        return HeaderView(settings: mockData)
    }
}

