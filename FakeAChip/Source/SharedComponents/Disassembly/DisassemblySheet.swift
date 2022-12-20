//
//  DisassemblySheet.swift
//  FakeAChip
//
//  Created by Mike Hall on 04/04/2021.
//

import SwiftUI

struct DisassemblySheet: View {
    @ObservedObject var controller: DisassemblyData

    var body: some View {
        VStack(spacing: 30){
            HStack{
                Spacer()
                Button("Close") {
                    controller.showDisassemblySettings = false
                }
                .font(.title)
            }

                Text("Disassembly settings").foregroundColor(Colour.black)

            HStack(spacing: 30){
                TextField("Character Set", text: $controller.characterSet).foregroundColor(Colour.black).textFieldStyle(StandardTextFieldStyle()).frame(width: 1024, height: 44).border(Colour.black)

                Button("Reset") {
                    controller.characterSet = ZXCharacterSet
                }
            }



        HStack(spacing: 30){

            FakeAChipStepper(text: "Text offset", value: $controller.textOffset)

            Button("Reset (0x20)") {
                controller.textOffset = 0x20
            }
            Button("0x00") {
                controller.textOffset = 0x00
            }
            Button("0x80") {
                controller.textOffset = 0x80
            }
        }
            Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity).padding(20)
    }
}

struct DisassemblySheet_Previews: PreviewProvider {
    static var previews: some View {
        DisassemblySheet(controller: mockDisassemblyData)
    }
}
