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
        HStack{
        ForEach(section.graphicOutput(offset: 0), id: \.self){image in
            SpectrumSprite(sprite: image)
                .frame(width: 32, height: 32, alignment: .center)
        }
        }
            HStack{
            ForEach(section.graphicOutput(offset: 1), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 2), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 3), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 4), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 5), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 6), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
            HStack{
            ForEach(section.graphicOutput(offset: 7), id: \.self){image in
                SpectrumSprite(sprite: image)
                    .frame(width: 32, height: 32, alignment: .center)
            }
            }
        }
    }
}

//struct DisassemblerGraphicView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerGraphicSection()
//    }
//}
