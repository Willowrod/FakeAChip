//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        VStack{
            HeaderView(settings: settings)
            HStack{
                Text("Offering Save: \(settings.emulatorData.offerSave ? "True" : "False")")
            }
            Group {
                switch settings.headerData.environment {
                case SystemEnvironment.Emulation:
                    SpectrumEmulationView(computer: settings.currentComputerInstance as! Speccy, host: settings.host)
                case SystemEnvironment.Disassembly:
                    SpectrumDisassemblyView(disassembly: settings.disassemblyData.disassembly, computer: settings.currentComputerInstance as! Speccy)
                case SystemEnvironment.Code:
                    SpectrumCodeView(computer: settings.currentComputerInstance as! Speccy)
                }
            }
            Spacer()
        }.sheet(isPresented: $settings.offerSave) {
            SaveSpeccyDataView(emulatorData: settings.emulatorData, show: $settings.offerSave)
        }.sheet(isPresented: $settings.offerLoad) {
            LoadSpeccyDataView(emulatorData: settings.emulatorData, show: $settings.offerLoad)
        }
    }
}

struct SpectrumEmulationView: View {
    let computer: Speccy
    let host: HostSystem
    
    @State private var orientation = UIDeviceOrientation.unknown
    var body: some View {
        Group {
            switch host {
            case .iOS:
                Spacer()
                Group {
                    if orientation.isLandscape || orientation.isFlat {
                        ZStack{
                            VStack {
                                SpectrumScreen(screenWidth: Sizing.instance.widthforLandscape())
                                Spacer()
                            }
                            VStack {
                                Spacer()
                                ZXKeyboard(keyWidth: Sizing.instance.height() / 11, keyHeight: Sizing.instance.width() / 16)
                            }
                        }
                    } else {
                        VStack{
                            SpectrumScreen(screenWidth: Sizing.instance.width())
                            ZXKeyboard(keyWidth: Sizing.instance.width() / 11, keyHeight: Sizing.instance.width() / 16)
                        }
                    }
                }
                .onRotate { newOrientation in
                    orientation = newOrientation
                }
            case .Mac:
                SpectrumScreen(screenWidth: Sizing.instance.width())
            }
        }
    }
}

struct SpectrumDisassemblyView: View {
    @ObservedObject var disassembly: DisassemblyModel
    @State private var showingSheet = false
    let computer: Speccy
    var body: some View {
        VStack{
            HStack{
                SpectrumScreen(screenWidth: Sizing.instance.size.width / 3)
                RegisterSetView()
            }
            DisassemblyList(disassembly: disassembly, computer: computer)
        }
        .sheet(isPresented: $showingSheet) {
            DisassemblySheet()
        }
    }
}

struct SpectrumCodeView: View {
    let computer: Speccy
    var body: some View {
        HStack{
            RegisterSetView()
            SpectrumScreen(screenWidth: Sizing.instance.size.width / 3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Sizing.instance.size = UIScreen.main.bounds.size
        let mockData = FakeAChipMock.init(cpu: EmptyZXSpectrum()).mock(host: .iOS)
        return SpectrumView().environmentObject(mockData)
    }
}
