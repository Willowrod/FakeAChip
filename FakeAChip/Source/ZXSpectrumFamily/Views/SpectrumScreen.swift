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
                
                    if #available(iOS 15.0, macOS 12.0, *) {
                        SpectrumCanvas(grid: settings.vdu.screen.pixels, emulatorData: settings.emulatorData, headerData: settings.headerData).frame(width: screenWidth, height: (screenWidth / 8) * 6, alignment: .center)
                    } else {
                        Image(uiImage: UIImage(bitmap: settings.vdu.screen) ?? UIImage()).resizable().frame(width: screenWidth, height: (screenWidth / 8) * 6, alignment: .center)
                    }
            }
            .padding(screenWidth / 18)
        }
        .background(settings.vdu.border)

    }
}

//struct SpectrumScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SpectrumScreen()
//    }
//}
