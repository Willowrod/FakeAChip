//
//  NonWatch.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

struct SpectrumEmulationView: View {
    let computer: Speccy
    let host: HostSystem

    @State private var orientation = UIDeviceOrientation.unknown
    var body: some View {
        Group {
            switch host {
            case .iOS:
                Spacer()
                Group {
                    if orientation.isLandscape || orientation.isFlat {
                        ZStack{
                            VStack {
                                SpectrumScreen(screenWidth: Sizing.instance.widthforLandscape())
                                Spacer()
                            }
                            VStack {
                                Spacer()
                                ZXKeyboard(keyWidth: Sizing.instance.height() / 11, keyHeight: Sizing.instance.width() / 16)
                            }
                        }
                    } else {
                        VStack{
                            SpectrumScreen(screenWidth: Sizing.instance.width())
                            ZXKeyboard(keyWidth: Sizing.instance.width() / 11, keyHeight: Sizing.instance.width() / 16)
                        }
                    }
                }
                .onRotate { newOrientation in
                    orientation = newOrientation
                }
            case .Mac:
                SpectrumScreen(screenWidth: Sizing.instance.width())
            }
        }
    }
}
