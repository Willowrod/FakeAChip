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
                            TextField("ID: ", text: $section.title)
                            Spacer()
                            TypeSelector(section: section)
                            Spacer()
                            Toggle("Showing:", isOn: $section.isShowing)
                        }
            ){
                if (section.isShowing){
                    switch section.type {
                    case .CODE:
                        DisassemblerCodeSection(section: section)
                    case .TEXT:
                        DisassemblerTextSection(section: section)
                    default:
                        Text("Other shizzle")
                    }
     
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
