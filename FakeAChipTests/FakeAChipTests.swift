//
//  FakeAChipTests.swift
//  FakeAChipTests
//
//  Created by Mike Hall on 11/03/2021.
//

import XCTest
@testable import FakeAChip

class FakeAChipTests: BaseTest {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testLoadAPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...10000 {
                for a in 0...255 {
                    z80.aR().ld(value: UInt8(a))
                    XCTAssert(z80.a() == a)
                }
            }
        }
    }

    func testLoadFPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...10000 {
                for a in 0...255 {
                    z80.ldF(value: UInt8(a))
  //                  XCTAssert(z80.f() == a)
                }
            }
        }
    }

    func testLoadBCPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...5 {
                for a in 0...0xFFFF {
                    z80.bc().ld(value: UInt16(a))

                    XCTAssert(z80.b() == UInt16(a).highByte())
                    XCTAssert(z80.c() == UInt16(a).lowByte())
                    XCTAssert(z80.bc().value() == a)
                }
            }
        }
    }

    func testLoadPCPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...50 {
                for a in 0...0xFFFF {
                    z80.PC = UInt16(a)
                    XCTAssert(z80.PC == a)
                }
            }
        }
    }

    func testLoadAFPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...10 {
                for a in 0...0xFFFF {
                    z80.AF.ld(value: UInt16(a))
                    XCTAssert(z80.AF.value() == a)
                }
            }
        }
    }

    func testHighLowByte() throws {
        for a in 0x00...0xffff {
            z80.BC.ld(word: UInt16(a))
            print("BC = \(z80.BC.hex())")
            XCTAssert(z80.b() == z80.BC.value().highByte())
            XCTAssert(z80.c() == z80.BC.value().lowByte())
        }
    }

    func testAndA() throws {
        z80.BC.ld(word: 0xbbcc)
        z80.DE.ld(word: 0xddee)
        z80.HL.ld(word: 0x4411)
        z80.IX.ld(word: 0xdd88)
        z80.IY.ld(word: 0xfd77)

        for ax in 0x00...0xff {
            z80.ldA(value: UInt8(ax))  //A.ld(word: UInt8(a))
            print("A = \(z80.a().hex())")
            z80.accumilator().aND(byte: z80.IX.high())
            let anded = z80.a()
            z80.ldA(value: UInt8(ax))  //A.ld(word: UInt8(a))
            print("A = \(z80.a().hex())")
            z80.accumilator().aND(byte: 0xdd)
            XCTAssert(z80.a() == anded)
            XCTAssert(z80.f() == Z80.sz53pvTable[anded] | 0x10)
        }
    }

    func testRl() throws {

        for ax in 0x00...0xff {
            z80.ldA(value: UInt8(ax))
            z80.ldF(value: 0x00)
            let rld = z80.a().rl()
            print("A: \(z80.a().bin()) F: \(Z80.F.value().bin()) NewA: \(rld.bin())")
 //           z80.ldA(value: rld)
//            XCTAssert(z80.a() == 0x07)
//            XCTAssert(Z80.F.value() == 0x05)
        }

    }

    func testFromJson() throws {
        let json = loadJson("01")
        print ("JSON: \(json)")
    }

    

}
