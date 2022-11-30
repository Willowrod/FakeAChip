//
//  SpeccyCanvas.swift
//  SpeccyCanvas
//
//  Created by Mike Hall on 12/09/2021.
//

import SwiftUI

struct SpectrumCanvas: View {
    let grid: [Color]
    let emulatorData: EmulatorData
    let headerData: HeaderData
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {

            Canvas { context, size in
                if (headerData.shouldResetPixels) {
                    emulatorData.emulatorPixels.removeAll()
                    headerData.shouldResetPixels = false
                }
                if emulatorData.emulatorPixels.isEmpty {
                    let pixelSize: CGFloat = size.width / 256.0
                    var count = 0
                    var x: CGFloat = 0
                    var y: CGFloat = 0
                    grid.forEach{ pixel in
                        let rect = CGRect(x: x, y: y, width: pixelSize, height: pixelSize)
                        let path = Path(rect)


                        // Fill path
                        emulatorData.emulatorPixels.append(path)
                        context.fill(path, with: .color(pixel))
                        //   context.stroke(path, with: .color(pixel))
                        x += pixelSize
                        count += 1
                        if count > 255 {
                            y += pixelSize
                            x = 0
                            count = 0
                        }
                    }
                }

                else {
                    for a in 0...(emulatorData.emulatorPixels.count - 1){
                        // Fill path
                        context.fill(emulatorData.emulatorPixels[a], with: .color(grid[a]))
                    }
                }
            }
        } else {
            Text("Canvas disabled")
        }
    }
}

struct SpectrumScreenShot: View {
    let screen: String
    var scale: CGFloat = 1
    var body: some View {
        VStack{
            if let data = Data(base64Encoded: screen), let image = UIImage(data: data){
                Image(uiImage: image).resizable().scaledToFit()
                    .frame(width: 256 * scale, height: 192 * scale)
            } else {
                Text("Mission REALLY Failed!")
            }
        }
    }
}

struct SpeccyCanvas_Previews: PreviewProvider {
    static var previews: some View {
        var screen = MockSpeccyScreen.mockSpeccyScreen
        screen.append(contentsOf: MockSpeccyScreen.mockSpeccyAttribs)
        return VStack{
            if let b64 = screen.toZXImageData() {
                SpectrumScreenShot(screen: b64)
            } else {
                Text("Mission Failed!")
            }

        }
    }
}
