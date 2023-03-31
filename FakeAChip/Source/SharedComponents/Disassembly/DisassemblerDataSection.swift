//
//  DisassemblerDataSection.swift
//  DisassemblerDataSection
//
//  Created by Mike Hall on 15/08/2021.
//

import SwiftUI

struct DisassemblerDataSection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        Text(section.textOutputValue)
            .fixedSize(horizontal: false, vertical: true)
    }
}

//struct DisassemblerDataSection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerDataSection()
//    }
//}
