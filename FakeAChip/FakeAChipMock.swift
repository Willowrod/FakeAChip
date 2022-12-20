//
//  FakeAChipMock.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/05/2022.
//

import Foundation

let mockData = FakeAChipMock(cpu: EmptyZXSpectrum()).mockEnvironment(host: .iOS)
var mockDisassemblyData = mockData.disassemblyData

class FakeAChipMock {
    let cpu: CPU

    init(cpu: CPU) {
        self.cpu = cpu
    }

    public func mockEnvironment(host: HostSystem) -> FakeAChipData {
        let data = FakeAChipData.init(host, cpu: cpu)
    return data
    }
}
