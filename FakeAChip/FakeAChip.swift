//
//  FakeAChip.swift
//  FakeAChip
//
//  Created by Michael Hall on 09/06/2022.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
#if targetEnvironment(macCatalyst)
            let stateObject = FakeAChipData(.Mac)
//            let contentView = MacMainMenu()
//                .environmentObject(stateObject)
//            if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//            window.rootViewController = KeyInputController(rootView: contentView, state: stateObject)
//            self.window = window
//            Sizing.instance.size = window.frame.size
//            window.makeKeyAndVisible()
//}

#else
let stateObject = FakeAChipData(.iOS)
//let contentView = IOSMainMenu()
    
//if let windowScene = scene as? UIWindowScene {
//    let window = UIWindow(windowScene: windowScene)
//    window.rootViewController = UIHostingController(rootView: contentView)
//    self.window = window
//    Sizing.instance.size = window.frame.size
//    window.makeKeyAndVisible()
//}
#endif
        WindowGroup {
            SpectrumView().environmentObject(stateObject)
        }
    }
}
