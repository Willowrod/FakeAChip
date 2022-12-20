//
//  Int+Characters.swift
//  FakeAChip
//
//  Created by Mike Hall on 19/12/2022.
//

import Foundation

extension Int {
    func toZXCharacter(_ characterSet: String = ZXCharacterSet) -> String {
        if self >= 0 && self < characterSet.count {
            return characterSet.characterAt(self)  //[self]
        }
        return "§"
    }
}
