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
            Text("Create a disassembly?").foregroundColor(Colour.black)
            TextField("Save Name", text: $disassembly.disassemblyName).foregroundColor(Colour.black).textFieldStyle(StandardTextFieldStyle()).frame(width: 200, height: 44).border(Colour.black)
            SpectrumScreenShot(screen: disassembly.currentScreenShot(), scale: 1.5)

            Spacer()
            HStack{
                Text("Save").foregroundColor(.blue).tappable({
                    if disassembly.disassemblyName.isEmpty{
                        showAlert = true
                    } else {
                        disassembly.save()
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

struct LoadSaveDisassembly_Previews: PreviewProvider {
    static var previews: some View {
        SaveDisassemblyView(disassembly: DisassemblyData())
    }
}
