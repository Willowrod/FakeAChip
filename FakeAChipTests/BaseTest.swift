//
//  BaseTest.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class BaseTest: XCTestCase {
    
    
    let z80 = Speccy()

    override func setUpWithError() throws {
        z80.testMode = true
    }

    override func tearDownWithError() throws {
        print ("AF: \(z80.af().hex())")
        print ("BC: \(z80.bc().hex())")
        print ("DE: \(z80.de().hex())")
        print ("HL: \(z80.hl().hex())")
        print ("AF2: \(z80.af2().hex())")
        print ("BC2: \(z80.bc2().hex())")
        print ("DE2: \(z80.de2().hex())")
        print ("HL2: \(z80.hl2().hex())")
        print ("IY: \(z80.iy().hex())")
        print ("IX: \(z80.ix().hex())")
        print ("PC: \(z80.PC.hex())")
        print ("SP: \(z80.SP.hex())")
        print ("F: \(Z80.F.value().bin())")
    }
    
    func loadRam(location: Int = 0, data:[UInt8]){
        var count = location
        for dat in data {
            z80.ldRam(location: count, value: dat)
            count += 1
        }
    }
    
    func testTestModeIsOn() throws {
        // TEST MODE SHOULD BE TURNED ON IN CPU() TO RUN TESTS
        XCTAssert(z80.testMode)
    }
  
}
