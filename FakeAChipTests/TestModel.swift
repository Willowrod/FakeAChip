//
//  TestModel.swift
//  FakeAChipTests
//
//  Created by Mike Hall on 28/05/2023.
//

import Foundation

struct TestModel: Codable {
    let name: String
        let initial: TestState
//        let final: TestState

}

struct TestState: Codable {
    let pc: UInt16
    let sp: UInt16
    let a: UInt8
    let b: UInt8
    let c: UInt8
    let d: UInt8
    let e: UInt8
    let f: UInt8
    let h: UInt8
    let l: UInt8
    let i: UInt8
    let r: UInt8
    let ei: UInt8
    let wz: UInt16
    let ix: UInt16
    let iy: UInt16
    let af_: UInt16
    let bc_: UInt16
    let de_: UInt16
    let hl_: UInt16
    let im: UInt8
    let p: UInt8
    let q: UInt8
    let iff1: UInt8
    let iff2: UInt8
    let ram: [[Int]]
}
