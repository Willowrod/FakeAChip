//
//  SaveSpeccyDataView.swift
//  FakeAChip
//
//  Created by Mike Hall on 30/11/2022.
//

import SwiftUI

struct SaveSpeccyDataView: View {
    @ObservedObject var emulatorData: EmulatorData
    @Binding var show: Bool
    @State var showAlert = false
    var body: some View {
        VStack{
            Text("Save this program?").foregroundColor(.black)
            TextField("Save Name", text: $emulatorData.saveFileName).foregroundColor(.black).textFieldStyle(StandardTextFieldStyle()).frame(width: 200, height: 44).border(.black)
            SpectrumScreenShot(screen: emulatorData.saveFileScreenShot, scale: 1.5)

            Spacer()
            HStack{
                Text("Save").foregroundColor(.blue).tappable({
                    if emulatorData.saveFileName.isEmpty{
                        showAlert = true
                    } else {
                        emulatorData.save()
                        show = false
                    }
                })
                Spacer()
                Text("Cancel").foregroundColor(.blue).tappable{
                    show = false
                }
            }
        }.background(.white).padding(40).alert(isPresented: $showAlert) {
            Alert(title: Text("Save this program?"),
                  message: Text("Please enter a name for this save file"),
                  dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct LoadSpeccyDataView: View {
    @ObservedObject var emulatorData: EmulatorData
    @Binding var show: Bool
    @State var showAlert: Bool = false
    @State var snapshot: Snapshot? = nil
    var body: some View {
        VStack{
            let snaps = emulatorData.listOfSaves()
            Text("Load a program?").foregroundColor(.black)
            ScrollView{
                ForEach(snaps, id: \.id){snap in
                    SnapshotData(snapshot: snap, load: {emulatorData.load(snap.snapshot)
                        show = false
                    }, delete: {
                            snapshot = snap
                            showAlert = true
                    })
                }
            }
            HStack{
                Spacer()
                Text("Cancel").foregroundColor(.blue).tappable{
                    show = false
                }
            }.background(.white).padding(40)
        }.padding(.vertical, 20).alert(isPresented: $showAlert) {
            Alert(title: Text("Delete this snapshot?"),
                  message: Text("The snapshot '\(snapshot?.name ?? "Unknown Name")' will be permanantly removed, continue?"),
                  primaryButton: .default(Text("Delete")){
                emulatorData.delete(snapshot?.id?.uuidString)
                showAlert = false
            }, secondaryButton: .default(Text("Cancel")){
                snapshot = nil
                showAlert = false
            }

            )
        }
    }
}

struct SnapshotData: View {
    let snapshot: Snapshot
    let load: () -> Void
    let delete: () -> Void
    var body: some View {
        HStack{
            if let screen = snapshot.screen{
                SpectrumScreenShot(screen: screen, scale: 0.3).padding(.horizontal, 20)
            }
            Text(snapshot.name ?? "Unknown snapshot").foregroundColor(.black)
            Spacer()
                            Text("Load").padding(.horizontal, 20).foregroundColor(.blue).tappable({
                                load()
                            })
                            Text("Delete").padding(.horizontal, 20).foregroundColor(.blue).tappable({
                                delete()
                            })
        }.padding(.horizontal, 20).padding(.vertical, 5)
    }
}


struct SaveSpeccyDataView_Previews: PreviewProvider {
    @State static var emulatorData = EmulatorData()
    @State static var show = false
    static var previews: some View {
        emulatorData.saveFileScreenShot = MockSpeccyScreen.screenShot
        return SaveSpeccyDataView(emulatorData: emulatorData, show: $show)
    }
}
