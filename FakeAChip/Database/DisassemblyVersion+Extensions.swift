//
//  DisassemblyVersion+Extensions.swift
//  FakeAChip
//
//  Created by Mike Hall on 20/12/2022.
//

import Foundation

extension DisassemblyVersion {
    func nextRevisionVersion() -> String {
let current = currentVersion()
        return "\(current.majo).\(current.mino).\(current.revi + 1)"
    }

    func currentVersion() -> (majo: Int32, mino: Int32, revi: Int32) {
        return (major, minor, revision)
    }
}
