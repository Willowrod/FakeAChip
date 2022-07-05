//
//  FakeAChipMock.swift
//  FakeAChip
//
//  Created by Mike Hall on 17/05/2022.
//

import Foundation

class FakeAChipMock {
    let cpu: CPU

    init(cpu: CPU) {
        self.cpu = cpu
    }

    public func mock(host: HostSystem) -> FakeAChipData {
        let data = FakeAChipData.init(host, cpu: cpu)
    return data
    }
}
