//
//  DisassemblerTextSection.swift
//  FakeAChip
//
//  Created by Mike Hall on 31/03/2021.
//

import SwiftUI

struct DisassemblerTextSection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        Text(section.textOutputValue)
            .fixedSize(horizontal: false, vertical: true)
    }
}

//struct DisassemblerTextSection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerTextSection()
//    }
//}
