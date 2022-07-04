//
//  FakeAChipMock.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/05/2022.
//

import Foundation

class FakeAChipMock {
    public static func mock(host: HostSystem) -> FakeAChipData {
     let data = FakeAChipData.init(host, isMock: true)
  //  data.bootNewSystem(model: .Sinclair_Spectrum_48K)
    return data
    }
}
