//
//  EmulatorHeaderView.swift
//  EmulatorHeaderView
//
//  Created by Mike Hall on 14/09/2021.
//

import SwiftUI

struct EmulatorHeaderView: View {
    @ObservedObject var emulatorData: EmulatorData
    var body: some View {
        HStack{
            Spacer()
            Text("Show Keyboard:")
            Toggle("", isOn: $emulatorData.keyboardShowing).labelsHidden()
        }
    }
}

//struct EmulatorHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmulatorHeaderView()
//    }
//}
