//
//  SpectrumSprite.swift
//  SpectrumSprite
//
//  Created by Mike Hall on 13/09/2021.
//

import SwiftUI

struct SpectrumSprite: View {
    let sprite: StandardSprite
    var body: some View {
        
            Canvas { context, size in
                let pixelSize: CGFloat = size.width / 8
                var count = 0
                var x: CGFloat = 0
                var y: CGFloat = 0
                sprite.pixels.forEach{ pixel in
                    
                    let rect = CGRect(x: x, y: y, width: pixelSize, height: pixelSize)
                    let path = Path(rect)

                    
                    // Fill path
                    context.fill(path, with: .color(pixel))
                x += pixelSize
                                 count += 1
                                 if count > 7 {
                        y += pixelSize
                        x = 0
                        count = 0
                    }
                }

            }
    }
}

//struct SpectrumSprite_Previews: PreviewProvider {
//    static var previews: some View {
//        SpectrumSprite()
//    }
//}
