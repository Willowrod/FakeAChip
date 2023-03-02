//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @ObservedObject var headerData: HeaderData
    @Binding var showSettings: Bool
    let computer: CPU
    var body: some View {
        ViewThatFits {
            MainHeaderWide(headerData: headerData, showSettings: $showSettings, computer: computer)
            MainHeaderThin(headerData: headerData, showSettings: $showSettings, computer: computer)
        }
    }
}



struct MainHeaderWide: View {
    @ObservedObject var headerData: HeaderData
    @Binding var showSettings: Bool
    let computer: CPU
    var body: some View {
        HStack {
            EnvironmentPicker(headerData: headerData)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            RunStateView( computer: computer)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            HeaderSettingsControllerView(showSettings: $showSettings, computer: computer)
           // Text("FPS: \(headerData.debugModel.fps)")
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
    }
}

struct MainHeaderThin: View {
    @ObservedObject var headerData: HeaderData
    @Binding var showSettings: Bool
    let computer: CPU
    var body: some View {
        VStack {
            EnvironmentPicker(headerData: headerData)
            HStack {
                RunStateView( computer: computer)
                Spacer().frame(minWidth: 20, maxWidth: 40)
                HeaderSettingsControllerView(showSettings: $showSettings, computer: computer)
            }
        }
        .frame(minWidth: 300, idealWidth: 300, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
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
    @Binding var showSettings: Bool
    let computer: CPU
    @State private var shouldReboot: Bool = false
    var body: some View {
        HStack {
            Button("⚙️"){
                computer.pause()
                showSettings = true
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

//struct MainHeader_Previews: PreviewProvider {
//    @State static var showSettings: Bool = true
//    static var previews: some View {
//        MainHeader(headerData: HeaderData(), showSettings: $showSettings, computer: Speccy())
//    }
//}
