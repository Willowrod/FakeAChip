//
//  DisassemblyHeaderView.swift
//  DisassemblyHeaderView
//
//  Created by Mike Hall on 30/08/2021.
//

import SwiftUI

struct DisassemblyHeaderView: View {
    @ObservedObject var disassembly: DisassemblyData
    let computer: CPU
    var body: some View {
        HStack(spacing: 50) {
        Button("Save"){
            print("Save Disassembly")
            saveDisassembly()
        }
            
            Button("Load"){
                print("Load Disassembly")
                loadDisassembly()
            }

//            Button("Create"){
//                print("Create a new Disassembly")
//                createDisassembly()
//            }
            
            
        }.sheet(isPresented: $disassembly.offerSaveDisassembly) {
            SaveDisassemblyView(disassembly: disassembly)
        }.sheet(isPresented: $disassembly.offerLoadDisassembly) {
            LoadDisassembly(controller: disassembly)
        }
    }
    
    func saveDisassembly() {
        // disassembly.disassembly.export()
         disassembly.offerSaveDisassembly = true
    }
    
    func loadDisassembly() {
        // computer.importDisassembly()
        disassembly.offerLoadDisassembly = true
    }

    func createDisassembly() {
        disassembly.offerCreateDisassembly = true
    }
    
}

//struct DisassemblyHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblyHeaderView()
//    }
//}
