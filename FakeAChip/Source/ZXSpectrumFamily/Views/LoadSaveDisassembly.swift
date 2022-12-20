//
//  LoadSaveDisassembly.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/12/2022.
//

import SwiftUI

struct SaveDisassemblyView: View {
    @ObservedObject var disassembly: DisassemblyData
    @State var showAlert = false
    var body: some View {
        VStack{
            if let currentDisassembly = disassembly.currentDisassembly{
                CreateDisassemblyVersion(disassembly: disassembly, currentDisassembly: currentDisassembly)
            } else {
                CreateDisassembly(disassembly: disassembly)
            }
        }.background(Colour.white).padding(40).alert(isPresented: $showAlert) {
            Alert(title: Text("Save this disassembly?"),
                  message: Text("Please enter a name for this disassembly"),
                  dismissButton: .default(Text("OK"))
            )
        }
    }
}


struct CreateDisassembly: View {
    @ObservedObject var disassembly: DisassemblyData
    @State var showAlert = false
    var body: some View {
        VStack {
            Text("Create a disassembly?").foregroundColor(Colour.black)
            TextField("Save Name", text: $disassembly.disassemblyName).foregroundColor(Colour.black).textFieldStyle(StandardTextFieldStyle()).frame(width: 200, height: 44).border(Colour.black)
            SpectrumScreenShot(screen: disassembly.currentScreenShot(), scale: 1.5)

            Spacer()
            HStack{
                Text("Save").foregroundColor(.blue).tappable({
                    if disassembly.disassemblyName.isEmpty{
                        showAlert = true
                    } else {
                        disassembly.create()
                    }
                })
                Spacer()
                Text("Cancel").foregroundColor(.blue).tappable{
                    disassembly.offerSaveDisassembly = false
                }
            }
        }
    }
}

struct CreateDisassemblyVersion: View {
    @ObservedObject var disassembly: DisassemblyData
    let currentDisassembly: Disassembly
    @State var showAlert = false
    var body: some View {
        VStack {
            Text("Create a new disassembly version?").foregroundColor(Colour.black)
//            TextField("Save Name", text: $disassembly.disassemblyName).foregroundColor(Colour.black).textFieldStyle(StandardTextFieldStyle()).frame(width: 200, height: 44).border(Colour.black)
            MainText(text: disassembly.disassemblyName)
            MainText(text: "Version: \(disassembly.currentMajor).\(disassembly.currentMinor).\(disassembly.currentRevision)")
            SpectrumScreenShot(screen: disassembly.currentScreenShot(), scale: 1.5)
            Text("Overwrite current version (\(disassembly.currentMajor).\(disassembly.currentMinor).\(disassembly.currentRevision))").foregroundColor(.blue).tappable({
                if disassembly.disassemblyName.isEmpty{
                    showAlert = true
                } else {
                    disassembly.overwrite()
                }
            })

            Text("Create new revision (\(disassembly.currentMajor).\(disassembly.currentMinor).\(disassembly.currentRevision + 1))").foregroundColor(.blue).tappable({
                if disassembly.disassemblyName.isEmpty{
                    showAlert = true
                } else {
                    disassembly.createVersion(majo: disassembly.currentMajor, mino: disassembly.currentMinor, revi:disassembly.currentRevision + 1)
                }
            })

            Text("Create new minor version (\(disassembly.currentMajor).\(disassembly.currentMinor + 1).0)").foregroundColor(.blue).tappable({
                if disassembly.disassemblyName.isEmpty{
                    showAlert = true
                } else {
                    disassembly.createVersion(majo: disassembly.currentMajor, mino: disassembly.currentMinor + 1, revi:0)
                }
            })

            Text("Create new major version (\(disassembly.currentMajor + 1).0.0)").foregroundColor(.blue).tappable({
                if disassembly.disassemblyName.isEmpty{
                    showAlert = true
                } else {
                    disassembly.createVersion(majo: disassembly.currentMajor + 1, mino: 0, revi:0)
                }
            })


            Spacer()
            HStack{
//                Text("Save").foregroundColor(.blue).tappable({
//                    if disassembly.disassemblyName.isEmpty{
//                        showAlert = true
//                    } else {
//                        disassembly.createVersion()
//                    }
//                })
                Spacer()
                Text("Cancel").foregroundColor(.blue).tappable{
                    disassembly.offerSaveDisassembly = false
                }
            }
        }.padding(20)
    }
}

struct LoadDisassembly: View {
    @ObservedObject var controller: DisassemblyData
    @State var disassembly: Disassembly? = nil
    @State var showAlert: Bool = false
    var body: some View {
        VStack{
            let disassemblies = controller.getAllDisassemblies()
            Text("Load a disassembly?").foregroundColor(Colour.black)
            ScrollView{
                ForEach(disassemblies, id: \.id){disassemblyModel in
                    DisassemblyInstanceView(controller: controller, disassembly: disassemblyModel, load: {
                        controller.loadLatest(disassemblyModel)
                    },
                                            version: {},
                                            delete: {
disassembly = disassemblyModel
                        showAlert = true})
                }
            }
            HStack{
                Spacer()
                Text("Cancel").foregroundColor(.blue).tappable{
                    controller.offerLoadDisassembly = false
                }
            }.padding(40)
        }.background(Colour.white.ignoresSafeArea(edges: .all)).padding(.vertical, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Delete this snapshot?"),
                      message: Text("The disassembly '\(disassembly?.name ?? "Unknown Name")' and all of it's versions will be permanantly removed. Continue?"),
                      primaryButton: .default(Text("Delete")){
                    controller.delete(id: disassembly?.id?.uuidString)
                    showAlert = false
                }, secondaryButton: .default(Text("Cancel")){
                    showAlert = false
                }

                )
            }
    }
}

struct DisassemblyInstanceView: View {
    @ObservedObject var controller: DisassemblyData
    let disassembly: Disassembly
    let load: () -> Void
    let version: () -> Void
    let delete: () -> Void
    var body: some View {
        HStack{
            if let screen = disassembly.originalScreenShot{
                SpectrumScreenShot(screen: screen, scale: 0.3).padding(.horizontal, 20)
            }
            Text(disassembly.name ?? "Unknown disassembly").foregroundColor(Colour.black)
            Spacer()
            VStack{
                Text("Load Latest").padding(.horizontal, 20).foregroundColor(.blue).tappable({
                    load()
                })
                Text("Choose Version").padding(.horizontal, 20).foregroundColor(.blue).tappable({
                    version()
                })
                Text("Delete Disassembly").padding(.horizontal, 20).foregroundColor(.blue).tappable({
                    delete()
                })
            }
        }.padding(.horizontal, 20).padding(.vertical, 5)
    }
}

struct LoadSaveDisassembly_Previews: PreviewProvider {
    static var previews: some View {
        SaveDisassemblyView(disassembly: mockDisassemblyData)
    }
}
