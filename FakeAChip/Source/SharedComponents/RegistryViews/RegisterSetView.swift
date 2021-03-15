//
//  RegisterSetView.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct RegisterSetView: View {
    let registers: [RegisterPair]
    var body: some View {
        VStack{
            Text("Registers")
            HStack{
                Text("Register").frame(width: 80, height: 20, alignment: .leading)
                Text("High").frame(width: 40, height: 20, alignment: .leading)
                Text("Low").frame(width: 40, height: 20, alignment: .leading)
            }
            ForEach(registers, id: \.name){pair in
                RegisterView(registerPair: pair)
            }
        }
    }
}

struct RegisterSetView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSetView(registers: [RegisterPair("AF", highValue: 0xFF, lowValue: 0x05), RegisterPair("BC", highValue: 0x00, lowValue: 0x08), RegisterPair("DE", highValue: 0x77, lowValue: 0x15)])
    }
}
