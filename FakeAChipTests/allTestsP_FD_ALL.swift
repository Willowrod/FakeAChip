//
//  allTestsP_FD_ALL.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_FD_ALL: BaseTest {
    
    func testfd09() throws {
    loadRam(location: 0x0000, data:[0xfd,0x09])
    z80.af().ld(value: 0x466a)
    z80.bc().ld(value: 0xa623)
    z80.de().ld(value: 0xbab2)
    z80.hl().ld(value: 0xd788)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc9e8)
    z80.iy().ld(value: 0xf698)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4649)
    XCTAssert(z80.bc().value() == 0xa623)
    XCTAssert(z80.de().value() == 0xbab2)
    XCTAssert(z80.hl().value() == 0xd788)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc9e8)
    XCTAssert(z80.iy().value() == 0x9cbb)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd19() throws {
    loadRam(location: 0x0000, data:[0xfd,0x19])
    z80.af().ld(value: 0xb3e5)
    z80.bc().ld(value: 0x5336)
    z80.de().ld(value: 0x76cb)
    z80.hl().ld(value: 0x54e2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb9ce)
    z80.iy().ld(value: 0x8624)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb3ec)
    XCTAssert(z80.bc().value() == 0x5336)
    XCTAssert(z80.de().value() == 0x76cb)
    XCTAssert(z80.hl().value() == 0x54e2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb9ce)
    XCTAssert(z80.iy().value() == 0xfcef)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd21() throws {
    loadRam(location: 0x0000, data:[0xfd,0x21,0x46,0x47])
    z80.af().ld(value: 0xc924)
    z80.bc().ld(value: 0x5c83)
    z80.de().ld(value: 0xe0e2)
    z80.hl().ld(value: 0xeddb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x6e9f)
    z80.iy().ld(value: 0xba55)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc924)
    XCTAssert(z80.bc().value() == 0x5c83)
    XCTAssert(z80.de().value() == 0xe0e2)
    XCTAssert(z80.hl().value() == 0xeddb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6e9f)
    XCTAssert(z80.iy().value() == 0x4746)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd22() throws {
    loadRam(location: 0x0000, data:[0xfd,0x22,0x9a,0xe2])
    z80.af().ld(value: 0x1235)
    z80.bc().ld(value: 0xf0b6)
    z80.de().ld(value: 0xb74c)
    z80.hl().ld(value: 0xcc9f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x8b00)
    z80.iy().ld(value: 0x81e4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1235)
    XCTAssert(z80.bc().value() == 0xf0b6)
    XCTAssert(z80.de().value() == 0xb74c)
    XCTAssert(z80.hl().value() == 0xcc9f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8b00)
    XCTAssert(z80.iy().value() == 0x81e4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd23() throws {
    loadRam(location: 0x0000, data:[0xfd,0x23])
    z80.af().ld(value: 0x69f2)
    z80.bc().ld(value: 0xc1d3)
    z80.de().ld(value: 0x0f6f)
    z80.hl().ld(value: 0x2169)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xe39e)
    z80.iy().ld(value: 0x2605)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x69f2)
    XCTAssert(z80.bc().value() == 0xc1d3)
    XCTAssert(z80.de().value() == 0x0f6f)
    XCTAssert(z80.hl().value() == 0x2169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe39e)
    XCTAssert(z80.iy().value() == 0x2606)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd24() throws {
    loadRam(location: 0x0000, data:[0xfd,0x24])
    z80.af().ld(value: 0x5554)
    z80.bc().ld(value: 0x9684)
    z80.de().ld(value: 0xd36a)
    z80.hl().ld(value: 0xdac3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7803)
    z80.iy().ld(value: 0x6434)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5520)
    XCTAssert(z80.bc().value() == 0x9684)
    XCTAssert(z80.de().value() == 0xd36a)
    XCTAssert(z80.hl().value() == 0xdac3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7803)
    XCTAssert(z80.iy().value() == 0x6534)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd25() throws {
    loadRam(location: 0x0000, data:[0xfd,0x25])
    z80.af().ld(value: 0xcd0b)
    z80.bc().ld(value: 0xb5e4)
    z80.de().ld(value: 0xa754)
    z80.hl().ld(value: 0x9526)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3dcb)
    z80.iy().ld(value: 0x03b2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xcd03)
    XCTAssert(z80.bc().value() == 0xb5e4)
    XCTAssert(z80.de().value() == 0xa754)
    XCTAssert(z80.hl().value() == 0x9526)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3dcb)
    XCTAssert(z80.iy().value() == 0x02b2)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd26() throws {
    loadRam(location: 0x0000, data:[0xfd,0x26,0x77])
    z80.af().ld(value: 0x2452)
    z80.bc().ld(value: 0x300b)
    z80.de().ld(value: 0xb4a1)
    z80.hl().ld(value: 0x929d)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc259)
    z80.iy().ld(value: 0x3f30)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2452)
    XCTAssert(z80.bc().value() == 0x300b)
    XCTAssert(z80.de().value() == 0xb4a1)
    XCTAssert(z80.hl().value() == 0x929d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc259)
    XCTAssert(z80.iy().value() == 0x7730)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd29() throws {
    loadRam(location: 0x0000, data:[0xfd,0x29])
    z80.af().ld(value: 0x5812)
    z80.bc().ld(value: 0x49d0)
    z80.de().ld(value: 0xec95)
    z80.hl().ld(value: 0x011c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xec6c)
    z80.iy().ld(value: 0x594c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5830)
    XCTAssert(z80.bc().value() == 0x49d0)
    XCTAssert(z80.de().value() == 0xec95)
    XCTAssert(z80.hl().value() == 0x011c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xec6c)
    XCTAssert(z80.iy().value() == 0xb298)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd2a() throws {
    loadRam(location: 0x0000, data:[0xfd,0x2a,0x91,0xf9])
    loadRam(location: 0xf991, data:[0x92,0xbf])
    z80.af().ld(value: 0x0f82)
    z80.bc().ld(value: 0x3198)
    z80.de().ld(value: 0x87e3)
    z80.hl().ld(value: 0x7c1c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x1bb4)
    z80.iy().ld(value: 0xeb1a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0f82)
    XCTAssert(z80.bc().value() == 0x3198)
    XCTAssert(z80.de().value() == 0x87e3)
    XCTAssert(z80.hl().value() == 0x7c1c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1bb4)
    XCTAssert(z80.iy().value() == 0xbf92)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd2b() throws {
    loadRam(location: 0x0000, data:[0xfd,0x2b])
    z80.af().ld(value: 0xab27)
    z80.bc().ld(value: 0x942f)
    z80.de().ld(value: 0x82fa)
    z80.hl().ld(value: 0x6f2f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9438)
    z80.iy().ld(value: 0xebbc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xab27)
    XCTAssert(z80.bc().value() == 0x942f)
    XCTAssert(z80.de().value() == 0x82fa)
    XCTAssert(z80.hl().value() == 0x6f2f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9438)
    XCTAssert(z80.iy().value() == 0xebbb)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd2c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x2c])
    z80.af().ld(value: 0x665d)
    z80.bc().ld(value: 0x0ab1)
    z80.de().ld(value: 0x5656)
    z80.hl().ld(value: 0xe5a9)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5fb9)
    z80.iy().ld(value: 0x4df7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x66a9)
    XCTAssert(z80.bc().value() == 0x0ab1)
    XCTAssert(z80.de().value() == 0x5656)
    XCTAssert(z80.hl().value() == 0xe5a9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5fb9)
    XCTAssert(z80.iy().value() == 0x4df8)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd2d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x2d])
    z80.af().ld(value: 0x32fb)
    z80.bc().ld(value: 0xf78a)
    z80.de().ld(value: 0xb906)
    z80.hl().ld(value: 0x31d0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc72a)
    z80.iy().ld(value: 0xe91c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x320b)
    XCTAssert(z80.bc().value() == 0xf78a)
    XCTAssert(z80.de().value() == 0xb906)
    XCTAssert(z80.hl().value() == 0x31d0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc72a)
    XCTAssert(z80.iy().value() == 0xe91b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd2e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x2e,0x49])
    z80.af().ld(value: 0x2114)
    z80.bc().ld(value: 0x4923)
    z80.de().ld(value: 0x6e65)
    z80.hl().ld(value: 0x006c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xda39)
    z80.iy().ld(value: 0xc0cb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2114)
    XCTAssert(z80.bc().value() == 0x4923)
    XCTAssert(z80.de().value() == 0x6e65)
    XCTAssert(z80.hl().value() == 0x006c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xda39)
    XCTAssert(z80.iy().value() == 0xc049)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd34() throws {
    loadRam(location: 0x0000, data:[0xfd,0x34,0xb8])
    loadRam(location: 0xef7c, data:[0xe0])
    z80.af().ld(value: 0xd56a)
    z80.bc().ld(value: 0x6f24)
    z80.de().ld(value: 0x7df7)
    z80.hl().ld(value: 0x74f0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x365a)
    z80.iy().ld(value: 0xefc4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd5a0)
    XCTAssert(z80.bc().value() == 0x6f24)
    XCTAssert(z80.de().value() == 0x7df7)
    XCTAssert(z80.hl().value() == 0x74f0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x365a)
    XCTAssert(z80.iy().value() == 0xefc4)
    XCTAssert(z80.fetchRam(location: 0xef7c) == 0xe1)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd35() throws {
    loadRam(location: 0x0000, data:[0xfd,0x35,0xab])
    loadRam(location: 0xae71, data:[0xa6])
    z80.af().ld(value: 0x8cda)
    z80.bc().ld(value: 0x35d8)
    z80.de().ld(value: 0x7c1a)
    z80.hl().ld(value: 0x1c0a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x62bb)
    z80.iy().ld(value: 0xaec6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8ca2)
    XCTAssert(z80.bc().value() == 0x35d8)
    XCTAssert(z80.de().value() == 0x7c1a)
    XCTAssert(z80.hl().value() == 0x1c0a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x62bb)
    XCTAssert(z80.iy().value() == 0xaec6)
    XCTAssert(z80.fetchRam(location: 0xae71) == 0xa5)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd36() throws {
    loadRam(location: 0x0000, data:[0xfd,0x36,0x81,0xc5])
    z80.af().ld(value: 0xe0f9)
    z80.bc().ld(value: 0xae1f)
    z80.de().ld(value: 0x4aef)
    z80.hl().ld(value: 0xc9d5)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc0db)
    z80.iy().ld(value: 0xbdd4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe0f9)
    XCTAssert(z80.bc().value() == 0xae1f)
    XCTAssert(z80.de().value() == 0x4aef)
    XCTAssert(z80.hl().value() == 0xc9d5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc0db)
    XCTAssert(z80.iy().value() == 0xbdd4)
    XCTAssert(z80.fetchRam(location: 0xbd55) == 0xc5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd39() throws {
    loadRam(location: 0x0000, data:[0xfd,0x39])
    z80.af().ld(value: 0x2603)
    z80.bc().ld(value: 0x726f)
    z80.de().ld(value: 0x9c7f)
    z80.hl().ld(value: 0xcd46)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xdc45)
    z80.iy().ld(value: 0x54d5)
    z80.PC = 0x0000
    z80.SP = 0xdc57
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2631)
    XCTAssert(z80.bc().value() == 0x726f)
    XCTAssert(z80.de().value() == 0x9c7f)
    XCTAssert(z80.hl().value() == 0xcd46)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xdc45)
    XCTAssert(z80.iy().value() == 0x312c)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xdc57)
    }

    func testfd44() throws {
    loadRam(location: 0x0000, data:[0xfd,0x44])
    z80.af().ld(value: 0x0e58)
    z80.bc().ld(value: 0x7192)
    z80.de().ld(value: 0x3580)
    z80.hl().ld(value: 0x9be4)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x1b79)
    z80.iy().ld(value: 0x685e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0e58)
    XCTAssert(z80.bc().value() == 0x6892)
    XCTAssert(z80.de().value() == 0x3580)
    XCTAssert(z80.hl().value() == 0x9be4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1b79)
    XCTAssert(z80.iy().value() == 0x685e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd45() throws {
    loadRam(location: 0x0000, data:[0xfd,0x45])
    z80.af().ld(value: 0x6555)
    z80.bc().ld(value: 0xa488)
    z80.de().ld(value: 0x5ae8)
    z80.hl().ld(value: 0xc948)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd7b8)
    z80.iy().ld(value: 0xa177)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6555)
    XCTAssert(z80.bc().value() == 0x7788)
    XCTAssert(z80.de().value() == 0x5ae8)
    XCTAssert(z80.hl().value() == 0xc948)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd7b8)
    XCTAssert(z80.iy().value() == 0xa177)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd46() throws {
    loadRam(location: 0x0000, data:[0xfd,0x46,0x4d])
    loadRam(location: 0x3b49, data:[0xc9])
    z80.af().ld(value: 0x87f3)
    z80.bc().ld(value: 0x17d5)
    z80.de().ld(value: 0x5eea)
    z80.hl().ld(value: 0x830b)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xdcee)
    z80.iy().ld(value: 0x3afc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x87f3)
    XCTAssert(z80.bc().value() == 0xc9d5)
    XCTAssert(z80.de().value() == 0x5eea)
    XCTAssert(z80.hl().value() == 0x830b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xdcee)
    XCTAssert(z80.iy().value() == 0x3afc)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd4c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x4c])
    z80.af().ld(value: 0x7e6b)
    z80.bc().ld(value: 0xbd4b)
    z80.de().ld(value: 0x24b6)
    z80.hl().ld(value: 0xff94)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x862d)
    z80.iy().ld(value: 0x01d0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7e6b)
    XCTAssert(z80.bc().value() == 0xbd01)
    XCTAssert(z80.de().value() == 0x24b6)
    XCTAssert(z80.hl().value() == 0xff94)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x862d)
    XCTAssert(z80.iy().value() == 0x01d0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd4d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x4d])
    z80.af().ld(value: 0x50cf)
    z80.bc().ld(value: 0xe3fe)
    z80.de().ld(value: 0x998e)
    z80.hl().ld(value: 0xdba2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc4f5)
    z80.iy().ld(value: 0xc7c9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x50cf)
    XCTAssert(z80.bc().value() == 0xe3c9)
    XCTAssert(z80.de().value() == 0x998e)
    XCTAssert(z80.hl().value() == 0xdba2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc4f5)
    XCTAssert(z80.iy().value() == 0xc7c9)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd4e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x4e,0x67])
    loadRam(location: 0xbc01, data:[0x9d])
    z80.af().ld(value: 0x2c0f)
    z80.bc().ld(value: 0x69d7)
    z80.de().ld(value: 0x748a)
    z80.hl().ld(value: 0x9290)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x904f)
    z80.iy().ld(value: 0xbb9a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2c0f)
    XCTAssert(z80.bc().value() == 0x699d)
    XCTAssert(z80.de().value() == 0x748a)
    XCTAssert(z80.hl().value() == 0x9290)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x904f)
    XCTAssert(z80.iy().value() == 0xbb9a)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd54() throws {
    loadRam(location: 0x0000, data:[0xfd,0x54])
    z80.af().ld(value: 0xd7f9)
    z80.bc().ld(value: 0xf65b)
    z80.de().ld(value: 0xb001)
    z80.hl().ld(value: 0xd4c4)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4b8e)
    z80.iy().ld(value: 0xd437)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd7f9)
    XCTAssert(z80.bc().value() == 0xf65b)
    XCTAssert(z80.de().value() == 0xd401)
    XCTAssert(z80.hl().value() == 0xd4c4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4b8e)
    XCTAssert(z80.iy().value() == 0xd437)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd55() throws {
    loadRam(location: 0x0000, data:[0xfd,0x55])
    z80.af().ld(value: 0xab98)
    z80.bc().ld(value: 0xfdab)
    z80.de().ld(value: 0x254a)
    z80.hl().ld(value: 0x010e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x126b)
    z80.iy().ld(value: 0x13a9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xab98)
    XCTAssert(z80.bc().value() == 0xfdab)
    XCTAssert(z80.de().value() == 0xa94a)
    XCTAssert(z80.hl().value() == 0x010e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x126b)
    XCTAssert(z80.iy().value() == 0x13a9)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd56() throws {
    loadRam(location: 0x0000, data:[0xfd,0x56,0xce])
    loadRam(location: 0xfd70, data:[0x78])
    z80.af().ld(value: 0xd3e8)
    z80.bc().ld(value: 0xdf10)
    z80.de().ld(value: 0x5442)
    z80.hl().ld(value: 0xb641)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa5a0)
    z80.iy().ld(value: 0xfda2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd3e8)
    XCTAssert(z80.bc().value() == 0xdf10)
    XCTAssert(z80.de().value() == 0x7842)
    XCTAssert(z80.hl().value() == 0xb641)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa5a0)
    XCTAssert(z80.iy().value() == 0xfda2)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd5c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x5c])
    z80.af().ld(value: 0x11d5)
    z80.bc().ld(value: 0xc489)
    z80.de().ld(value: 0xe220)
    z80.hl().ld(value: 0x434e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3244)
    z80.iy().ld(value: 0xd8bb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x11d5)
    XCTAssert(z80.bc().value() == 0xc489)
    XCTAssert(z80.de().value() == 0xe2d8)
    XCTAssert(z80.hl().value() == 0x434e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3244)
    XCTAssert(z80.iy().value() == 0xd8bb)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd5d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x5d])
    z80.af().ld(value: 0xe945)
    z80.bc().ld(value: 0xdbae)
    z80.de().ld(value: 0x32ea)
    z80.hl().ld(value: 0x4f7e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xfa56)
    z80.iy().ld(value: 0x074e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe945)
    XCTAssert(z80.bc().value() == 0xdbae)
    XCTAssert(z80.de().value() == 0x324e)
    XCTAssert(z80.hl().value() == 0x4f7e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfa56)
    XCTAssert(z80.iy().value() == 0x074e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd5e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x5e,0xc6])
    loadRam(location: 0x8a70, data:[0x8c])
    z80.af().ld(value: 0x6f3b)
    z80.bc().ld(value: 0xe9dc)
    z80.de().ld(value: 0x7a06)
    z80.hl().ld(value: 0x14f3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xec76)
    z80.iy().ld(value: 0x8aaa)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6f3b)
    XCTAssert(z80.bc().value() == 0xe9dc)
    XCTAssert(z80.de().value() == 0x7a8c)
    XCTAssert(z80.hl().value() == 0x14f3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xec76)
    XCTAssert(z80.iy().value() == 0x8aaa)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd60() throws {
    loadRam(location: 0x0000, data:[0xfd,0x60])
    z80.af().ld(value: 0x8579)
    z80.bc().ld(value: 0x005d)
    z80.de().ld(value: 0xd9ee)
    z80.hl().ld(value: 0xfaee)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x382d)
    z80.iy().ld(value: 0x2f95)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8579)
    XCTAssert(z80.bc().value() == 0x005d)
    XCTAssert(z80.de().value() == 0xd9ee)
    XCTAssert(z80.hl().value() == 0xfaee)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x382d)
    XCTAssert(z80.iy().value() == 0x0095)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd61() throws {
    loadRam(location: 0x0000, data:[0xfd,0x61])
    z80.af().ld(value: 0x5682)
    z80.bc().ld(value: 0xdbc3)
    z80.de().ld(value: 0xb495)
    z80.hl().ld(value: 0x9799)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x85b2)
    z80.iy().ld(value: 0x3c1e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5682)
    XCTAssert(z80.bc().value() == 0xdbc3)
    XCTAssert(z80.de().value() == 0xb495)
    XCTAssert(z80.hl().value() == 0x9799)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x85b2)
    XCTAssert(z80.iy().value() == 0xc31e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd62() throws {
    loadRam(location: 0x0000, data:[0xfd,0x62])
    z80.af().ld(value: 0x906b)
    z80.bc().ld(value: 0xf52e)
    z80.de().ld(value: 0xf3d8)
    z80.hl().ld(value: 0x1e8c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xddba)
    z80.iy().ld(value: 0x9a02)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x906b)
    XCTAssert(z80.bc().value() == 0xf52e)
    XCTAssert(z80.de().value() == 0xf3d8)
    XCTAssert(z80.hl().value() == 0x1e8c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xddba)
    XCTAssert(z80.iy().value() == 0xf302)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd63() throws {
    loadRam(location: 0x0000, data:[0xfd,0x63])
    z80.af().ld(value: 0x9d59)
    z80.bc().ld(value: 0xbeb9)
    z80.de().ld(value: 0xd826)
    z80.hl().ld(value: 0x0eaa)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4290)
    z80.iy().ld(value: 0xa4b9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9d59)
    XCTAssert(z80.bc().value() == 0xbeb9)
    XCTAssert(z80.de().value() == 0xd826)
    XCTAssert(z80.hl().value() == 0x0eaa)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4290)
    XCTAssert(z80.iy().value() == 0x26b9)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd64() throws {
    loadRam(location: 0x0000, data:[0xfd,0x64])
    z80.af().ld(value: 0x7b0e)
    z80.bc().ld(value: 0xe394)
    z80.de().ld(value: 0x8a25)
    z80.hl().ld(value: 0xcddf)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9784)
    z80.iy().ld(value: 0x2116)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7b0e)
    XCTAssert(z80.bc().value() == 0xe394)
    XCTAssert(z80.de().value() == 0x8a25)
    XCTAssert(z80.hl().value() == 0xcddf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9784)
    XCTAssert(z80.iy().value() == 0x2116)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd65() throws {
    loadRam(location: 0x0000, data:[0xfd,0x65])
    z80.af().ld(value: 0xb827)
    z80.bc().ld(value: 0xeb4f)
    z80.de().ld(value: 0xf666)
    z80.hl().ld(value: 0xc52a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x6206)
    z80.iy().ld(value: 0x831f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb827)
    XCTAssert(z80.bc().value() == 0xeb4f)
    XCTAssert(z80.de().value() == 0xf666)
    XCTAssert(z80.hl().value() == 0xc52a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6206)
    XCTAssert(z80.iy().value() == 0x1f1f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd66() throws {
    loadRam(location: 0x0000, data:[0xfd,0x66,0x80])
    loadRam(location: 0x5aa4, data:[0x77])
    z80.af().ld(value: 0x9129)
    z80.bc().ld(value: 0xe4ee)
    z80.de().ld(value: 0xe3a3)
    z80.hl().ld(value: 0x86ca)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4d93)
    z80.iy().ld(value: 0x5b24)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9129)
    XCTAssert(z80.bc().value() == 0xe4ee)
    XCTAssert(z80.de().value() == 0xe3a3)
    XCTAssert(z80.hl().value() == 0x77ca)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4d93)
    XCTAssert(z80.iy().value() == 0x5b24)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd67() throws {
    loadRam(location: 0x0000, data:[0xfd,0x67])
    z80.af().ld(value: 0xdb7a)
    z80.bc().ld(value: 0xb40b)
    z80.de().ld(value: 0x7b58)
    z80.hl().ld(value: 0x49fd)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x266f)
    z80.iy().ld(value: 0x9e7b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdb7a)
    XCTAssert(z80.bc().value() == 0xb40b)
    XCTAssert(z80.de().value() == 0x7b58)
    XCTAssert(z80.hl().value() == 0x49fd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x266f)
    XCTAssert(z80.iy().value() == 0xdb7b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd68() throws {
    loadRam(location: 0x0000, data:[0xfd,0x68])
    z80.af().ld(value: 0x4d1d)
    z80.bc().ld(value: 0x4fd9)
    z80.de().ld(value: 0x783e)
    z80.hl().ld(value: 0x0745)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0c3d)
    z80.iy().ld(value: 0x82b5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4d1d)
    XCTAssert(z80.bc().value() == 0x4fd9)
    XCTAssert(z80.de().value() == 0x783e)
    XCTAssert(z80.hl().value() == 0x0745)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0c3d)
    XCTAssert(z80.iy().value() == 0x824f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd69() throws {
    loadRam(location: 0x0000, data:[0xfd,0x69])
    z80.af().ld(value: 0x1589)
    z80.bc().ld(value: 0x5ceb)
    z80.de().ld(value: 0xb5db)
    z80.hl().ld(value: 0x922a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3c3a)
    z80.iy().ld(value: 0xdc98)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1589)
    XCTAssert(z80.bc().value() == 0x5ceb)
    XCTAssert(z80.de().value() == 0xb5db)
    XCTAssert(z80.hl().value() == 0x922a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3c3a)
    XCTAssert(z80.iy().value() == 0xdceb)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6a() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6a])
    z80.af().ld(value: 0x607a)
    z80.bc().ld(value: 0xe035)
    z80.de().ld(value: 0x5bb9)
    z80.hl().ld(value: 0xdac0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xfc04)
    z80.iy().ld(value: 0xb5b7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x607a)
    XCTAssert(z80.bc().value() == 0xe035)
    XCTAssert(z80.de().value() == 0x5bb9)
    XCTAssert(z80.hl().value() == 0xdac0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfc04)
    XCTAssert(z80.iy().value() == 0xb55b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6b() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6b])
    z80.af().ld(value: 0xdb2a)
    z80.bc().ld(value: 0xe244)
    z80.de().ld(value: 0x1182)
    z80.hl().ld(value: 0x096f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x198e)
    z80.iy().ld(value: 0x91a6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdb2a)
    XCTAssert(z80.bc().value() == 0xe244)
    XCTAssert(z80.de().value() == 0x1182)
    XCTAssert(z80.hl().value() == 0x096f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x198e)
    XCTAssert(z80.iy().value() == 0x9182)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6c])
    z80.af().ld(value: 0xa0be)
    z80.bc().ld(value: 0x34ef)
    z80.de().ld(value: 0x8fcd)
    z80.hl().ld(value: 0x40a7)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4481)
    z80.iy().ld(value: 0xc215)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xa0be)
    XCTAssert(z80.bc().value() == 0x34ef)
    XCTAssert(z80.de().value() == 0x8fcd)
    XCTAssert(z80.hl().value() == 0x40a7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4481)
    XCTAssert(z80.iy().value() == 0xc2c2)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6d])
    z80.af().ld(value: 0xfdfc)
    z80.bc().ld(value: 0x727a)
    z80.de().ld(value: 0xb839)
    z80.hl().ld(value: 0x50a6)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xe782)
    z80.iy().ld(value: 0x02e5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xfdfc)
    XCTAssert(z80.bc().value() == 0x727a)
    XCTAssert(z80.de().value() == 0xb839)
    XCTAssert(z80.hl().value() == 0x50a6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe782)
    XCTAssert(z80.iy().value() == 0x02e5)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6e,0x78])
    loadRam(location: 0xb11b, data:[0xf8])
    z80.af().ld(value: 0xcfd4)
    z80.bc().ld(value: 0x6ef1)
    z80.de().ld(value: 0xc07d)
    z80.hl().ld(value: 0xeb96)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb0f9)
    z80.iy().ld(value: 0xb0a3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xcfd4)
    XCTAssert(z80.bc().value() == 0x6ef1)
    XCTAssert(z80.de().value() == 0xc07d)
    XCTAssert(z80.hl().value() == 0xebf8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb0f9)
    XCTAssert(z80.iy().value() == 0xb0a3)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd6f() throws {
    loadRam(location: 0x0000, data:[0xfd,0x6f])
    z80.af().ld(value: 0x8e1d)
    z80.bc().ld(value: 0xa138)
    z80.de().ld(value: 0xf20a)
    z80.hl().ld(value: 0x298e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb600)
    z80.iy().ld(value: 0x0cf7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8e1d)
    XCTAssert(z80.bc().value() == 0xa138)
    XCTAssert(z80.de().value() == 0xf20a)
    XCTAssert(z80.hl().value() == 0x298e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb600)
    XCTAssert(z80.iy().value() == 0x0c8e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd70() throws {
    loadRam(location: 0x0000, data:[0xfd,0x70,0x53])
    z80.af().ld(value: 0x2677)
    z80.bc().ld(value: 0x33c5)
    z80.de().ld(value: 0xc0dc)
    z80.hl().ld(value: 0x262f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd3dc)
    z80.iy().ld(value: 0x23a1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2677)
    XCTAssert(z80.bc().value() == 0x33c5)
    XCTAssert(z80.de().value() == 0xc0dc)
    XCTAssert(z80.hl().value() == 0x262f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd3dc)
    XCTAssert(z80.iy().value() == 0x23a1)
    XCTAssert(z80.fetchRam(location: 0x23f4) == 0x33)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd71() throws {
    loadRam(location: 0x0000, data:[0xfd,0x71,0xb4])
    z80.af().ld(value: 0x892e)
    z80.bc().ld(value: 0x04ae)
    z80.de().ld(value: 0xd67f)
    z80.hl().ld(value: 0x81ec)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7757)
    z80.iy().ld(value: 0xbfab)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x892e)
    XCTAssert(z80.bc().value() == 0x04ae)
    XCTAssert(z80.de().value() == 0xd67f)
    XCTAssert(z80.hl().value() == 0x81ec)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7757)
    XCTAssert(z80.iy().value() == 0xbfab)
    XCTAssert(z80.fetchRam(location: 0xbf5f) == 0xae)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd72() throws {
    loadRam(location: 0x0000, data:[0xfd,0x72,0xe3])
    z80.af().ld(value: 0xd2dc)
    z80.bc().ld(value: 0xc23c)
    z80.de().ld(value: 0xdd54)
    z80.hl().ld(value: 0x6559)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb32b)
    z80.iy().ld(value: 0x7c80)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd2dc)
    XCTAssert(z80.bc().value() == 0xc23c)
    XCTAssert(z80.de().value() == 0xdd54)
    XCTAssert(z80.hl().value() == 0x6559)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb32b)
    XCTAssert(z80.iy().value() == 0x7c80)
    XCTAssert(z80.fetchRam(location: 0x7c63) == 0xdd)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd73() throws {
    loadRam(location: 0x0000, data:[0xfd,0x73,0x17])
    z80.af().ld(value: 0x49ef)
    z80.bc().ld(value: 0xbff2)
    z80.de().ld(value: 0x8409)
    z80.hl().ld(value: 0x02dd)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xaf95)
    z80.iy().ld(value: 0x8762)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x49ef)
    XCTAssert(z80.bc().value() == 0xbff2)
    XCTAssert(z80.de().value() == 0x8409)
    XCTAssert(z80.hl().value() == 0x02dd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xaf95)
    XCTAssert(z80.iy().value() == 0x8762)
    XCTAssert(z80.fetchRam(location: 0x8779) == 0x09)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd74() throws {
    loadRam(location: 0x0000, data:[0xfd,0x74,0xf6])
    z80.af().ld(value: 0x9479)
    z80.bc().ld(value: 0x9817)
    z80.de().ld(value: 0xfa2e)
    z80.hl().ld(value: 0x1fe0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa395)
    z80.iy().ld(value: 0x92db)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9479)
    XCTAssert(z80.bc().value() == 0x9817)
    XCTAssert(z80.de().value() == 0xfa2e)
    XCTAssert(z80.hl().value() == 0x1fe0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa395)
    XCTAssert(z80.iy().value() == 0x92db)
    XCTAssert(z80.fetchRam(location: 0x92d1) == 0x1f)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd75() throws {
    loadRam(location: 0x0000, data:[0xfd,0x75,0xab])
    z80.af().ld(value: 0xc8d6)
    z80.bc().ld(value: 0x6aa4)
    z80.de().ld(value: 0x180e)
    z80.hl().ld(value: 0xe37b)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x02cf)
    z80.iy().ld(value: 0x1724)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc8d6)
    XCTAssert(z80.bc().value() == 0x6aa4)
    XCTAssert(z80.de().value() == 0x180e)
    XCTAssert(z80.hl().value() == 0xe37b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x02cf)
    XCTAssert(z80.iy().value() == 0x1724)
    XCTAssert(z80.fetchRam(location: 0x16cf) == 0x7b)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd77() throws {
    loadRam(location: 0x0000, data:[0xfd,0x77,0xf7])
    z80.af().ld(value: 0x6f9e)
    z80.bc().ld(value: 0x7475)
    z80.de().ld(value: 0x78ad)
    z80.hl().ld(value: 0x2b8c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc6b7)
    z80.iy().ld(value: 0x6b4d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6f9e)
    XCTAssert(z80.bc().value() == 0x7475)
    XCTAssert(z80.de().value() == 0x78ad)
    XCTAssert(z80.hl().value() == 0x2b8c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc6b7)
    XCTAssert(z80.iy().value() == 0x6b4d)
    XCTAssert(z80.fetchRam(location: 0x6b44) == 0x6f)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd7c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x7c])
    z80.af().ld(value: 0xf228)
    z80.bc().ld(value: 0x93fc)
    z80.de().ld(value: 0xa3d4)
    z80.hl().ld(value: 0xdc9e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x21ac)
    z80.iy().ld(value: 0xc617)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc628)
    XCTAssert(z80.bc().value() == 0x93fc)
    XCTAssert(z80.de().value() == 0xa3d4)
    XCTAssert(z80.hl().value() == 0xdc9e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x21ac)
    XCTAssert(z80.iy().value() == 0xc617)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd7d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x7d])
    z80.af().ld(value: 0x93e5)
    z80.bc().ld(value: 0x3cbe)
    z80.de().ld(value: 0x02c3)
    z80.hl().ld(value: 0x26c2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xca81)
    z80.iy().ld(value: 0x92b9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb9e5)
    XCTAssert(z80.bc().value() == 0x3cbe)
    XCTAssert(z80.de().value() == 0x02c3)
    XCTAssert(z80.hl().value() == 0x26c2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xca81)
    XCTAssert(z80.iy().value() == 0x92b9)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd7e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x7e,0xe4])
    loadRam(location: 0xd443, data:[0xaa])
    z80.af().ld(value: 0x1596)
    z80.bc().ld(value: 0xdaba)
    z80.de().ld(value: 0x147b)
    z80.hl().ld(value: 0xf362)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7110)
    z80.iy().ld(value: 0xd45f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xaa96)
    XCTAssert(z80.bc().value() == 0xdaba)
    XCTAssert(z80.de().value() == 0x147b)
    XCTAssert(z80.hl().value() == 0xf362)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7110)
    XCTAssert(z80.iy().value() == 0xd45f)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd84() throws {
    loadRam(location: 0x0000, data:[0xfd,0x84])
    z80.af().ld(value: 0xbfba)
    z80.bc().ld(value: 0x7cae)
    z80.de().ld(value: 0xc4da)
    z80.hl().ld(value: 0x7aee)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x43ee)
    z80.iy().ld(value: 0xc08e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7f2d)
    XCTAssert(z80.bc().value() == 0x7cae)
    XCTAssert(z80.de().value() == 0xc4da)
    XCTAssert(z80.hl().value() == 0x7aee)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x43ee)
    XCTAssert(z80.iy().value() == 0xc08e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd85() throws {
    loadRam(location: 0x0000, data:[0xfd,0x85])
    z80.af().ld(value: 0x52dd)
    z80.bc().ld(value: 0x1dea)
    z80.de().ld(value: 0x324f)
    z80.hl().ld(value: 0x84e7)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xe7a8)
    z80.iy().ld(value: 0xf799)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xeba8)
    XCTAssert(z80.bc().value() == 0x1dea)
    XCTAssert(z80.de().value() == 0x324f)
    XCTAssert(z80.hl().value() == 0x84e7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe7a8)
    XCTAssert(z80.iy().value() == 0xf799)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd86() throws {
    loadRam(location: 0x0000, data:[0xfd,0x86,0xce])
    loadRam(location: 0x8b01, data:[0xe1])
    z80.af().ld(value: 0xfc9c)
    z80.bc().ld(value: 0xb882)
    z80.de().ld(value: 0x43f9)
    z80.hl().ld(value: 0x3e15)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9781)
    z80.iy().ld(value: 0x8b33)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdd89)
    XCTAssert(z80.bc().value() == 0xb882)
    XCTAssert(z80.de().value() == 0x43f9)
    XCTAssert(z80.hl().value() == 0x3e15)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9781)
    XCTAssert(z80.iy().value() == 0x8b33)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd8c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x8c])
    z80.af().ld(value: 0xfd9c)
    z80.bc().ld(value: 0x42b1)
    z80.de().ld(value: 0x5e8a)
    z80.hl().ld(value: 0x081c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xcb58)
    z80.iy().ld(value: 0x3b4e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3839)
    XCTAssert(z80.bc().value() == 0x42b1)
    XCTAssert(z80.de().value() == 0x5e8a)
    XCTAssert(z80.hl().value() == 0x081c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcb58)
    XCTAssert(z80.iy().value() == 0x3b4e)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd8d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x8d])
    z80.af().ld(value: 0x9301)
    z80.bc().ld(value: 0x7750)
    z80.de().ld(value: 0x8ad6)
    z80.hl().ld(value: 0x295c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x695c)
    z80.iy().ld(value: 0x99fb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8f89)
    XCTAssert(z80.bc().value() == 0x7750)
    XCTAssert(z80.de().value() == 0x8ad6)
    XCTAssert(z80.hl().value() == 0x295c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x695c)
    XCTAssert(z80.iy().value() == 0x99fb)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd8e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x8e,0x78])
    loadRam(location: 0x1b1a, data:[0xc0])
    z80.af().ld(value: 0x41ee)
    z80.bc().ld(value: 0x398f)
    z80.de().ld(value: 0xf6dc)
    z80.hl().ld(value: 0x06f3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xf34a)
    z80.iy().ld(value: 0x1aa2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0101)
    XCTAssert(z80.bc().value() == 0x398f)
    XCTAssert(z80.de().value() == 0xf6dc)
    XCTAssert(z80.hl().value() == 0x06f3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf34a)
    XCTAssert(z80.iy().value() == 0x1aa2)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd94() throws {
    loadRam(location: 0x0000, data:[0xfd,0x94])
    z80.af().ld(value: 0x0431)
    z80.bc().ld(value: 0xd255)
    z80.de().ld(value: 0xb9d6)
    z80.hl().ld(value: 0x20bb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x1e6a)
    z80.iy().ld(value: 0xd5ef)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2f3b)
    XCTAssert(z80.bc().value() == 0xd255)
    XCTAssert(z80.de().value() == 0xb9d6)
    XCTAssert(z80.hl().value() == 0x20bb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1e6a)
    XCTAssert(z80.iy().value() == 0xd5ef)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd95() throws {
    loadRam(location: 0x0000, data:[0xfd,0x95])
    z80.af().ld(value: 0x8b5d)
    z80.bc().ld(value: 0xb455)
    z80.de().ld(value: 0x2388)
    z80.hl().ld(value: 0xec1e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7637)
    z80.iy().ld(value: 0xcb97)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf4a3)
    XCTAssert(z80.bc().value() == 0xb455)
    XCTAssert(z80.de().value() == 0x2388)
    XCTAssert(z80.hl().value() == 0xec1e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7637)
    XCTAssert(z80.iy().value() == 0xcb97)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd96() throws {
    loadRam(location: 0x0000, data:[0xfd,0x96,0x55])
    loadRam(location: 0xc0e0, data:[0x7b])
    z80.af().ld(value: 0xa0c6)
    z80.bc().ld(value: 0x22ac)
    z80.de().ld(value: 0x0413)
    z80.hl().ld(value: 0x4b13)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb44e)
    z80.iy().ld(value: 0xc08b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2536)
    XCTAssert(z80.bc().value() == 0x22ac)
    XCTAssert(z80.de().value() == 0x0413)
    XCTAssert(z80.hl().value() == 0x4b13)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb44e)
    XCTAssert(z80.iy().value() == 0xc08b)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd9c() throws {
    loadRam(location: 0x0000, data:[0xfd,0x9c])
    z80.af().ld(value: 0xa44a)
    z80.bc().ld(value: 0x3ecf)
    z80.de().ld(value: 0xced3)
    z80.hl().ld(value: 0x66ec)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4bff)
    z80.iy().ld(value: 0xb133)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf3a3)
    XCTAssert(z80.bc().value() == 0x3ecf)
    XCTAssert(z80.de().value() == 0xced3)
    XCTAssert(z80.hl().value() == 0x66ec)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4bff)
    XCTAssert(z80.iy().value() == 0xb133)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd9d() throws {
    loadRam(location: 0x0000, data:[0xfd,0x9d])
    z80.af().ld(value: 0x06c0)
    z80.bc().ld(value: 0x8bd0)
    z80.de().ld(value: 0x131b)
    z80.hl().ld(value: 0x3094)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xafc3)
    z80.iy().ld(value: 0x7409)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xfdbb)
    XCTAssert(z80.bc().value() == 0x8bd0)
    XCTAssert(z80.de().value() == 0x131b)
    XCTAssert(z80.hl().value() == 0x3094)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xafc3)
    XCTAssert(z80.iy().value() == 0x7409)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfd9e() throws {
    loadRam(location: 0x0000, data:[0xfd,0x9e,0xf9])
    loadRam(location: 0xf665, data:[0xf3])
    z80.af().ld(value: 0xb983)
    z80.bc().ld(value: 0x981f)
    z80.de().ld(value: 0xbb8e)
    z80.hl().ld(value: 0xd6d5)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5c3b)
    z80.iy().ld(value: 0xf66c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc583)
    XCTAssert(z80.bc().value() == 0x981f)
    XCTAssert(z80.de().value() == 0xbb8e)
    XCTAssert(z80.hl().value() == 0xd6d5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5c3b)
    XCTAssert(z80.iy().value() == 0xf66c)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfda4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xa4])
    z80.af().ld(value: 0xb079)
    z80.bc().ld(value: 0x79c0)
    z80.de().ld(value: 0x2c7c)
    z80.hl().ld(value: 0x3e06)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7399)
    z80.iy().ld(value: 0x037a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0054)
    XCTAssert(z80.bc().value() == 0x79c0)
    XCTAssert(z80.de().value() == 0x2c7c)
    XCTAssert(z80.hl().value() == 0x3e06)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7399)
    XCTAssert(z80.iy().value() == 0x037a)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfda5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xa5])
    z80.af().ld(value: 0x01d2)
    z80.bc().ld(value: 0x654d)
    z80.de().ld(value: 0x9653)
    z80.hl().ld(value: 0x2b33)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x61a4)
    z80.iy().ld(value: 0x8f88)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0054)
    XCTAssert(z80.bc().value() == 0x654d)
    XCTAssert(z80.de().value() == 0x9653)
    XCTAssert(z80.hl().value() == 0x2b33)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x61a4)
    XCTAssert(z80.iy().value() == 0x8f88)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfda6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xa6,0x53])
    loadRam(location: 0x65ee, data:[0x95])
    z80.af().ld(value: 0xddb8)
    z80.bc().ld(value: 0x40bb)
    z80.de().ld(value: 0x3742)
    z80.hl().ld(value: 0x6ff1)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xad28)
    z80.iy().ld(value: 0x659b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9594)
    XCTAssert(z80.bc().value() == 0x40bb)
    XCTAssert(z80.de().value() == 0x3742)
    XCTAssert(z80.hl().value() == 0x6ff1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xad28)
    XCTAssert(z80.iy().value() == 0x659b)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdac() throws {
    loadRam(location: 0x0000, data:[0xfd,0xac])
    z80.af().ld(value: 0x7a43)
    z80.bc().ld(value: 0x72e3)
    z80.de().ld(value: 0xdd4d)
    z80.hl().ld(value: 0x1b62)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4753)
    z80.iy().ld(value: 0x5d63)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2724)
    XCTAssert(z80.bc().value() == 0x72e3)
    XCTAssert(z80.de().value() == 0xdd4d)
    XCTAssert(z80.hl().value() == 0x1b62)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4753)
    XCTAssert(z80.iy().value() == 0x5d63)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdad() throws {
    loadRam(location: 0x0000, data:[0xfd,0xad])
    z80.af().ld(value: 0x7d8e)
    z80.bc().ld(value: 0x2573)
    z80.de().ld(value: 0x19cc)
    z80.hl().ld(value: 0x78fb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5248)
    z80.iy().ld(value: 0x8391)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xeca8)
    XCTAssert(z80.bc().value() == 0x2573)
    XCTAssert(z80.de().value() == 0x19cc)
    XCTAssert(z80.hl().value() == 0x78fb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5248)
    XCTAssert(z80.iy().value() == 0x8391)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdae() throws {
    loadRam(location: 0x0000, data:[0xfd,0xae,0x09])
    loadRam(location: 0x8201, data:[0xcb])
    z80.af().ld(value: 0xa0da)
    z80.bc().ld(value: 0xbc27)
    z80.de().ld(value: 0x257b)
    z80.hl().ld(value: 0x5489)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xfa59)
    z80.iy().ld(value: 0x81f8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6b28)
    XCTAssert(z80.bc().value() == 0xbc27)
    XCTAssert(z80.de().value() == 0x257b)
    XCTAssert(z80.hl().value() == 0x5489)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfa59)
    XCTAssert(z80.iy().value() == 0x81f8)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdb4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xb4])
    z80.af().ld(value: 0x4f95)
    z80.bc().ld(value: 0x3461)
    z80.de().ld(value: 0xf173)
    z80.hl().ld(value: 0x8ad3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc1a2)
    z80.iy().ld(value: 0x8265)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xcf8c)
    XCTAssert(z80.bc().value() == 0x3461)
    XCTAssert(z80.de().value() == 0xf173)
    XCTAssert(z80.hl().value() == 0x8ad3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc1a2)
    XCTAssert(z80.iy().value() == 0x8265)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdb5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xb5])
    z80.af().ld(value: 0x17f6)
    z80.bc().ld(value: 0xe6ea)
    z80.de().ld(value: 0xf919)
    z80.hl().ld(value: 0x327c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4299)
    z80.iy().ld(value: 0x9733)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3720)
    XCTAssert(z80.bc().value() == 0xe6ea)
    XCTAssert(z80.de().value() == 0xf919)
    XCTAssert(z80.hl().value() == 0x327c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4299)
    XCTAssert(z80.iy().value() == 0x9733)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdb6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xb6,0x4b])
    loadRam(location: 0xdfb8, data:[0x64])
    z80.af().ld(value: 0xdb37)
    z80.bc().ld(value: 0x3509)
    z80.de().ld(value: 0xd6ca)
    z80.hl().ld(value: 0xb16a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa099)
    z80.iy().ld(value: 0xdf6d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xffac)
    XCTAssert(z80.bc().value() == 0x3509)
    XCTAssert(z80.de().value() == 0xd6ca)
    XCTAssert(z80.hl().value() == 0xb16a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa099)
    XCTAssert(z80.iy().value() == 0xdf6d)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdbc() throws {
    loadRam(location: 0x0000, data:[0xfd,0xbc])
    z80.af().ld(value: 0xb4fc)
    z80.bc().ld(value: 0x9302)
    z80.de().ld(value: 0xe35d)
    z80.hl().ld(value: 0x31bc)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5c12)
    z80.iy().ld(value: 0x1c92)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb49a)
    XCTAssert(z80.bc().value() == 0x9302)
    XCTAssert(z80.de().value() == 0xe35d)
    XCTAssert(z80.hl().value() == 0x31bc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5c12)
    XCTAssert(z80.iy().value() == 0x1c92)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdbd() throws {
    loadRam(location: 0x0000, data:[0xfd,0xbd])
    z80.af().ld(value: 0x391c)
    z80.bc().ld(value: 0x7b82)
    z80.de().ld(value: 0xdfeb)
    z80.hl().ld(value: 0x03ee)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbe7b)
    z80.iy().ld(value: 0xb30f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x391a)
    XCTAssert(z80.bc().value() == 0x7b82)
    XCTAssert(z80.de().value() == 0xdfeb)
    XCTAssert(z80.hl().value() == 0x03ee)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xbe7b)
    XCTAssert(z80.iy().value() == 0xb30f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdbe() throws {
    loadRam(location: 0x0000, data:[0xfd,0xbe,0x6b])
    loadRam(location: 0xa9d6, data:[0xc0])
    z80.af().ld(value: 0x0970)
    z80.bc().ld(value: 0x0b31)
    z80.de().ld(value: 0xf4ad)
    z80.hl().ld(value: 0x9d4c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb95a)
    z80.iy().ld(value: 0xa96b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0903)
    XCTAssert(z80.bc().value() == 0x0b31)
    XCTAssert(z80.de().value() == 0xf4ad)
    XCTAssert(z80.hl().value() == 0x9d4c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb95a)
    XCTAssert(z80.iy().value() == 0xa96b)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }
    

    func testfde1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xe1])
    loadRam(location: 0x716e, data:[0xd5,0x92])
    z80.af().ld(value: 0x828e)
    z80.bc().ld(value: 0x078b)
    z80.de().ld(value: 0x1e35)
    z80.hl().ld(value: 0x8f1c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4827)
    z80.iy().ld(value: 0xb742)
    z80.PC = 0x0000
    z80.SP = 0x716e
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x828e)
    XCTAssert(z80.bc().value() == 0x078b)
    XCTAssert(z80.de().value() == 0x1e35)
    XCTAssert(z80.hl().value() == 0x8f1c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4827)
    XCTAssert(z80.iy().value() == 0x92d5)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x7170)
    }

    func testfde3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xe3])
    loadRam(location: 0x1a38, data:[0xe0,0x0f])
    z80.af().ld(value: 0x4298)
    z80.bc().ld(value: 0xc805)
    z80.de().ld(value: 0x6030)
    z80.hl().ld(value: 0x4292)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x473b)
    z80.iy().ld(value: 0x9510)
    z80.PC = 0x0000
    z80.SP = 0x1a38
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4298)
    XCTAssert(z80.bc().value() == 0xc805)
    XCTAssert(z80.de().value() == 0x6030)
    XCTAssert(z80.hl().value() == 0x4292)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x473b)
    XCTAssert(z80.iy().value() == 0x0fe0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x1a38)
    }

    func testfde5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xe5])
    z80.af().ld(value: 0xd139)
    z80.bc().ld(value: 0xaa0d)
    z80.de().ld(value: 0xbf2b)
    z80.hl().ld(value: 0x2a56)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xe138)
    z80.iy().ld(value: 0xd4da)
    z80.PC = 0x0000
    z80.SP = 0xa8e1
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd139)
    XCTAssert(z80.bc().value() == 0xaa0d)
    XCTAssert(z80.de().value() == 0xbf2b)
    XCTAssert(z80.hl().value() == 0x2a56)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe138)
    XCTAssert(z80.iy().value() == 0xd4da)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xa8df)
    }

    func testfde9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xe9])
    z80.af().ld(value: 0xc14f)
    z80.bc().ld(value: 0x2eb6)
    z80.de().ld(value: 0xedf0)
    z80.hl().ld(value: 0x27cf)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x09ee)
    z80.iy().ld(value: 0xa2a4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc14f)
    XCTAssert(z80.bc().value() == 0x2eb6)
    XCTAssert(z80.de().value() == 0xedf0)
    XCTAssert(z80.hl().value() == 0x27cf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x09ee)
    XCTAssert(z80.iy().value() == 0xa2a4)
    XCTAssert(z80.PC == 0xa2a4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdf9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xf9])
    z80.af().ld(value: 0xc260)
    z80.bc().ld(value: 0x992e)
    z80.de().ld(value: 0xd544)
    z80.hl().ld(value: 0x67fb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xba5e)
    z80.iy().ld(value: 0x3596)
    z80.PC = 0x0000
    z80.SP = 0x353f
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc260)
    XCTAssert(z80.bc().value() == 0x992e)
    XCTAssert(z80.de().value() == 0xd544)
    XCTAssert(z80.hl().value() == 0x67fb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xba5e)
    XCTAssert(z80.iy().value() == 0x3596)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x3596)
    }


}
