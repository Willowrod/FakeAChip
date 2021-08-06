//
//  ZXTapeLoader.swift
//  FakeAChip
//
//  Created by Mike Hall on 05/05/2021.
//

import Foundation



protocol TapeDelegate {
    func fetchData(tState: Int) -> (signal: Bool, reset: Bool)?
    func startTape()
    func fastForward()
    func rewind()
}

protocol TapeControlDelegate {
    func setTapeState(state: TapePlayerState)
    func setCurrentBlock(name: String)
}
