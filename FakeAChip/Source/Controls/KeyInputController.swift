//
//  KeyInputController.swift
//  FakeAChip
//
//  Created by Mike Hall on 19/03/2021.
//

import Foundation
import SwiftUI

protocol KeyInput {
    
    func onKeyPress(_ key: String)
}


class KeyInputController<Content: View>: UIHostingController<Content> {
    
    private let state: FakeAChipData
    
    init(rootView: Content, state: FakeAChipData) {
        self.state = state
        super.init(rootView: rootView)
    }
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        guard let key = presses.first?.key else {
            return
        }
        keyboardInteraction(key: key.keyCode.rawValue, pressed: true)
    }
    
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        guard let key = presses.first?.key else {
            return
        }
        keyboardInteraction(key: key.keyCode.rawValue, pressed: false)
    }
    
    func keyboardInteraction(key: Int, pressed: Bool){
         state.keyboardInteraction(key: key, pressed: pressed)
    }
    
}
