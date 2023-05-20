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
            VStack {
                switch settings.headerData.environment {
                case .Emulation:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Tape").tag(HeaderType.tapePlayer)
                        Text("Emulator").tag(HeaderType.emulatorHeader)
                        Text("Debug").tag(HeaderType.debugHeader)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                case .Disassembly:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Disassembler").tag(HeaderType.disassemblyHeader)
                        Text("Emulator").tag(HeaderType.emulatorHeader)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                case .Code:
                    Picker(selection: $currentHeader, label: Text("")) {
                        Text("Main").tag(HeaderType.mainHeader)
                        Text("Code").tag(HeaderType.codeHeader)
                        Text("Emulator").tag(HeaderType.emulatorHeader)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
Spacer()
            switch currentHeader {
            case .off:
                Spacer().frame(width: 10, height: 10)
            case .mainHeader:
                MainHeader(headerData: settings.headerData, showSettings: $settings.showSettings, computer: settings.currentComputerInstance)
            case .tapePlayer:
                TapePlayerView(tapePlayerData: settings.headerData.tapePlayerData, showTapePlayer: $settings.isShowingTapeSelector,  computer: settings.currentComputerInstance)
            case .emulatorHeader:
                EmulatorHeaderView(emulatorData: settings.emulatorData, computer: settings.currentComputerInstance)
            case .disassemblyHeader:
                DisassemblyHeaderView(disassembly: settings.disassemblyData, computer: settings.currentComputerInstance)
            case .codeHeader:
                SpectrumTestText(text: "codeHeader")
            case .debugHeader:
//                             DebugHeader(diag: settings.diagnosticData)
//                                     .onAppear(){
//                                         settings.diagnosticData.updateOpCodeSafe()
//                                         settings.currentComputerInstance.fast()
//                                     }
                Text("FPS: \(settings.headerData.debugModel.fps)")
            }
            }
            .frame(maxWidth: Sizing.instance.actualWidth() - 20, minHeight: 120, maxHeight: 120)
            .sheet(isPresented: $settings.showSettings) {
                SettingsSheet(settings:settings.headerData){
                    settings.hideSettings()

                }
            }
            .sheet(isPresented: $settings.isShowingTapeSelector) {
                ZXTapeLoaderView(tapePlayerData: settings.headerData.tapePlayerData, showTapePlayer: $settings.isShowingTapeSelector, computer: settings.currentComputerInstance).environmentObject(settings.headerData.tapePlayerData)
            }
        }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Sizing.instance.size = UIScreen.main.bounds.size
        return HeaderView(settings: mockData)
    }
}

