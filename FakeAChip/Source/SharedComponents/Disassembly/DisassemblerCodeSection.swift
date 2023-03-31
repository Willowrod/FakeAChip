//
//  DisassemblerCodeSection.swift
//  FakeAChip
//
//  Created by Mike Hall on 31/03/2021.
//

import SwiftUI

struct DisassemblerCodeSection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        ForEach(section.codeLines, id: \.id){line in
            DisassemblyRow(line: line)
        }
    }
}

//struct DisassemblerCodeSection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerCodeSection()
//    }
//}
