//
//  FakeAWatchApp.swift
//  FakeAWatch Watch App
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

@main
struct FakeAWatch_Watch_AppApp: App {
    var body: some Scene {
        let stateObject = FakeAChipData(.iOS)
     //   Sizing.instance.size = CGSize(width: 256, height: 192)
        return WindowGroup {
            SpectrumView()
                .environmentObject(stateObject)
           // ContentView()
        }
    }
}
