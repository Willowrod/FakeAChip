//
//  Z80RegisterPerformanceTests.swift
//  FakeAChipTests
//
//  Created by Mike Hall on 23/05/2023.
//

import XCTest

final class Z80RegisterPerformanceTests: BaseTest {

    override func tearDownWithError() throws {

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


    func testLoadFPerformance() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...10000 {
                for a in 0...255 {
                    z80.ldF(value: UInt8(a))
                    XCTAssert(z80.f() == a)
                }
            }
        }
    }

}
