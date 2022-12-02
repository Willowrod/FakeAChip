//
//  TapePlayerData.swift
//  FakeAChip
//
//  Created by Mike Hall on 14/06/2021.
//

import Foundation
import ZXLoaderSDK



class TapePlayerData: ObservableObject, TapeControlDelegate {
    

@Published var tapePlayerState: TapePlayerState = .Empty
   
@Published var blockName: String = "- None -"

var currentlyLoadedTape: String? = nil

var currentTapeSections: [String] = []
    
var tape: TapeDelegate? = nil
    
    
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
    
    
    func setTapeState(state: TapePlayerState) {
        tapePlayerState = state
    }

    func setCurrentBlock(name: String) {
        blockName = name
    }
    
}
