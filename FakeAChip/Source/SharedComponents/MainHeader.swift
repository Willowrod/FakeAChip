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
            Picker(selection: $settings.environmentTag, label: Text("What is your favorite color?")) {
                Text("Emulation").tag(0)
                Text("Disassembly").tag(1)
                Text("Coding").tag(2)
            }
            .padding(20)
            .pickerStyle(SegmentedPickerStyle())
            .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .leading)
            
            
            Spacer()
            Text("FPS: \(settings.debugModel.fps)")
            Spacer()
            
            Menu("Load"){
                ForEach(settings.listOfGames(extensions: ["sna", "z80"]), id: \.self){ item in
                                    Button("Game: \(item)"){
                                        loadData(item)
                                    }
                }
//                Button("deflektor.sna"){
//                    loadData("deflektor.sna")
//                }
//                Button("middleoflakecheat.z80"){
//                    loadData("middleoflakecheat.z80")
//                }
            }
            .padding(20)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .center)
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
