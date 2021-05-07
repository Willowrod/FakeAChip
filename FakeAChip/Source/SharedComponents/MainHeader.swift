//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @EnvironmentObject var settings: FakeAChipData
    let computer: CPU
    var body: some View {
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
            Button("▶️"){
                computer.resume()
            }
            Button("⏸"){
                computer.pause()
            }
            Spacer()
            Button("⚙️"){
                settings.isShowingSettings.toggle()
            }
            Spacer()
            Text("FPS: \(settings.debugModel.fps)")
            
            Spacer()
            
            Menu("Load"){
                
                Button("TTR.tzx"){
                    loadData("ticket_to_ride.tzx")
                }
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
//                Button("middleoflakecheat.z80"){
//                    loadData("middleoflakecheat.z80")
//                }
            }
            .padding(20)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .center)
        
        .sheet(isPresented: $settings.isShowingSettings) {
            SettingsSheet().environmentObject(settings)
        }
        
    }
    
    
    func loadData(_ file: String){
        print("Loading data.......")
        computer.load(file: file)
    }
}

//struct MainHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        MainHeader()
//    }
//}
