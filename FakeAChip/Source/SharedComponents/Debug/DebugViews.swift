//
//  DebugViews.swift
//  FakeAChip
//
//  Created by Mike Hall on 05/07/2022.
//

import SwiftUI

struct SpectrumTestText: View {
    let text: String
    var body: some View {
        HStack{
            Text(text)
        }
    }
}

struct DebugTextView: View {
    let key: String
    let value: String
    var body: some View {
        HStack{
            Text("\(key): \(value)")
        }
    }
}
