//
//  DisassemblyHeaderView.swift
//  DisassemblyHeaderView
//
//  Created by Mike Hall on 30/08/2021.
//

import SwiftUI

struct DisassemblyHeaderView: View {
    @ObservedObject var disassembly: DisassemblyModel
    let computer: CPU
    var body: some View {
        HStack {
        Button("Save"){
            print("Save Disassembly")
            saveDisassembly()
        }
            
            Button("Load"){
                print("Load Disassembly")
                loadDisassembly()
            }
            
            
        }
    }
    
    func saveDisassembly() {
        disassembly.export()
    }
    
    func loadDisassembly() {
        computer.importDisassembly()
    }
    
}

//struct DisassemblyHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblyHeaderView()
//    }
//}
