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
                Text("Speed: \(settings.processorSpeed)")
            }
            Group {
                switch settings.headerData.environment {
                case SystemEnvironment.Emulation:
                    SpectrumEmulationView(computer: settings.currentComputerInstance as! Speccy, host: settings.host)
                case SystemEnvironment.Disassembly:
                    SpectrumDisassemblyView(data: settings.disassemblyData, computer: settings.currentComputerInstance as! Speccy)
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


struct SpectrumDisassemblyView: View {
    @ObservedObject var data: DisassemblyData
    let computer: Speccy
    var body: some View {
        VStack{
            HStack{
                SpectrumScreen(screenWidth: Sizing.instance.size.width / 6)
                RegisterSetView()
            }
            DisassemblyList(data: data, computer: computer)
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

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Sizing.instance.size = UIScreen.main.bounds.size
//        return SpectrumView().environmentObject(mockData)
//    }
//}
