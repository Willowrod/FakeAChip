//
//  DisassemblySheet.swift
//  FakeAChip
//
//  Created by Mike Hall on 04/04/2021.
//

import SwiftUI

struct DisassemblySheet: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

struct DisassemblySheet_Previews: PreviewProvider {
    static var previews: some View {
        DisassemblySheet()
    }
}
