//
//  SpectrumScreen.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/03/2021.
//

import SwiftUI

struct SpectrumScreen: View {
    let screenWidth: CGFloat
    let screen: ZXBitmap
    var body: some View {
        HStack{
//        UIImage.init(bitmap: screen).map({Image(uiImage: $0)})?.resizable().frame(width: width, height: (width / 8) * 6, alignment: .center)
            UIImage.init(bitmap: screen).map({Image(uiImage: $0)})?.resizable().frame(width: screenWidth, height: (screenWidth / 8) * 6, alignment: .center)
        }
    }
}

//struct SpectrumScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SpectrumScreen()
//    }
//}
