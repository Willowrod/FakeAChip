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
    
    
    override func becomeFirstResponder() -> Bool {
        true
    }
    
    override var keyCommands: [UIKeyCommand]? {
//        switch state.current {
//        case .usingApp:
            return [
                UIKeyCommand(input: UIKeyCommand.inputEscape, modifierFlags: [], action: #selector(keyPressed(_:)))
            ]
//            
//        default:
//            return nil
//        }
    }
    
    @objc private func keyPressed(_ sender: UIKeyCommand) {
        guard let key = sender.input else { return }
        state.delegate?.onKeyPress(key)
    }
}
