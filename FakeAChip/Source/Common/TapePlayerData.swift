//
//  TapePlayerData.swift
//  FakeAChip
//
//  Created by Mike Hall on 14/06/2021.
//

import Foundation



class TapePlayerData: ObservableObject {

var tapePlayerState: TapePlayerState = .Empty

var currentlyLoadedTape: String? = nil

var currentTapeSections: [String] = []

var isShowingTapeSelector = false

    
    
    func listOfGames(extensions: [String]) -> [String] {
        var snapShots: [String] = []
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        do {
            let items = try fm.contentsOfDirectory(atPath: path)

            for item in items {
                for fileExtension in extensions{
                if item.contains(".\(fileExtension)") {
                    snapShots.append(item)
                }
                }
            }
            snapShots.sort()
            
        } catch {
            // failed to read directory – bad permissions, perhaps?
        }
        return snapShots
    }

}
