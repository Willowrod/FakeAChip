//
//  Int+Attributes.swift
//  inSpeccytor
//
//  Created by Mike Hall on 15/12/2020.
//

import Foundation

extension UInt8 {
    func ink() -> ZXColor {
        let bright = self.isSet(bit: 6)
        switch (self & 0b00000111){
        case 0:
            return ZXColor.black
        case 1:
            return bright ? ZXColor.bright_blue : ZXColor.blue
        case 2:
            return bright ? ZXColor.bright_red : ZXColor.red
        case 3:
            return bright ? ZXColor.bright_magenta : ZXColor.magenta
        case 4:
            return bright ? ZXColor.bright_green : ZXColor.green
        case 5:
            return bright ? ZXColor.bright_cyan : ZXColor.cyan
        case 6:
            return bright ? ZXColor.bright_yellow : ZXColor.yellow
        case 7:
            return bright ? ZXColor.bright_white : ZXColor.white
        default:
            return ZXColor.black
        }
}
    func paper() -> ZXColor {
        let bright = self.isSet(bit: 6)
        switch ((self & 0b00111000) >> 3){
        case 0:
            return ZXColor.black
        case 1:
            return bright ? ZXColor.bright_blue : ZXColor.blue
        case 2:
            return bright ? ZXColor.bright_red : ZXColor.red
        case 3:
            return bright ? ZXColor.bright_magenta : ZXColor.magenta
        case 4:
            return bright ? ZXColor.bright_green : ZXColor.green
        case 5:
            return bright ? ZXColor.bright_cyan : ZXColor.cyan
        case 6:
            return bright ? ZXColor.bright_yellow : ZXColor.yellow
        case 7:
            return bright ? ZXColor.bright_white : ZXColor.white
        default:
            return ZXColor.black
        }
}
    
    func border() -> ZXColor {
        switch (self & 0b00000111){
        case 0:
            return ZXColor.black
        case 1:
            return ZXColor.blue
        case 2:
            return ZXColor.red
        case 3:
            return ZXColor.magenta
        case 4:
            return ZXColor.green
        case 5:
            return ZXColor.cyan
        case 6:
            return ZXColor.yellow
        case 7:
            return ZXColor.white
        default:
            return ZXColor.black
        }
}
}
