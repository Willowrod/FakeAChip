//
//  BaseScreenImage.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation

protocol BaseScreenImage {
    func blit(bytes: ArraySlice<UInt8>)
}
