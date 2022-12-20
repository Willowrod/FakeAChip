//
//  TextStyles.swift
//  FakeAChip
//
//  Created by Mike Hall on 20/12/2022.
//

import Foundation
import SwiftUI

struct MainText: View {
    let text: String
    var size: CGFloat = 18
    var align: TextAlignment = .center
    var colour: Color = .black
    var body: some View {
        Text(text).font(.system(size: size)).foregroundColor(colour).multilineTextAlignment(align)
    }
}
