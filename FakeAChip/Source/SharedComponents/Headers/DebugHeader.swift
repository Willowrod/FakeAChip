//
//  DebugHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/05/2022.
//

import SwiftUI

struct DebugHeader: View {
    @ObservedObject var diag: DiagnosticData
    var body: some View {
        HStack {
            Spacer()
            Text(diag.currentDebugOpCode.hex())
            Spacer()
            HStack {
                Button("▶️"){
                    diag.resetOpCode()
                }
                Button("⬅️"){
                    diag.previousOpCode()
                }
                Button("➡️"){
                    diag.nextOpCode()
                }
            }
            Spacer()
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
    }
}

//struct DebugHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        DebugHeader(diag: DiagnosticData())
//    }
//}
