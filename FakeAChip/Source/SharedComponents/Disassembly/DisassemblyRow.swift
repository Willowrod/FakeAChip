//
//  DisassemblyRow.swift
//  FakeAChip
//
//  Created by Mike Hall on 25/03/2021.
//

import SwiftUI
struct DisassemblyRow: View {
    @ObservedObject var line: DisassemblyLineModel
    var body: some View {
        HStack{
            HStack{
                Text(line.line.hex())
                Text(line.code)
                TextField("Meaning", text: $line.title)
            }
        }
    }
}

struct DisassemblyRow_Previews: PreviewProvider {
    static var previews: some View {
        DisassemblyRow(line: DisassemblyLineModel())
    }
}
