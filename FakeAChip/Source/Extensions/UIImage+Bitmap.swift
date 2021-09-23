//
//  UIImage+Bitmap.swift
//  inSpeccytor
//
//  Created by Mike Hall on 14/12/2020.
//

import Foundation
import SwiftUI
import UIKit

extension UIImage {
        convenience init?(bitmap: ZXBitmap) {
            let alphaInfo = CGImageAlphaInfo.premultipliedLast
            let bytesPerPixel = MemoryLayout<ZXColour>.stride
            let bytesPerRow = bitmap.width * bytesPerPixel
    
            guard let providerRef = CGDataProvider(data: Data(bytes: bitmap.pixelsOld, count: bitmap.height * bytesPerRow) as CFData) else {
                return nil
            }
    
            guard let cgImage = CGImage(
                width: bitmap.width,
                height: bitmap.height,
                bitsPerComponent: 8,
                bitsPerPixel: bytesPerPixel * 8,
                bytesPerRow: bytesPerRow,
                space: CGColorSpaceCreateDeviceRGB(),
                bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
                provider: providerRef,
                decode: nil,
                shouldInterpolate: true,
                intent: .defaultIntent
            ) else {
                return nil
            }
    
            self.init(cgImage: cgImage)
        }
    
    
//    convenience init?(bitmap: ZXBitmap) {
//        let alphaInfo = CGImageAlphaInfo.premultipliedLast
//        let bytesPerPixel = MemoryLayout<ZXColor>.stride
//        let bytesPerRow = bitmap.width * bytesPerPixel
//
//        guard let providerRef = CGDataProvider(data: Data(bytes: bitmap.pixels, count: bitmap.height * bytesPerRow) as CFData) else {
//            return nil
//        }
//
//        guard let cgImage = CGImage(
//            width: bitmap.width,
//            height: bitmap.height,
//            bitsPerComponent: 8,
//            bitsPerPixel: bytesPerPixel * 8,
//            bytesPerRow: bytesPerRow,
//            space: CGColorSpaceCreateDeviceRGB(),
//            bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
//            provider: providerRef,
//            decode: nil,
//            shouldInterpolate: true,
//            intent: .defaultIntent
//        ) else {
//            return nil
//        }
//        
//        self.init(cgImage: cgImage)
//    }
//    
////    convenience init?(bitmap: ZXBitmap, image: CGImage) {
////        let alphaInfo = CGImageAlphaInfo.premultipliedLast
////        let bytesPerPixel = MemoryLayout<ZXColor>.stride
////        let bytesPerRow = bitmap.width * bytesPerPixel
////
////        guard let providerRef = CGDataProvider(data: Data(bytes: bitmap.pixels, count: bitmap.height * bytesPerRow) as CFData) else {
////            return nil
////        }
////
//////        guard let cgImage = CGImage(
//////            width: bitmap.width,
//////            height: bitmap.height,
//////            bitsPerComponent: 8,
//////            bitsPerPixel: bytesPerPixel * 8,
//////            bytesPerRow: bytesPerRow,
//////            space: CGColorSpaceCreateDeviceRGB(),
//////            bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
//////            provider: providerRef,
//////            decode: nil,
//////            shouldInterpolate: true,
//////            intent: .defaultIntent
//////        ) else {
//////            return nil
//////        }
////
////        var myImage = image
////        myImage.copy(maskingColorComponents: bitmap.pixels)
////
////        self.init(cgImage: cgImage)
////    }
//
//    
//    convenience init?(bitmap: StandardSprite) {
//        let alphaInfo = CGImageAlphaInfo.premultipliedLast
//        let bytesPerPixel = MemoryLayout<ZXColor>.stride
//        let bytesPerRow = bitmap.width * bytesPerPixel
//
//        guard let providerRef = CGDataProvider(data: Data(bytes: bitmap.pixels, count: bitmap.height * bytesPerRow) as CFData) else {
//            return nil
//        }
//
//        guard let cgImage = CGImage(
//            width: bitmap.width,
//            height: bitmap.height,
//            bitsPerComponent: 8,
//            bitsPerPixel: bytesPerPixel * 8,
//            bytesPerRow: bytesPerRow,
//            space: CGColorSpaceCreateDeviceRGB(),
//            bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
//            provider: providerRef,
//            decode: nil,
//            shouldInterpolate: true,
//            intent: .defaultIntent
//        ) else {
//            return nil
//        }
//
//        self.init(cgImage: cgImage)
//    }
}
