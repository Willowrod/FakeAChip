//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @ObservedObject var headerData: HeaderData
    let computer: CPU
    var body: some View {
        ViewThatFits {
            MainHeaderWide(headerData: headerData, computer: computer)
            MainHeaderThin(headerData: headerData, computer: computer)
        }
    }
}



struct MainHeaderWide: View {
    @ObservedObject var headerData: HeaderData
    let computer: CPU
    var body: some View {
        HStack {
            EnvironmentPicker(headerData: headerData)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            RunStateView( computer: computer)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            HeaderSettingsControllerView(headerData: headerData, computer: computer)
           // Text("FPS: \(headerData.debugModel.fps)")
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
    }
}

struct MainHeaderThin: View {
    @ObservedObject var headerData: HeaderData
    let computer: CPU
    var body: some View {
        VStack {
            EnvironmentPicker(headerData: headerData)
            HStack {
                RunStateView( computer: computer)
                Spacer().frame(minWidth: 20, maxWidth: 40)
                HeaderSettingsControllerView(headerData: headerData, computer: computer)
                // Text("FPS: \(headerData.debugModel.fps)")
            }
        }
        .frame(minWidth: 300, idealWidth: 300, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
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

struct RunStateView: View {
    let computer: CPU
    var body: some View {
        HStack {
            Button("▶️"){
                computer.resume()
            }
            Button("⏸"){
                computer.pause()
            }
            Button("➡️"){
                computer.fast()
            }
        }

    }
}

struct HeaderSettingsControllerView: View {
    @ObservedObject var headerData: HeaderData
    let computer: CPU
    @State private var shouldReboot: Bool = false
    var body: some View {
        HStack {
            Button("⚙️"){
                headerData.isShowingSettings.toggle()
            }
            Button("♻️"){
                shouldReboot = true
            }
        }
        .alert(isPresented: $shouldReboot) {
            computer.pause()
            return Alert(title: Text("Reboot Emulator"), message: Text("Do you really want to reboot?"),
                         primaryButton: .destructive(Text("Yes please!")) {
                            computer.resume()
                            computer.reboot()
                         },
                         secondaryButton: .default(Text("Ah, no, sorry...")){
                            print("Not rebooting.")
                            computer.resume()
                         })
        }
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainHeader(headerData: HeaderData(), computer: Speccy())
    }
}
