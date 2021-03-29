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
                    settings.disassemble(computer.memoryDump(withRom: true), fromPC: Int(computer.initialPC()))
                                            }, label: {
                                                Text("RUN")
                                            })
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
            
            
//       NavigationView{
            List(disassembly.sections){ section in
                    DisassemblySection(section: section)
            }
            .listStyle(InsetGroupedListStyle())
//            .navigationBarTitle("Disassembly")
//           // .navigationBarItems(trailing:
//            .toolbar{
//                ToolbarItemGroup(placement: .navigationBarTrailing){
//        Button(action: {
//                                        let newItem = DisassemblySectionModel()
//                                        self.disassembly.sections.append(newItem)
//                                    }, label: {
//                                        Image(systemName: "plus")
//                                    })
//                                Button(action: {
//                                    disassembly.export()
//                                }, label: {
//                                    Image(systemName: "chevron.up")
//                                })
//            }
//       }
//    }
        }
    }
    
    func toggleSection(id: String){
        //     settings.disassembly.$sections.first(where: {$0.id == id}) = DisassemblySection()
    }
}

//struct DisassemblyList_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            DisassemblyList(disassembly: DisassemblyModel())
//        }
//    }
//}
