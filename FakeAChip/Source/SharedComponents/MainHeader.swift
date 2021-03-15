//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @EnvironmentObject var settings: FakeAChipData
 //   @State private var mainEnvironment = settings.environment
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
            
            Button("Load"){
                loadData()
            }
            .padding(20)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    
    
    func loadData(){
        print("Loading data.......")
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainHeader()
    }
}
