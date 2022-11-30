//
//  DisassemblyList.swift
//  FakeAChip
//
//  Created by Mike Hall on 25/03/2021.
//

import SwiftUI

struct DisassemblyList: View {
    @ObservedObject var disassembly: DisassemblyModel
    @EnvironmentObject var settings: FakeAChipData
    let computer: Speccy
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    computer.pause()
                    settings.disassemble(computer.memoryDump(withRom: true), knownJumpPoints: computer.jumpPoints, fromPC: Int(computer.initialPC()))
                    computer.resume()
                }, label: {
                    Text("RUN")
                })
                Spacer()
                Menu(disassembly.showingValue()){
                    Button("Show All"){
                        disassembly.showing = nil
                    }
                    ForEach(DataType.allCases, id: \.self){type in
                        Button("Show \(type.rawValue)"){
                            disassembly.showing = type
                        }
                    }
                }
                Spacer()
                Menu("Show Undefined as: \(disassembly.undefinedDataShownAs.rawValue)"){
                    ForEach(DataType.allCases, id: \.self){type in
                        Button("Show \(type.rawValue)"){
                            disassembly.undefinedDataShownAs = type
                        }
                    }
                }
                Spacer()
                Button(action: {
                    let newItem = DisassemblySectionModel()
                    self.disassembly.sections.append(newItem)
                }, label: {
                    Image(systemName: "plus")
                })
                Button(action: {
                    disassembly.export()
                }, label: {
                    Image(systemName: "chevron.up")
                })
            }
            
            
            if let showing = disassembly.showing {
                List(disassembly.sections.filter({$0.type == showing})){ section in
                    DisassemblySection(section: section, undefinedType: disassembly.undefinedDataShownAs)
                }
                .listStyle(InsetGroupedListStyle())
            } else {
                List(disassembly.sections){ section in
                    DisassemblySection(section: section, undefinedType: disassembly.undefinedDataShownAs)
                }
                .listStyle(InsetGroupedListStyle())
            }
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
    }
}

struct DisassemblyList_Previews: PreviewProvider {
    static var previews: some View {
        let dis = DisassemblyModel()
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
        dis.sections = [mod]

        return DisassemblyList(disassembly: dis, computer: Speccy())
    }
}
