//
//  SpectrumScreen.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/03/2021.
//

import SwiftUI

struct SpectrumScreen: View { //, KeyInput
    let screenWidth: CGFloat
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        HStack{
            VStack{
            Image(uiImage: settings.vdu.image).resizable().frame(width: screenWidth, height: (screenWidth / 8) * 6, alignment: .center)
            }
            .padding(screenWidth / 18)
        }
        .background(Color.red)

    }
}

//struct SpectrumScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SpectrumScreen()
//    }
//}
