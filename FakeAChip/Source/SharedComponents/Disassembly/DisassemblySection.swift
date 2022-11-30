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
        Section(header:
                    VStack{
            HStack{
                Button("➖"){
                    section.temporaryStartLine = section.temporaryStartLine &- 1
                }
                .buttonStyle(PlainButtonStyle())
                Text("\(section.temporaryStartLine.hex())")
                Button("➕"){
                    section.temporaryStartLine = section.temporaryStartLine &+ 1
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                TypeSelector(section: section)
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
                        // DisassemblerCodeSection(section: section)
                        DisassemblyUndefinedAsCodeSection(section: section)
                    case .GRAPHICS:
                        DisassemblerGraphicSection(section: section)
                    case .TEXT, .POTENTIALTEXT:
                        DisassemblerTextSection(section: section)
                    case .DATA:
                        DisassemblerDataSection(section: section)
                    case .VALUE:
                        DisassemblerValueSection(section: section)
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

struct DisassemblySection_Previews: PreviewProvider {
    static var previews: some View {
        let mod = DisassemblySectionModel()
        let lin = DisassemblyLineModel()
        lin.bytes = [0x00]
        lin.code = "NOP"
        lin.line = 0x6000
        let lin2 = DisassemblyLineModel()
        lin2.bytes = [0x00]
        lin2.code = "NOP"
        lin2.line = 0x6001
        let lin3 = DisassemblyLineModel()
        lin3.bytes = [0x00]
        lin3.code = "NOP"
        lin3.line = 0x6002
        let lin4 = DisassemblyLineModel()
        lin4.bytes = [0x00]
        lin4.code = "NOP"
        lin4.line = 0x6003
        mod.startingLine = 0x6000
        mod.bytes = [0x00]
        mod.type = .CODE
        mod.lines = [lin, lin2, lin3, lin4]
        mod.title = "My Title"
        mod.isShowing = true
        return DisassemblySection(section: mod, undefinedType: .CODE)
    }
}
