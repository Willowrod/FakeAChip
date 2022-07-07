//
//  SpectrumScreen.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/03/2021.
//

import SwiftUI

struct SpectrumScreen: View {
    let screenWidth: CGFloat
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        HStack{
            VStack{
                SpectrumCanvas(grid: settings.vdu.screen.pixels, emulatorData: settings.emulatorData, headerData: settings.headerData).frame(width: screenWidth, height: (screenWidth / 8) * 6, alignment: .center)
            }
            .padding(screenWidth / 18)
        }
        .background(settings.vdu.border)
    }
}

struct SpectrumScreen_Previews: PreviewProvider {
    static var previews: some View {
        var screenImage = ZXBitmap(width: 256, height: 192, color: ZXColor.blue)
        screenImage.setAttributes(bytes: MockSpeccyScreen.mockSpeccyAttribs.prefix(upTo: MockSpeccyScreen.mockSpeccyAttribs.count), flashing: false)
        screenImage.blit(bytes: MockSpeccyScreen.mockSpeccyScreen.prefix(upTo: MockSpeccyScreen.mockSpeccyScreen.count))
        let screen = VDU(screen: screenImage, border: .black)
        Sizing.instance.size = UIScreen.main.bounds.size
        let mockData = FakeAChipMock.init(cpu: EmptyZXSpectrum()).mock(host: .iOS)
        mockData.vdu = screen
        return SpectrumScreen(screenWidth: Sizing.instance.actualWidth()).environmentObject(mockData)
    }
}
