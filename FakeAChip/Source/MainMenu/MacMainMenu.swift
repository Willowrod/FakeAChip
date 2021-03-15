//
//  MacMainMenu.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct MacMainMenu: View {
    @StateObject var settings = FakeAChipData(.Mac)
    var body: some View {
//        NavigationView {
//            VStack {
//        NavigationLink(destination: SpectrumView()) {
//                      Text("Mac Button")
//                  }
//            }
//        }
        SpectrumView()
        .environmentObject(settings)
    }
    
    func pressButton(){
        print("Boo to the Mac!")
    }
}

struct MacMainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MacMainMenu()
    }
}
