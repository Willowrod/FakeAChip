//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @EnvironmentObject var settings: FakeAChipData
    @State private var shouldReboot: Bool = false
    let computer: CPU
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $settings.environmentTag, label: Text("What are you doing with FakeAChip today?")) {
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
                        settings.isShowingSettings.toggle()
                    }
                    Button("♻️"){
                        shouldReboot = true
                    }
                }
                Spacer()
                Text("FPS: \(settings.debugModel.fps)")
                
                Spacer()
            }
            .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
            HStack {
                Menu("Load Snapshot"){
                    
                    ForEach(settings.listOfGames(extensions: ["sna", "z80", "zip"]), id: \.self){ item in
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
        
        .sheet(isPresented: $settings.isShowingSettings) {
            SettingsSheet().environmentObject(settings)
        }
        
        .sheet(isPresented: $settings.isShowingTapeSelector) {
            ZXTapeLoaderView().environmentObject(settings)
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
   //     settings.currentlyLoadedTape = "Spellbound, Obvs"
        settings.isShowingTapeSelector = true
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

//struct MainHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        MainHeader()
//    }
//}
