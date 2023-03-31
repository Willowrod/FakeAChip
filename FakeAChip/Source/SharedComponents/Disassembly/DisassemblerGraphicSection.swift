//
//  DisassemblerGraphicView.swift
//  FakeAChip
//
//  Created by Mike Hall on 08/04/2021.
//

import SwiftUI

struct DisassemblerGraphicSection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        VStack{
            ForEach(section.graphicSprites, id: \.index) {graphicLine in
                HStack{
                    Button{
                        chooseOffset(graphicLine.index)
                    } label: {
                        Text("Select")
                    }
                    .buttonStyle(PlainButtonStyle())
                    ForEach(graphicLine.graphics, id: \.self){image in
                        SpectrumSprite(sprite: image)
                            .frame(width: 32, height: 32, alignment: .center)
                    }

                }

            }

   //         ForEach(0..<8) { i in
//
//            ForEach(section.graphicSprites, id: \.index){graphicSet in
//                HStack{
//                    Button{
//                        chooseOffset(graphicSet.index)
//                    } label: {
//                        Text("Select")
//                    }
//                    .buttonStyle(PlainButtonStyle())
//                    ForEach(section.graphicOutput(offset: i), id: \.self){image in
//                        SpectrumSprite(sprite: image)
//                            .frame(width: 32, height: 32, alignment: .center)
//                    }
//
//                }
//            }
        }
    }

    func chooseOffset(_ offset: Int) {
        print("Offset \(offset) chosen")
    }
}

//struct DisassemblerGraphicView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerGraphicSection()
//    }
//}
