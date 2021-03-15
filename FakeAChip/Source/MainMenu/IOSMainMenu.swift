//
//  IOSMainMenu.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct IOSMainMenu: View {
    @StateObject var settings = FakeAChipData(.iOS)
    var body: some View {
//        NavigationView {
//            VStack {
//        NavigationLink(destination: SpectrumView()) {
//                      Text("iOS Button")
//                  }
//            }
//        }
        SpectrumView()
        .environmentObject(settings)
    }
}

struct IOSMainMenu_Previews: PreviewProvider {
    static var previews: some View {
        IOSMainMenu()
    }
}
