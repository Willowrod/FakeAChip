//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
  //  @EnvironmentObject var settings: FakeAChipData
    @ObservedObject var headerData: HeaderData
    @State private var shouldReboot: Bool = false
    let computer: CPU
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $headerData.environmentTag, label: Text("What are you doing with FakeAChip today?")) {
                    Text("Emulation").tag(0)
                    Text("Disassembly").tag(1)
                    Text("Coding").tag(2)
                }
                .padding(20)
                .pickerStyle(SegmentedPickerStyle())
                .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .leading)
                
                
                Spacer()
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
                Spacer()
                HStack {
                    Button("⚙️"){
                        headerData.isShowingSettings.toggle()
                    }
                    Button("♻️"){
                        shouldReboot = true
                    }
                }
                Spacer()
                Text("FPS: \(headerData.debugModel.fps)")
                
                Spacer()
            }
            .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
            HStack {
                Menu("Load Snapshot"){
                    
                    ForEach(headerData.tapePlayerData.listOfGames(extensions: ["sna", "z80", "zip"]), id: \.self){ item in
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
                
                Spacer()
                
                Text("Tape Player:")
                
                HStack {
                    Button("⏪"){
                        computer.fast()
                    }
                    Button("▶️"){
                        computer.resume()
                    }
                    Button("⏩"){
                        computer.fast()
                    }
                    Button("⏸"){
                        computer.pause()
                    }
                    Button("⏏️"){
                        eject()
                    }
                }
//                Menu("Tape"){
//                    ForEach(settings.listOfGames(extensions: ["tzx"]), id: \.self){ item in
//                        if item.contains("128") {
//                            Button("128K: \(item)"){
//                                loadData(item)
//                            }
//                        } else {
//                            Button(item){
//                                loadData(item)
//                            }
//                        }
//                    }
//                }
//                .padding(20)
//
//                Menu("Download"){
//                    Button("Aaargh"){
//                        downloadAaargh()
//                    }
//
//                }
//                .padding(20)
            }
            .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .leading)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 60, idealHeight: 60, maxHeight: 120, alignment: .center)
        
        .sheet(isPresented: $headerData.isShowingSettings) {
            SettingsSheet().environmentObject(headerData)
        }
        
        .sheet(isPresented: $headerData.tapePlayerData.isShowingTapeSelector) {
            ZXTapeLoaderView(tapePlayerData: headerData.tapePlayerData, computer: computer).environmentObject(headerData.tapePlayerData)
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
    
    func eject(){
        headerData.tapePlayerData.isShowingTapeSelector = true
    }
    
    func loadData(_ file: String){
        print("Loading data.......")
        computer.load(file: file)
    }
    
    func downloadAaargh() {
        computer.download()
    }
    
    func reboot(){
        
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainHeader(headerData: HeaderData(), computer: Speccy())
    }
}
