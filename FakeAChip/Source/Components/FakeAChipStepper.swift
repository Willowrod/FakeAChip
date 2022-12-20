//
//  FakeAChipStepper.swift
//  FakeAChip
//
//  Created by Mike Hall on 20/12/2022.
//

import SwiftUI

struct FakeAChipStepper: View {
    let text: String
    let value: Binding<Int>
    var isUInt: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            MainText(text: text, size: 12)
            HStack(spacing: 20){
                Button("➖"){
                    if !isUInt || value.wrappedValue > 0{
                        value.wrappedValue -= 1
                    }
                }
                .buttonStyle(PlainButtonStyle())
                MainText(text: "\(value.wrappedValue)")
                if (isUInt && value.wrappedValue >= 0 && value.wrappedValue <= 255) {
                    MainText(text: "\(UInt8(value.wrappedValue).hex())")
                }
                Button("➕"){
                    if !isUInt || value.wrappedValue < 255{
                        value.wrappedValue += 1
                    }
                }
            }
        }
    }
}

struct FakeAChipStepper_Previews: PreviewProvider {
    @State static var value = 20
    static var previews: some View {
        FakeAChipStepper(text: "Test", value: $value)
    }
}
