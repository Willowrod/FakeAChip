//
//  DisassemblySection.swift
//  FakeAChip
//
//  Created by Mike Hall on 28/03/2021.
//

import SwiftUI

struct DisassemblySection: View {
    @ObservedObject var section: DisassemblySectionModel
    let undefinedType: DataType
    var body: some View {
     
        VStack{
            Section(header:
                        VStack{
                        HStack{
                            Text("\(section.startingLine.hex())")
                            
                TypeSelector(section: section)
                Spacer()
                HStack{
                    Text("Showing:")
                    Toggle("", isOn: $section.isShowing).labelsHidden()
                }
                        }
                
                
                            TextField("ID: ", text: $section.title)
                    .border(Color.blue)
                
            }
            ){
                if (section.isShowing){
                    switch section.type {
                    case .CODE:
                        DisassemblerCodeSection(section: section)
                    case .GRAPHICS:
                        DisassemblerGraphicSection(section: section)
                    case .DATA:
                        DisassemblerDataSection(section: section)
                    case .VALUE:
                        DisassemblerValueSection(section: section)
                    case .TEXT, .POTENTIALTEXT:
                        DisassemblerTextSection(section: section)
                    case .UNDEFINED:
                        switch undefinedType {
                        case .CODE:
                            DisassemblyUndefinedAsCodeSection(section: section)
                        case .GRAPHICS:
                            DisassemblerGraphicSection(section: section)
                        case .TEXT, .POTENTIALTEXT:
                            DisassemblerTextSection(section: section)
                        default:
                            Text("Undefined")
                        }
                    default:
                        Text("Not Supported")
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
