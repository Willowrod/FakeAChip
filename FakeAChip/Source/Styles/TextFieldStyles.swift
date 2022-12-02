//
//  TextFieldStyles.swift
//  FakeAChip
//
//  Created by Mike Hall on 30/11/2022.
//

import Foundation
import SwiftUI


struct StandardTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 10)
            .background(Colour.white)
            .frame(height: 55)
    }
}
