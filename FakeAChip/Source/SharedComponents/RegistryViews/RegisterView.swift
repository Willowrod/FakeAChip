//
//  RegistryView.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct RegisterView: View {
    var registerPair: RegisterPairStruct
    var body: some View {
        HStack {
            Text("\(registerPair.name)").frame(width: 80, height: 20, alignment: .leading)
            Text("\(registerPair.high.hexValue())").frame(width: 40, height: 20, alignment: .leading)
            Text("\(registerPair.low.hexValue())").frame(width: 40, height: 20, alignment: .leading)
        }
    }
}

//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView(registerPair: RegisterPairStruct(high: Register(value: 0x00), low: Register(value: 0x05), name: "AF"))
//    }
//}
