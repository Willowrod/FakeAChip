//
//  AppDelegate.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
     //   FirebaseApp.configure()
        runASCIITest()
        return true
    }

    func runASCIITest() {
        let chars: [UInt8] = [12,1,40,18,23,29,14,27,12,24,22]

        //    let chars: [UInt8] = [0x5b,0x53,0x49,0x5a,0x45,0x20,0x31]
        for a in -128 ... 128 {
            print ("\(a): \(chars.toZXCharacterString(offset: a))")
        }
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

