//
//  MacMainMenu.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct MacMainMenu: View, KeyInput {
//    @StateObject var settings = FakeAChipData(.Mac)
    var body: some View {
//        NavigationView {
//            VStack {
//        NavigationLink(destination: SpectrumView()) {
//                      Text("Mac Button")
//                  }
//            }
//        }
        SpectrumView()
 //       .environmentObject(settings)
    }
    
    func onKeyPress(_ key: String) {
         print(key)
         guard key == UIKeyCommand.inputEscape else { return }
         // esc key was pressed
         /* ... */
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


