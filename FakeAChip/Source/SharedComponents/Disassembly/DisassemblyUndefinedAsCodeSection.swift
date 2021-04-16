//
//  DisassemblyUndefinedAsCodeSection.swift
//  FakeAChip
//
//  Created by Mike Hall on 13/04/2021.
//

import SwiftUI

struct DisassemblyUndefinedAsCodeSection: View {
            @ObservedObject var section: DisassemblySectionModel
            var body: some View {
                ForEach(section.codeOutput(), id: \.id){line in
                    DisassemblyRow(line: line)
                }
            }
}

//struct DisassemblyUndefinedAsCodeSection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblyUndefinedAsCodeSection()
//    }
//}
