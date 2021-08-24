//
//  SpeccyUnused.swift
//  SpeccyUnused
//
//  Created by Mike Hall on 24/08/2021.
//

import Foundation
//import os.log

extension Speccy {
    func heapSize(_ obj: AnyObject) {
        NSLog("size of Object: %zd", malloc_size(Unmanaged.passRetained(obj).toOpaque()));
    }
    
    
//    static let logHandler = OSLog(subsystem: "com.willowrod.FakeAChip", category: .pointsOfInterest)
}
