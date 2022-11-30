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
            Button{
                chooseOffset(0)
            } label: {
                HStack{
        ForEach(section.graphicOutput(offset: 0), id: \.self){image in
            SpectrumSprite(sprite: image)
                .frame(width: 32, height: 32, alignment: .center)
        }
            }
        }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(1)
            } label: {
                HStack{
                    ForEach(section.graphicOutput(offset: 1), id: \.self){image in
                        SpectrumSprite(sprite: image)
                            .frame(width: 32, height: 32, alignment: .center)
                    }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(2)
            } label: {
                HStack{
            ForEach(section.graphicOutput(offset: 2), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(3)
            } label: {
                HStack{
            ForEach(section.graphicOutput(offset: 3), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(4)
            } label: {
                HStack{
            ForEach(section.graphicOutput(offset: 4), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(5)
            } label: {
                HStack{
            ForEach(section.graphicOutput(offset: 5), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(6)
            } label: {
                HStack{
            ForEach(section.graphicOutput(offset: 6), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
                }
            }
            .buttonStyle(PlainButtonStyle())
            Button{
                chooseOffset(7)
            } label: {
                HStack{
                    ForEach(section.graphicOutput(offset: 7), id: \.self){image in
                        SpectrumSprite(sprite: image)
                            .frame(width: 32, height: 32, alignment: .center)
                    }
                }
            }
            .buttonStyle(PlainButtonStyle())
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
