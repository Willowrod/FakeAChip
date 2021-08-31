//
//  Helpers.swift
//  Helpers
//
//  Created by Mike Hall on 30/08/2021.
//

import Foundation



func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}



func getPath(forFile: String) -> URL {
    let path = getDocumentsDirectory().appendingPathComponent(forFile)
    print (path.path)
    return path
}
