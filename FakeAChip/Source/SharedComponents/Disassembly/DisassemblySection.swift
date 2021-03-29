//
//  DisassemblySection.swift
//  FakeAChip
//
//  Created by Mike Hall on 28/03/2021.
//

import SwiftUI

struct DisassemblySection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
     

        VStack{
            Section(header:
                        HStack{
                           // Text(section.id)
                            TextField("ID: ", text: $section.title)
                        }
            ){
                ForEach(section.lines, id: \.id){line in
                    DisassemblyRow(line: line)
                }
            }
            }
        
    }
}

//struct DisassemblySection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblySection(section: DisassemblySectionModel())
//    }
//}
