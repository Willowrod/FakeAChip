//
//  EmulatorHeaderView.swift
//  EmulatorHeaderView
//
//  Created by Mike Hall on 14/09/2021.
//

import SwiftUI

struct EmulatorHeaderView: View {
    @ObservedObject var emulatorData: EmulatorData
    let computer: CPU
    var body: some View {
        VStack{
            HStack{
                Button("Save"){
                    print("Save Emulation")
                    saveEmulation()
                }
                
                Button("Load"){
                    print("Load Emulation")
                    loadEmulation()
                }
                Spacer()
                Text("Show Keyboard:")
                Toggle("", isOn: $emulatorData.keyboardShowing).labelsHidden()
            }
            .padding(20)
        }
    }
    
    func saveEmulation() {
        computer.saveEmulation()
    }
    
    func loadEmulation() {
        computer.loadEmulation()
    }
    
}

//struct EmulatorHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmulatorHeaderView()
//    }
//}
