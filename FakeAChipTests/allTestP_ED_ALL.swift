//
//  allTestP_ED_ALL.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestP_ED_ALL: BaseTest {

//    func tested40() throws {
//    loadRam(location: 0x0000, data:[0xed,0x40])
//    z80.af().ld(value: 0x83f9)
//    z80.bc().ld(value: 0x296b)
//    z80.de().ld(value: 0x7034)
//    z80.hl().ld(value: 0x1f2f)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x8329)
//    XCTAssert(z80.bc().value() == 0x296b)
//    XCTAssert(z80.de().value() == 0x7034)
//    XCTAssert(z80.hl().value() == 0x1f2f)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested41() throws {
//    loadRam(location: 0x0000, data:[0xed,0x41])
//    z80.af().ld(value: 0x29a2)
//    z80.bc().ld(value: 0x0881)
//    z80.de().ld(value: 0xd7dd)
//    z80.hl().ld(value: 0xff4e)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x29a2)
//    XCTAssert(z80.bc().value() == 0x0881)
//    XCTAssert(z80.de().value() == 0xd7dd)
//    XCTAssert(z80.hl().value() == 0xff4e)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested42() throws {
    loadRam(location: 0x0000, data:[0xed,0x42])
    z80.af().ld(value: 0xcbd3)
    z80.bc().ld(value: 0x1c8f)
    z80.de().ld(value: 0xd456)
    z80.hl().ld(value: 0x315e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xcb12)
    XCTAssert(z80.bc().value() == 0x1c8f)
    XCTAssert(z80.de().value() == 0xd456)
    XCTAssert(z80.hl().value() == 0x14ce)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested43() throws {
    loadRam(location: 0x0000, data:[0xed,0x43,0xc6,0x54])
    z80.af().ld(value: 0xda36)
    z80.bc().ld(value: 0x2732)
    z80.de().ld(value: 0x91cc)
    z80.hl().ld(value: 0x9798)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5f73
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xda36)
    XCTAssert(z80.bc().value() == 0x2732)
    XCTAssert(z80.de().value() == 0x91cc)
    XCTAssert(z80.hl().value() == 0x9798)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x5f73)
    }

    func tested44() throws {
    loadRam(location: 0x0000, data:[0xed,0x44])
    z80.af().ld(value: 0xfe2b)
    z80.bc().ld(value: 0x040f)
    z80.de().ld(value: 0xdeb6)
    z80.hl().ld(value: 0xafc3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5ca8
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x0213)
    XCTAssert(z80.bc().value() == 0x040f)
    XCTAssert(z80.de().value() == 0xdeb6)
    XCTAssert(z80.hl().value() == 0xafc3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x5ca8)
    }

    func tested45() throws {
    loadRam(location: 0x0000, data:[0xed,0x45])
    loadRam(location: 0x3100, data:[0x1f,0x22])
    z80.af().ld(value: 0x001d)
    z80.bc().ld(value: 0x5b63)
    z80.de().ld(value: 0xa586)
    z80.hl().ld(value: 0x1451)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x3100
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x001d)
    XCTAssert(z80.bc().value() == 0x5b63)
    XCTAssert(z80.de().value() == 0xa586)
    XCTAssert(z80.hl().value() == 0x1451)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x221f)
    XCTAssert(z80.SP == 0x3102)
    }

    func tested46() throws {
    loadRam(location: 0x0000, data:[0xed,0x46])
    z80.af().ld(value: 0xb6ec)
    z80.bc().ld(value: 0x8afb)
    z80.de().ld(value: 0xce09)
    z80.hl().ld(value: 0x70a1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x8dea
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xb6ec)
    XCTAssert(z80.bc().value() == 0x8afb)
    XCTAssert(z80.de().value() == 0xce09)
    XCTAssert(z80.hl().value() == 0x70a1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x8dea)
    }

    func tested47() throws {
    loadRam(location: 0x0000, data:[0xed,0x47])
    z80.af().ld(value: 0x9a99)
    z80.bc().ld(value: 0x9e5a)
    z80.de().ld(value: 0x9913)
    z80.hl().ld(value: 0xcacc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x9a99)
    XCTAssert(z80.bc().value() == 0x9e5a)
    XCTAssert(z80.de().value() == 0x9913)
    XCTAssert(z80.hl().value() == 0xcacc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func tested48() throws {
//    loadRam(location: 0x0000, data:[0xed,0x48])
//    z80.af().ld(value: 0xdbdd)
//    z80.bc().ld(value: 0x7d1b)
//    z80.de().ld(value: 0x141d)
//    z80.hl().ld(value: 0x5fb4)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xdb2d)
//    XCTAssert(z80.bc().value() == 0x7d7d)
//    XCTAssert(z80.de().value() == 0x141d)
//    XCTAssert(z80.hl().value() == 0x5fb4)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested49() throws {
//    loadRam(location: 0x0000, data:[0xed,0x49])
//    z80.af().ld(value: 0x07a5)
//    z80.bc().ld(value: 0x59ec)
//    z80.de().ld(value: 0xf459)
//    z80.hl().ld(value: 0x4316)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x07a5)
//    XCTAssert(z80.bc().value() == 0x59ec)
//    XCTAssert(z80.de().value() == 0xf459)
//    XCTAssert(z80.hl().value() == 0x4316)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested4a() throws {
    loadRam(location: 0x0000, data:[0xed,0x4a])
    z80.af().ld(value: 0x5741)
    z80.bc().ld(value: 0x24b5)
    z80.de().ld(value: 0x83d2)
    z80.hl().ld(value: 0x9ac8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x57a8)
    XCTAssert(z80.bc().value() == 0x24b5)
    XCTAssert(z80.de().value() == 0x83d2)
    XCTAssert(z80.hl().value() == 0xbf7e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested4b() throws {
    loadRam(location: 0x0000, data:[0xed,0x4b,0x1a,0xa4])
    loadRam(location: 0xa41a, data:[0xf3,0xd4])
    z80.af().ld(value: 0x650c)
    z80.bc().ld(value: 0xd74d)
    z80.de().ld(value: 0x0448)
    z80.hl().ld(value: 0xa3b9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xb554
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x650c)
    XCTAssert(z80.bc().value() == 0xd4f3)
    XCTAssert(z80.de().value() == 0x0448)
    XCTAssert(z80.hl().value() == 0xa3b9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0xb554)
    }

    func tested4c() throws {
    loadRam(location: 0x0000, data:[0xed,0x4c])
    z80.af().ld(value: 0x5682)
    z80.bc().ld(value: 0x7dde)
    z80.de().ld(value: 0xb049)
    z80.hl().ld(value: 0x939d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xc7bb
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xaabb)
    XCTAssert(z80.bc().value() == 0x7dde)
    XCTAssert(z80.de().value() == 0xb049)
    XCTAssert(z80.hl().value() == 0x939d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xc7bb)
    }

    func tested4d() throws {
    loadRam(location: 0x0000, data:[0xed,0x4d])
    loadRam(location: 0x680e, data:[0x03,0x7c])
    z80.af().ld(value: 0x1bed)
    z80.bc().ld(value: 0xc358)
    z80.de().ld(value: 0x5fd5)
    z80.hl().ld(value: 0x6093)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x680e
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x1bed)
    XCTAssert(z80.bc().value() == 0xc358)
    XCTAssert(z80.de().value() == 0x5fd5)
    XCTAssert(z80.hl().value() == 0x6093)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x7c03)
    XCTAssert(z80.SP == 0x6810)
    }

    func tested4e() throws {
    loadRam(location: 0x0000, data:[0xed,0x4e])
    z80.af().ld(value: 0x8e01)
    z80.bc().ld(value: 0xe7c6)
    z80.de().ld(value: 0x880f)
    z80.hl().ld(value: 0xd2a2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x85da
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x8e01)
    XCTAssert(z80.bc().value() == 0xe7c6)
    XCTAssert(z80.de().value() == 0x880f)
    XCTAssert(z80.hl().value() == 0xd2a2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x85da)
    }

    func tested4f() throws {
    loadRam(location: 0x0000, data:[0xed,0x4f])
    z80.af().ld(value: 0x2ae3)
    z80.bc().ld(value: 0xc115)
    z80.de().ld(value: 0xeff8)
    z80.hl().ld(value: 0x9f6d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x2ae3)
    XCTAssert(z80.bc().value() == 0xc115)
    XCTAssert(z80.de().value() == 0xeff8)
    XCTAssert(z80.hl().value() == 0x9f6d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func tested50() throws {
//    loadRam(location: 0x0000, data:[0xed,0x50])
//    z80.af().ld(value: 0x85ae)
//    z80.bc().ld(value: 0xbbcc)
//    z80.de().ld(value: 0xe2a8)
//    z80.hl().ld(value: 0xf219)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x85ac)
//    XCTAssert(z80.bc().value() == 0xbbcc)
//    XCTAssert(z80.de().value() == 0xbba8)
//    XCTAssert(z80.hl().value() == 0xf219)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested51() throws {
//    loadRam(location: 0x0000, data:[0xed,0x51])
//    z80.af().ld(value: 0x2c4c)
//    z80.bc().ld(value: 0xc0a4)
//    z80.de().ld(value: 0x5303)
//    z80.hl().ld(value: 0xbc25)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x2c4c)
//    XCTAssert(z80.bc().value() == 0xc0a4)
//    XCTAssert(z80.de().value() == 0x5303)
//    XCTAssert(z80.hl().value() == 0xbc25)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested52() throws {
    loadRam(location: 0x0000, data:[0xed,0x52])
    z80.af().ld(value: 0xfc57)
    z80.bc().ld(value: 0x1fc8)
    z80.de().ld(value: 0x47b6)
    z80.hl().ld(value: 0xda7c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xfc82)
    XCTAssert(z80.bc().value() == 0x1fc8)
    XCTAssert(z80.de().value() == 0x47b6)
    XCTAssert(z80.hl().value() == 0x92c5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested53() throws {
    loadRam(location: 0x0000, data:[0xed,0x53,0xff,0x21])
    z80.af().ld(value: 0x1f88)
    z80.bc().ld(value: 0x4692)
    z80.de().ld(value: 0x5cb2)
    z80.hl().ld(value: 0x4915)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x7d8c
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x1f88)
    XCTAssert(z80.bc().value() == 0x4692)
    XCTAssert(z80.de().value() == 0x5cb2)
    XCTAssert(z80.hl().value() == 0x4915)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x7d8c)
    }

    func tested54() throws {
    loadRam(location: 0x0000, data:[0xed,0x54])
    z80.af().ld(value: 0xadf9)
    z80.bc().ld(value: 0x5661)
    z80.de().ld(value: 0x547c)
    z80.hl().ld(value: 0xc322)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xd9eb
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x5313)
    XCTAssert(z80.bc().value() == 0x5661)
    XCTAssert(z80.de().value() == 0x547c)
    XCTAssert(z80.hl().value() == 0xc322)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xd9eb)
    }

    func tested55() throws {
    loadRam(location: 0x0000, data:[0xed,0x55])
    loadRam(location: 0xd4b4, data:[0xea,0xc9])
    z80.af().ld(value: 0xb05b)
    z80.bc().ld(value: 0x5e84)
    z80.de().ld(value: 0xd6e9)
    z80.hl().ld(value: 0xcb3e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xd4b4
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xb05b)
    XCTAssert(z80.bc().value() == 0x5e84)
    XCTAssert(z80.de().value() == 0xd6e9)
    XCTAssert(z80.hl().value() == 0xcb3e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xc9ea)
    XCTAssert(z80.SP == 0xd4b6)
    }

    func tested56() throws {
    loadRam(location: 0x0000, data:[0xed,0x56])
    z80.af().ld(value: 0x5cc0)
    z80.bc().ld(value: 0x9100)
    z80.de().ld(value: 0x356b)
    z80.hl().ld(value: 0x4bfd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x2c93
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x5cc0)
    XCTAssert(z80.bc().value() == 0x9100)
    XCTAssert(z80.de().value() == 0x356b)
    XCTAssert(z80.hl().value() == 0x4bfd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x2c93)
    }

    // TODO: LD A, I
//    func tested57() throws {
//    loadRam(location: 0x0000, data:[0xed,0x57])
//    z80.af().ld(value: 0xbcfe)
//    z80.bc().ld(value: 0xdfc7)
//    z80.de().ld(value: 0xa621)
//    z80.hl().ld(value: 0x1022)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x1e08)
//    XCTAssert(z80.bc().value() == 0xdfc7)
//    XCTAssert(z80.de().value() == 0xa621)
//    XCTAssert(z80.hl().value() == 0x1022)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

//    func tested58() throws {
//    loadRam(location: 0x0000, data:[0xed,0x58])
//    z80.af().ld(value: 0xc9ee)
//    z80.bc().ld(value: 0x4091)
//    z80.de().ld(value: 0x9e46)
//    z80.hl().ld(value: 0x873a)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xc900)
//    XCTAssert(z80.bc().value() == 0x4091)
//    XCTAssert(z80.de().value() == 0x9e40)
//    XCTAssert(z80.hl().value() == 0x873a)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested59() throws {
//    loadRam(location: 0x0000, data:[0xed,0x59])
//    z80.af().ld(value: 0x388a)
//    z80.bc().ld(value: 0xd512)
//    z80.de().ld(value: 0xecc5)
//    z80.hl().ld(value: 0x93af)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x388a)
//    XCTAssert(z80.bc().value() == 0xd512)
//    XCTAssert(z80.de().value() == 0xecc5)
//    XCTAssert(z80.hl().value() == 0x93af)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested5a() throws {
    loadRam(location: 0x0000, data:[0xed,0x5a])
    z80.af().ld(value: 0xa41f)
    z80.bc().ld(value: 0x751c)
    z80.de().ld(value: 0x19ce)
    z80.hl().ld(value: 0x0493)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xa408)
    XCTAssert(z80.bc().value() == 0x751c)
    XCTAssert(z80.de().value() == 0x19ce)
    XCTAssert(z80.hl().value() == 0x1e62)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested5b() throws {
    loadRam(location: 0x0000, data:[0xed,0x5b,0x04,0x9f])
    loadRam(location: 0x9f04, data:[0x84,0x4d])
    z80.af().ld(value: 0x5df1)
    z80.bc().ld(value: 0x982e)
    z80.de().ld(value: 0x002f)
    z80.hl().ld(value: 0xadb9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xf398
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x5df1)
    XCTAssert(z80.bc().value() == 0x982e)
    XCTAssert(z80.de().value() == 0x4d84)
    XCTAssert(z80.hl().value() == 0xadb9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0xf398)
    }

    func tested5c() throws {
    loadRam(location: 0x0000, data:[0xed,0x5c])
    z80.af().ld(value: 0x11c3)
    z80.bc().ld(value: 0xb86c)
    z80.de().ld(value: 0x2042)
    z80.hl().ld(value: 0xc958)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x93dc
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xefbb)
    XCTAssert(z80.bc().value() == 0xb86c)
    XCTAssert(z80.de().value() == 0x2042)
    XCTAssert(z80.hl().value() == 0xc958)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x93dc)
    }

    func tested5d() throws {
    loadRam(location: 0x0000, data:[0xed,0x5d])
    loadRam(location: 0x5308, data:[0x26,0xe0])
    z80.af().ld(value: 0x1152)
    z80.bc().ld(value: 0x1d20)
    z80.de().ld(value: 0x3f86)
    z80.hl().ld(value: 0x64fc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5308
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x1152)
    XCTAssert(z80.bc().value() == 0x1d20)
    XCTAssert(z80.de().value() == 0x3f86)
    XCTAssert(z80.hl().value() == 0x64fc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xe026)
    XCTAssert(z80.SP == 0x530a)
    }

    func tested5e() throws {
    loadRam(location: 0x0000, data:[0xed,0x5e])
    z80.af().ld(value: 0x611a)
    z80.bc().ld(value: 0xc8cf)
    z80.de().ld(value: 0xf215)
    z80.hl().ld(value: 0xd92b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x4d86
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x611a)
    XCTAssert(z80.bc().value() == 0xc8cf)
    XCTAssert(z80.de().value() == 0xf215)
    XCTAssert(z80.hl().value() == 0xd92b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x4d86)
    }

    // TODO: LD A,R
//    func tested5f() throws {
//    loadRam(location: 0x0000, data:[0xed,0x5f])
//    z80.af().ld(value: 0x1bb5)
//    z80.bc().ld(value: 0xfc09)
//    z80.de().ld(value: 0x2dfa)
//    z80.hl().ld(value: 0xbab9)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xf5a1)
//    XCTAssert(z80.bc().value() == 0xfc09)
//    XCTAssert(z80.de().value() == 0x2dfa)
//    XCTAssert(z80.hl().value() == 0xbab9)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

//    func tested60() throws {
//    loadRam(location: 0x0000, data:[0xed,0x60])
//    z80.af().ld(value: 0x2c9c)
//    z80.bc().ld(value: 0x0dae)
//    z80.de().ld(value: 0x621e)
//    z80.hl().ld(value: 0x2f66)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x2c08)
//    XCTAssert(z80.bc().value() == 0x0dae)
//    XCTAssert(z80.de().value() == 0x621e)
//    XCTAssert(z80.hl().value() == 0x0d66)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested61() throws {
//    loadRam(location: 0x0000, data:[0xed,0x61])
//    z80.af().ld(value: 0xffa8)
//    z80.bc().ld(value: 0x90ca)
//    z80.de().ld(value: 0x0340)
//    z80.hl().ld(value: 0xd847)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xffa8)
//    XCTAssert(z80.bc().value() == 0x90ca)
//    XCTAssert(z80.de().value() == 0x0340)
//    XCTAssert(z80.hl().value() == 0xd847)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested62() throws {
    loadRam(location: 0x0000, data:[0xed,0x62])
    z80.af().ld(value: 0xa60b)
    z80.bc().ld(value: 0xd9aa)
    z80.de().ld(value: 0x6623)
    z80.hl().ld(value: 0x0b1a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xa6bb)
    XCTAssert(z80.bc().value() == 0xd9aa)
    XCTAssert(z80.de().value() == 0x6623)
    XCTAssert(z80.hl().value() == 0xffff)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested63() throws {
    loadRam(location: 0x0000, data:[0xed,0x63,0x67,0x65])
    z80.af().ld(value: 0x5222)
    z80.bc().ld(value: 0x88f9)
    z80.de().ld(value: 0x9d9a)
    z80.hl().ld(value: 0xe4d3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xa2f0
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x5222)
    XCTAssert(z80.bc().value() == 0x88f9)
    XCTAssert(z80.de().value() == 0x9d9a)
    XCTAssert(z80.hl().value() == 0xe4d3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0xa2f0)
    }

    func tested64() throws {
    loadRam(location: 0x0000, data:[0xed,0x64])
    z80.af().ld(value: 0x2127)
    z80.bc().ld(value: 0xe425)
    z80.de().ld(value: 0x66ac)
    z80.hl().ld(value: 0xb2a3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x43f2
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xdf9b)
    XCTAssert(z80.bc().value() == 0xe425)
    XCTAssert(z80.de().value() == 0x66ac)
    XCTAssert(z80.hl().value() == 0xb2a3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x43f2)
    }

    func tested65() throws {
    loadRam(location: 0x0000, data:[0xed,0x65])
    loadRam(location: 0xf207, data:[0xeb,0x0e])
    z80.af().ld(value: 0x63d2)
    z80.bc().ld(value: 0x1fa1)
    z80.de().ld(value: 0x0788)
    z80.hl().ld(value: 0x881c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xf207
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x63d2)
    XCTAssert(z80.bc().value() == 0x1fa1)
    XCTAssert(z80.de().value() == 0x0788)
    XCTAssert(z80.hl().value() == 0x881c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x0eeb)
    XCTAssert(z80.SP == 0xf209)
    }

    func tested66() throws {
    loadRam(location: 0x0000, data:[0xed,0x66])
    z80.af().ld(value: 0x4088)
    z80.bc().ld(value: 0xa7e1)
    z80.de().ld(value: 0x3ffd)
    z80.hl().ld(value: 0x919b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xd193
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x4088)
    XCTAssert(z80.bc().value() == 0xa7e1)
    XCTAssert(z80.de().value() == 0x3ffd)
    XCTAssert(z80.hl().value() == 0x919b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xd193)
    }

    func tested67() throws {
    loadRam(location: 0x0000, data:[0xed,0x67])
    loadRam(location: 0xb9de, data:[0x93])
    z80.af().ld(value: 0x3624)
    z80.bc().ld(value: 0xb16a)
    z80.de().ld(value: 0xa4db)
    z80.hl().ld(value: 0xb9de)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x3324)
    XCTAssert(z80.bc().value() == 0xb16a)
    XCTAssert(z80.de().value() == 0xa4db)
    XCTAssert(z80.hl().value() == 0xb9de)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xb9de) == 0x69)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func tested68() throws {
//    loadRam(location: 0x0000, data:[0xed,0x68])
//    z80.af().ld(value: 0x5316)
//    z80.bc().ld(value: 0x624b)
//    z80.de().ld(value: 0x7311)
//    z80.hl().ld(value: 0x3106)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x5320)
//    XCTAssert(z80.bc().value() == 0x624b)
//    XCTAssert(z80.de().value() == 0x7311)
//    XCTAssert(z80.hl().value() == 0x3162)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested69() throws {
//    loadRam(location: 0x0000, data:[0xed,0x69])
//    z80.af().ld(value: 0xabd8)
//    z80.bc().ld(value: 0x8d2f)
//    z80.de().ld(value: 0x89c7)
//    z80.hl().ld(value: 0xc3d6)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xabd8)
//    XCTAssert(z80.bc().value() == 0x8d2f)
//    XCTAssert(z80.de().value() == 0x89c7)
//    XCTAssert(z80.hl().value() == 0xc3d6)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested6a() throws {
    loadRam(location: 0x0000, data:[0xed,0x6a])
    z80.af().ld(value: 0xbb5a)
    z80.bc().ld(value: 0x6fed)
    z80.de().ld(value: 0x59bb)
    z80.hl().ld(value: 0x4e40)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xbb9c)
    XCTAssert(z80.bc().value() == 0x6fed)
    XCTAssert(z80.de().value() == 0x59bb)
    XCTAssert(z80.hl().value() == 0x9c80)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func tested6b() throws {
    loadRam(location: 0x0000, data:[0xed,0x6b,0x98,0x61])
    loadRam(location: 0x6198, data:[0x3f,0xbe])
    z80.af().ld(value: 0x9e35)
    z80.bc().ld(value: 0xd240)
    z80.de().ld(value: 0x1998)
    z80.hl().ld(value: 0xab19)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x9275
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x9e35)
    XCTAssert(z80.bc().value() == 0xd240)
    XCTAssert(z80.de().value() == 0x1998)
    XCTAssert(z80.hl().value() == 0xbe3f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x9275)
    }

    func tested6c() throws {
    loadRam(location: 0x0000, data:[0xed,0x6c])
    z80.af().ld(value: 0x0fb1)
    z80.bc().ld(value: 0x7d5b)
    z80.de().ld(value: 0xcadb)
    z80.hl().ld(value: 0x0893)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xd983
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xf1b3)
    XCTAssert(z80.bc().value() == 0x7d5b)
    XCTAssert(z80.de().value() == 0xcadb)
    XCTAssert(z80.hl().value() == 0x0893)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xd983)
    }

    func tested6d() throws {
    loadRam(location: 0x0000, data:[0xed,0x6d])
    loadRam(location: 0x5cd3, data:[0xa9,0x73])
    z80.af().ld(value: 0x3860)
    z80.bc().ld(value: 0x42da)
    z80.de().ld(value: 0x5935)
    z80.hl().ld(value: 0xdc10)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5cd3
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x3860)
    XCTAssert(z80.bc().value() == 0x42da)
    XCTAssert(z80.de().value() == 0x5935)
    XCTAssert(z80.hl().value() == 0xdc10)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x73a9)
    XCTAssert(z80.SP == 0x5cd5)
    }

    func tested6e() throws {
    loadRam(location: 0x0000, data:[0xed,0x6e])
    z80.af().ld(value: 0x7752)
    z80.bc().ld(value: 0xbec3)
    z80.de().ld(value: 0x0457)
    z80.hl().ld(value: 0x8c95)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xa787
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x7752)
    XCTAssert(z80.bc().value() == 0xbec3)
    XCTAssert(z80.de().value() == 0x0457)
    XCTAssert(z80.hl().value() == 0x8c95)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xa787)
    }

    func tested6f() throws {
    loadRam(location: 0x0000, data:[0xed,0x6f])
    loadRam(location: 0x403c, data:[0xc4])
    z80.af().ld(value: 0x658b)
    z80.bc().ld(value: 0x7a7a)
    z80.de().ld(value: 0xecf0)
    z80.hl().ld(value: 0x403c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x6c2d)
    XCTAssert(z80.bc().value() == 0x7a7a)
    XCTAssert(z80.de().value() == 0xecf0)
    XCTAssert(z80.hl().value() == 0x403c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x403c) == 0x45)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func tested70() throws {
//    loadRam(location: 0x0000, data:[0xed,0x70])
//    z80.af().ld(value: 0xc6a1)
//    z80.bc().ld(value: 0xf7d6)
//    z80.de().ld(value: 0xa3cb)
//    z80.hl().ld(value: 0x288d)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xc6a1)
//    XCTAssert(z80.bc().value() == 0xf7d6)
//    XCTAssert(z80.de().value() == 0xa3cb)
//    XCTAssert(z80.hl().value() == 0x288d)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested71() throws {
//    loadRam(location: 0x0000, data:[0xed,0x71])
//    z80.af().ld(value: 0xafa0)
//    z80.bc().ld(value: 0x20b3)
//    z80.de().ld(value: 0x7b33)
//    z80.hl().ld(value: 0x4ac1)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xafa0)
//    XCTAssert(z80.bc().value() == 0x20b3)
//    XCTAssert(z80.de().value() == 0x7b33)
//    XCTAssert(z80.hl().value() == 0x4ac1)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested72() throws {
    loadRam(location: 0x0000, data:[0xed,0x72])
    z80.af().ld(value: 0x5fd9)
    z80.bc().ld(value: 0x05cb)
    z80.de().ld(value: 0x0c6c)
    z80.hl().ld(value: 0xd18b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x53db
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x5f3e)
    XCTAssert(z80.bc().value() == 0x05cb)
    XCTAssert(z80.de().value() == 0x0c6c)
    XCTAssert(z80.hl().value() == 0x7daf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x53db)
    }

    func tested73() throws {
    loadRam(location: 0x0000, data:[0xed,0x73,0x2a,0x79])
    z80.af().ld(value: 0x41c4)
    z80.bc().ld(value: 0x763a)
    z80.de().ld(value: 0xecb0)
    z80.hl().ld(value: 0xee62)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xaed5
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x41c4)
    XCTAssert(z80.bc().value() == 0x763a)
    XCTAssert(z80.de().value() == 0xecb0)
    XCTAssert(z80.hl().value() == 0xee62)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0xaed5)
    }

    func tested74() throws {
    loadRam(location: 0x0000, data:[0xed,0x74])
    z80.af().ld(value: 0x4454)
    z80.bc().ld(value: 0xf2d2)
    z80.de().ld(value: 0x8340)
    z80.hl().ld(value: 0x7e76)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0323
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xbcbb)
    XCTAssert(z80.bc().value() == 0xf2d2)
    XCTAssert(z80.de().value() == 0x8340)
    XCTAssert(z80.hl().value() == 0x7e76)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0323)
    }

    func tested75() throws {
    loadRam(location: 0x0000, data:[0xed,0x75])
    loadRam(location: 0x7d00, data:[0xfd,0x4f])
    z80.af().ld(value: 0x7ca4)
    z80.bc().ld(value: 0x1615)
    z80.de().ld(value: 0x5d2a)
    z80.hl().ld(value: 0xa95b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x7d00
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x7ca4)
    XCTAssert(z80.bc().value() == 0x1615)
    XCTAssert(z80.de().value() == 0x5d2a)
    XCTAssert(z80.hl().value() == 0xa95b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4ffd)
    XCTAssert(z80.SP == 0x7d02)
    }

    func tested76() throws {
    loadRam(location: 0x0000, data:[0xed,0x76])
    z80.af().ld(value: 0xcabf)
    z80.bc().ld(value: 0xff9a)
    z80.de().ld(value: 0xb98c)
    z80.hl().ld(value: 0xa8e6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xfe8e
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xcabf)
    XCTAssert(z80.bc().value() == 0xff9a)
    XCTAssert(z80.de().value() == 0xb98c)
    XCTAssert(z80.hl().value() == 0xa8e6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xfe8e)
    }

//    func tested78() throws {
//    loadRam(location: 0x0000, data:[0xed,0x78])
//    z80.af().ld(value: 0x58dd)
//    z80.bc().ld(value: 0xf206)
//    z80.de().ld(value: 0x2d6a)
//    z80.hl().ld(value: 0xaf16)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xf2a1)
//    XCTAssert(z80.bc().value() == 0xf206)
//    XCTAssert(z80.de().value() == 0x2d6a)
//    XCTAssert(z80.hl().value() == 0xaf16)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func tested79() throws {
//    loadRam(location: 0x0000, data:[0xed,0x79])
//    z80.af().ld(value: 0xe000)
//    z80.bc().ld(value: 0x4243)
//    z80.de().ld(value: 0x8f7f)
//    z80.hl().ld(value: 0xed90)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0xe000)
//    XCTAssert(z80.bc().value() == 0x4243)
//    XCTAssert(z80.de().value() == 0x8f7f)
//    XCTAssert(z80.hl().value() == 0xed90)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func tested7a() throws {
    loadRam(location: 0x0000, data:[0xed,0x7a])
    z80.af().ld(value: 0x32fd)
    z80.bc().ld(value: 0xd819)
    z80.de().ld(value: 0xd873)
    z80.hl().ld(value: 0x8dcf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5d22
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x32b8)
    XCTAssert(z80.bc().value() == 0xd819)
    XCTAssert(z80.de().value() == 0xd873)
    XCTAssert(z80.hl().value() == 0xeaf2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x5d22)
    }

    func tested7b() throws {
    loadRam(location: 0x0000, data:[0xed,0x7b,0x50,0x8c])
    loadRam(location: 0x8c50, data:[0xd8,0x48])
    z80.af().ld(value: 0x4f97)
    z80.bc().ld(value: 0x24b7)
    z80.de().ld(value: 0xe105)
    z80.hl().ld(value: 0x1bf2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x5e17
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x4f97)
    XCTAssert(z80.bc().value() == 0x24b7)
    XCTAssert(z80.de().value() == 0xe105)
    XCTAssert(z80.hl().value() == 0x1bf2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x48d8)
    }

    func tested7c() throws {
    loadRam(location: 0x0000, data:[0xed,0x7c])
    z80.af().ld(value: 0xd333)
    z80.bc().ld(value: 0x29ca)
    z80.de().ld(value: 0x9622)
    z80.hl().ld(value: 0xb452)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0be6
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x2d3b)
    XCTAssert(z80.bc().value() == 0x29ca)
    XCTAssert(z80.de().value() == 0x9622)
    XCTAssert(z80.hl().value() == 0xb452)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0be6)
    }

    func tested7d() throws {
    loadRam(location: 0x0000, data:[0xed,0x7d])
    loadRam(location: 0x66f0, data:[0x4f,0xfb])
    z80.af().ld(value: 0xecb6)
    z80.bc().ld(value: 0x073e)
    z80.de().ld(value: 0xdc1e)
    z80.hl().ld(value: 0x38d9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x66f0
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xecb6)
    XCTAssert(z80.bc().value() == 0x073e)
    XCTAssert(z80.de().value() == 0xdc1e)
    XCTAssert(z80.hl().value() == 0x38d9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xfb4f)
    XCTAssert(z80.SP == 0x66f2)
    }

    func tested7e() throws {
    loadRam(location: 0x0000, data:[0xed,0x7e])
    z80.af().ld(value: 0xb246)
    z80.bc().ld(value: 0x1a1a)
    z80.de().ld(value: 0x933a)
    z80.hl().ld(value: 0x4b8b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x2242
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xb246)
    XCTAssert(z80.bc().value() == 0x1a1a)
    XCTAssert(z80.de().value() == 0x933a)
    XCTAssert(z80.hl().value() == 0x4b8b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x2242)
    }

    func testeda0() throws {
    loadRam(location: 0x0000, data:[0xed,0xa0])
    loadRam(location: 0xd097, data:[0xb7])
    z80.af().ld(value: 0x1bc9)
    z80.bc().ld(value: 0x3d11)
    z80.de().ld(value: 0x95c1)
    z80.hl().ld(value: 0xd097)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x1be5)
    XCTAssert(z80.bc().value() == 0x3d10)
    XCTAssert(z80.de().value() == 0x95c2)
    XCTAssert(z80.hl().value() == 0xd098)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x95c1) == 0xb7)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testeda1() throws {
    loadRam(location: 0x0000, data:[0xed,0xa1])
    loadRam(location: 0x3bc3, data:[0xb4])
    z80.af().ld(value: 0xecdb)
    z80.bc().ld(value: 0x7666)
    z80.de().ld(value: 0x537f)
    z80.hl().ld(value: 0x3bc3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0xec0f)
    XCTAssert(z80.bc().value() == 0x7665)
    XCTAssert(z80.de().value() == 0x537f)
    XCTAssert(z80.hl().value() == 0x3bc4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func testeda2() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa2])
//    z80.af().ld(value: 0x0121)
//    z80.bc().ld(value: 0x9a82)
//    z80.de().ld(value: 0x5bbd)
//    z80.hl().ld(value: 0x2666)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x019f)
//    XCTAssert(z80.bc().value() == 0x9982)
//    XCTAssert(z80.de().value() == 0x5bbd)
//    XCTAssert(z80.hl().value() == 0x2667)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x2666) == 0x9a)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda2_01() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa2])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0200)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0000)
//    XCTAssert(z80.bc().value() == 0x0100)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x8001)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0x02)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda2_02() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa2])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x569a)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0000)
//    XCTAssert(z80.bc().value() == 0x559a)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x8001)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0x56)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda2_03() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa2])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0xabcc)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x00bf)
//    XCTAssert(z80.bc().value() == 0xaacc)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x8001)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0xab)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x32fa, data:[0xb3])
//    z80.af().ld(value: 0x42c5)
//    z80.bc().ld(value: 0x6334)
//    z80.de().ld(value: 0x1e28)
//    z80.hl().ld(value: 0x32fa)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x4233)
//    XCTAssert(z80.bc().value() == 0x6234)
//    XCTAssert(z80.de().value() == 0x1e28)
//    XCTAssert(z80.hl().value() == 0x32fb)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_01() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0044)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_02() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x0100, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0100)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0040)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0101)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_03() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x0107, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0107)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0044)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0108)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_04() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x80])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0046)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_05() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01fd, data:[0x12])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01fd)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0055)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x01fe)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_06() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01fe, data:[0x12])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01fe)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0051)
//    XCTAssert(z80.bc().value() == 0x0000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x01ff)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_07() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0200)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0000)
//    XCTAssert(z80.bc().value() == 0x0100)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_08() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01fe, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0800)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01fe)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0004)
//    XCTAssert(z80.bc().value() == 0x0700)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x01ff)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_09() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x8100)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0080)
//    XCTAssert(z80.bc().value() == 0x8000)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_10() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x8200)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0084)
//    XCTAssert(z80.bc().value() == 0x8100)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testeda3_11() throws {
//    loadRam(location: 0x0000, data:[0xed,0xa3])
//    loadRam(location: 0x01ff, data:[0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0xa900)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x01ff)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x00a8)
//    XCTAssert(z80.bc().value() == 0xa800)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0200)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func testeda8() throws {
    loadRam(location: 0x0000, data:[0xed,0xa8])
    loadRam(location: 0x12e8, data:[0xd8])
    z80.af().ld(value: 0x2a8e)
    z80.bc().ld(value: 0x1607)
    z80.de().ld(value: 0x5938)
    z80.hl().ld(value: 0x12e8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x2aa4)
    XCTAssert(z80.bc().value() == 0x1606)
    XCTAssert(z80.de().value() == 0x5937)
    XCTAssert(z80.hl().value() == 0x12e7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x5938) == 0xd8)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testeda9() throws {
    loadRam(location: 0x0000, data:[0xed,0xa9])
    loadRam(location: 0x0dbe, data:[0x89])
    z80.af().ld(value: 0x1495)
    z80.bc().ld(value: 0xfb42)
    z80.de().ld(value: 0x0466)
    z80.hl().ld(value: 0x0dbe)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xed)
    XCTAssert(z80.af().value() == 0x14bf)
    XCTAssert(z80.bc().value() == 0xfb41)
    XCTAssert(z80.de().value() == 0x0466)
    XCTAssert(z80.hl().value() == 0x0dbd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

//    func testedaa() throws {
//    loadRam(location: 0x0000, data:[0xed,0xaa])
//    z80.af().ld(value: 0x2042)
//    z80.bc().ld(value: 0xd791)
//    z80.de().ld(value: 0xa912)
//    z80.hl().ld(value: 0xa533)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x2097)
//    XCTAssert(z80.bc().value() == 0xd691)
//    XCTAssert(z80.de().value() == 0xa912)
//    XCTAssert(z80.hl().value() == 0xa532)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0xa533) == 0xd7)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedaa_01() throws {
//    loadRam(location: 0x0000, data:[0xed,0xaa])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0101)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0040)
//    XCTAssert(z80.bc().value() == 0x0001)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x7fff)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0x01)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedaa_02() throws {
//    loadRam(location: 0x0000, data:[0xed,0xaa])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x56aa)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0000)
//    XCTAssert(z80.bc().value() == 0x55aa)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x7fff)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0x56)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedaa_03() throws {
//    loadRam(location: 0x0000, data:[0xed,0xaa])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0xabcc)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x8000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x00bf)
//    XCTAssert(z80.bc().value() == 0xaacc)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x7fff)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x8000) == 0xab)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedab() throws {
//    loadRam(location: 0x0000, data:[0xed,0xab])
//    loadRam(location: 0x199f, data:[0x49])
//    z80.af().ld(value: 0x0037)
//    z80.bc().ld(value: 0xf334)
//    z80.de().ld(value: 0xd3e1)
//    z80.hl().ld(value: 0x199f)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x00a4)
//    XCTAssert(z80.bc().value() == 0xf234)
//    XCTAssert(z80.de().value() == 0xd3e1)
//    XCTAssert(z80.hl().value() == 0x199e)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedab_01() throws {
//    loadRam(location: 0x0000, data:[0xed,0xab])
//    loadRam(location: 0x007a, data:[0x7f])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x5800)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x007a)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0000)
//    XCTAssert(z80.bc().value() == 0x5700)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x0079)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedab_02() throws {
//    loadRam(location: 0x0000, data:[0xed,0xab])
//    loadRam(location: 0x00f1, data:[0xcd])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0xab00)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x00f1)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x00bf)
//    XCTAssert(z80.bc().value() == 0xaa00)
//    XCTAssert(z80.de().value() == 0x0000)
//    XCTAssert(z80.hl().value() == 0x00f0)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func testedb0() throws {
    loadRam(location: 0x0000, data:[0xed,0xb0])
    loadRam(location: 0x558e, data:[0x53,0x94,0x30,0x05,0x44,0x24,0x22,0xb9,0xe9,0x77,0x23,0x71,0xe2,0x5c,0xfb,0x49])
    z80.af().ld(value: 0x1045)
    z80.bc().ld(value: 0x0010)
    z80.de().ld(value: 0xaad8)
    z80.hl().ld(value: 0x558e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0x1049)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xaae8)
    XCTAssert(z80.hl().value() == 0x559e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xaad8) == 0x53)
    XCTAssert(z80.fetchRam(location: 0xaad9) == 0x94)
    XCTAssert(z80.fetchRam(location: 0xaada) == 0x30)
    XCTAssert(z80.fetchRam(location: 0xaadb) == 0x05)
    XCTAssert(z80.fetchRam(location: 0xaadc) == 0x44)
    XCTAssert(z80.fetchRam(location: 0xaadd) == 0x24)
    XCTAssert(z80.fetchRam(location: 0xaade) == 0x22)
    XCTAssert(z80.fetchRam(location: 0xaadf) == 0xb9)
    XCTAssert(z80.fetchRam(location: 0xaae0) == 0xe9)
    XCTAssert(z80.fetchRam(location: 0xaae1) == 0x77)
    XCTAssert(z80.fetchRam(location: 0xaae2) == 0x23)
    XCTAssert(z80.fetchRam(location: 0xaae3) == 0x71)
    XCTAssert(z80.fetchRam(location: 0xaae4) == 0xe2)
    XCTAssert(z80.fetchRam(location: 0xaae5) == 0x5c)
    XCTAssert(z80.fetchRam(location: 0xaae6) == 0xfb)
    XCTAssert(z80.fetchRam(location: 0xaae7) == 0x49)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb0_1() throws {
    loadRam(location: 0x4000, data:[0xed,0xb0])
    loadRam(location: 0x8000, data:[0x12,0x34])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0002)
    z80.de().ld(value: 0xc000)
    z80.hl().ld(value: 0x8000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x4000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xc002)
    XCTAssert(z80.hl().value() == 0x8002)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x4002)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb0_2() throws {
    loadRam(location: 0x4000, data:[0xed,0xb0])
    loadRam(location: 0x8000, data:[0x12,0x34])
    loadRam(location: 0xc000, data:[0x00,0x00])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0001)
    z80.de().ld(value: 0xc000)
    z80.hl().ld(value: 0x8000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x4000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0x0020)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xc001)
    XCTAssert(z80.hl().value() == 0x8001)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xc000) == 0x12)
        XCTAssert(z80.fetchRam(location: 0xc001) == 0x00)
    XCTAssert(z80.PC == 0x4002)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb1() throws {
    loadRam(location: 0x0000, data:[0xed,0xb1])
    loadRam(location: 0x9825, data:[0x50,0xe5,0x41,0xf4,0x01,0x9f,0x11,0x85])
    z80.af().ld(value: 0xf4dd)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0xe4e0)
    z80.hl().ld(value: 0x9825)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        
        while z80.c() == 8 || (z80.c() != 0 && !Z80.F.isSet(bit: Flag.ZERO)){
    z80.opCode(byte: 0xed)
        }
        XCTAssert(z80.af().value().ignore3And5() == UInt16(0xf447).ignore3And5())
    XCTAssert(z80.bc().value() == 0x0004)
    XCTAssert(z80.de().value() == 0xe4e0)
    XCTAssert(z80.hl().value() == 0x9829)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb1_1() throws {
    loadRam(location: 0x8396, data:[0xed,0xb1])
    loadRam(location: 0x9825, data:[0x50,0xe5,0x41,0xf4,0x01,0x9f,0x11,0x85])
    z80.af().ld(value: 0xf4dd)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0xe4e0)
    z80.hl().ld(value: 0x9825)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x8396
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() == 8 || (z80.c() != 0 && !Z80.F.isSet(bit: Flag.ZERO)){
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value().ignore3And5() == UInt16(0xf447).ignore3And5())
    XCTAssert(z80.bc().value() == 0x0004)
    XCTAssert(z80.de().value() == 0xe4e0)
    XCTAssert(z80.hl().value() == 0x9829)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x8398)
    XCTAssert(z80.SP == 0x0000)
    }

//    func testedb1_2() throws {
//    loadRam(location: 0x8396, data:[0xed,0xb1])
//    loadRam(location: 0x9825, data:[0xf4,0xe5,0xf4,0xf4,0x01,0x9f,0x11,0x85])
//    z80.af().ld(value: 0xf4dd)
//    z80.bc().ld(value: 0x0008)
//    z80.de().ld(value: 0xe4e0)
//    z80.hl().ld(value: 0x9825)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x8396
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//        XCTAssert(z80.af().value().ignore3And5() == UInt16(0xf487).ignore3And5())
//    XCTAssert(z80.bc().value() == 0x0007)
//    XCTAssert(z80.de().value() == 0xe4e0)
//    XCTAssert(z80.hl().value() == 0x9826)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x8398)
//    XCTAssert(z80.SP == 0x0000)
//    }

//    func testedb2() throws {
//    loadRam(location: 0x0000, data:[0xed,0xb2])
//    z80.af().ld(value: 0x8a34)
//    z80.bc().ld(value: 0x0a40)
//    z80.de().ld(value: 0xd98c)
//    z80.hl().ld(value: 0x37ce)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x8a40)
//    XCTAssert(z80.bc().value() == 0x0040)
//    XCTAssert(z80.de().value() == 0xd98c)
//    XCTAssert(z80.hl().value() == 0x37d8)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedb2_1() throws {
//    loadRam(location: 0x0000, data:[0xed,0xb2])
//    z80.af().ld(value: 0x8a34)
//    z80.bc().ld(value: 0x0a40)
//    z80.de().ld(value: 0xd98c)
//    z80.hl().ld(value: 0x37ce)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x8a0c)
//    XCTAssert(z80.bc().value() == 0x0940)
//    XCTAssert(z80.de().value() == 0xd98c)
//    XCTAssert(z80.hl().value() == 0x37cf)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x37ce) == 0x0a)
//    XCTAssert(z80.PC == 0x0)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedb3() throws {
//    loadRam(location: 0x0000, data:[0xed,0xb3])
//    loadRam(location: 0x1d7c, data:[0x9d,0x24,0xaa])
//    z80.af().ld(value: 0x34ab)
//    z80.bc().ld(value: 0x03e0)
//    z80.de().ld(value: 0x41b9)
//    z80.hl().ld(value: 0x1d7c)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x3453)
//    XCTAssert(z80.bc().value() == 0x00e0)
//    XCTAssert(z80.de().value() == 0x41b9)
//    XCTAssert(z80.hl().value() == 0x1d7f)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedb3_1() throws {
//    loadRam(location: 0x0000, data:[0xed,0xb3])
//    loadRam(location: 0x1d7c, data:[0x9d,0x24,0xaa])
//    z80.af().ld(value: 0x34ab)
//    z80.bc().ld(value: 0x03e0)
//    z80.de().ld(value: 0x41b9)
//    z80.hl().ld(value: 0x1d7c)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x3417)
//    XCTAssert(z80.bc().value() == 0x02e0)
//    XCTAssert(z80.de().value() == 0x41b9)
//    XCTAssert(z80.hl().value() == 0x1d7d)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x0)
//    XCTAssert(z80.SP == 0x0000)
//    }

    func testedb8() throws {
    loadRam(location: 0x0000, data:[0xed,0xb8])
    loadRam(location: 0x4dc8, data:[0x29,0x85,0xa7,0xc3,0x55,0x74,0x23,0x0a])
    z80.af().ld(value: 0xe553)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0x68e8)
    z80.hl().ld(value: 0x4dcf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0xe569)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x68e0)
    XCTAssert(z80.hl().value() == 0x4dc7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x68e1) == 0x29)
    XCTAssert(z80.fetchRam(location: 0x68e2) == 0x85)
    XCTAssert(z80.fetchRam(location: 0x68e3) == 0xa7)
    XCTAssert(z80.fetchRam(location: 0x68e4) == 0xc3)
    XCTAssert(z80.fetchRam(location: 0x68e5) == 0x55)
    XCTAssert(z80.fetchRam(location: 0x68e6) == 0x74)
    XCTAssert(z80.fetchRam(location: 0x68e7) == 0x23)
    XCTAssert(z80.fetchRam(location: 0x68e8) == 0x0a)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb8_1() throws {
    loadRam(location: 0x1ec1, data:[0xed,0xb8])
    loadRam(location: 0x6aef, data:[0xd6,0x70])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0002)
    z80.de().ld(value: 0xb5d7)
    z80.hl().ld(value: 0x6af0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x1ec1
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0x0020)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xb5d5)
    XCTAssert(z80.hl().value() == 0x6aee)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1ec3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb8_2() throws {
    loadRam(location: 0x1ec1, data:[0xed,0xb8])
    loadRam(location: 0x6aef, data:[0xd6,0x70])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0001)
    z80.de().ld(value: 0xb5d7)
    z80.hl().ld(value: 0x6af0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x1ec1
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() != 0 {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xb5d6)
    XCTAssert(z80.hl().value() == 0x6aef)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xb5d7) == 0x70)
    XCTAssert(z80.PC == 0x1ec3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb9() throws {
    loadRam(location: 0x0000, data:[0xed,0xb9])
    loadRam(location: 0xc742, data:[0xc6,0x09,0x85,0xec,0x5a,0x01,0x4e,0x6c])
    z80.af().ld(value: 0xffcd)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0xa171)
    z80.hl().ld(value: 0xc749)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() == 8 || (z80.c() != 0 && !Z80.F.isSet(bit: Flag.ZERO)){
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value().ignore3And5() == UInt16(0xffab).ignore3And5())
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xa171)
    XCTAssert(z80.hl().value() == 0xc741)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb9_1() throws {
    loadRam(location: 0x7a45, data:[0xed,0xb9])
    loadRam(location: 0xc742, data:[0xc6,0x09,0x85,0xec,0x5a,0x01,0x4e,0x6c])
    z80.af().ld(value: 0xffcd)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0xa171)
    z80.hl().ld(value: 0xc749)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x7a45
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        while z80.c() == 8 || (z80.c() != 0 && !Z80.F.isSet(bit: Flag.ZERO)){
    z80.opCode(byte: 0xed)
        }
        XCTAssert(z80.af().value().ignore3And5() == UInt16(0xffab).ignore3And5())
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xa171)
    XCTAssert(z80.hl().value() == 0xc741)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x7a47)
    XCTAssert(z80.SP == 0x0000)
    }

    func testedb9_2() throws {
    loadRam(location: 0x7a45, data:[0xed,0xb9])
    loadRam(location: 0xc742, data:[0xc6,0x09,0x85,0xec,0x5a,0x01,0x4e,0xff])
    z80.af().ld(value: 0xffcd)
    z80.bc().ld(value: 0x0008)
    z80.de().ld(value: 0xa171)
    z80.hl().ld(value: 0xc749)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x7a45
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
        //while z80.c() == 8 || (z80.c() != 0 && !Z80.F.isSet(bit: Flag.ZERO)){
        while z80.c() == 8 || !z80.instructionCompleted {
    z80.opCode(byte: 0xed)
        }
    XCTAssert(z80.af().value().ignore3And5() == UInt16(0xff47).ignore3And5())
    XCTAssert(z80.bc().value() == 0x0007)
    XCTAssert(z80.de().value() == 0xa171)
    XCTAssert(z80.hl().value() == 0xc748)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x7a47)
    XCTAssert(z80.SP == 0x0000)
    }

//    func testedba() throws {
//    loadRam(location: 0x0000, data:[0xed,0xba])
//    z80.af().ld(value: 0x2567)
//    z80.bc().ld(value: 0x069f)
//    z80.de().ld(value: 0xd40d)
//    z80.hl().ld(value: 0x6b55)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x2540)
//    XCTAssert(z80.bc().value() == 0x009f)
//    XCTAssert(z80.de().value() == 0xd40d)
//    XCTAssert(z80.hl().value() == 0x6b4f)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x6b50) == 0x01)
//    XCTAssert(z80.fetchRam(location: 0x6b51) == 0x02)
//    XCTAssert(z80.fetchRam(location: 0x6b52) == 0x03)
//    XCTAssert(z80.fetchRam(location: 0x6b53) == 0x04)
//    XCTAssert(z80.fetchRam(location: 0x6b54) == 0x05)
//    XCTAssert(z80.fetchRam(location: 0x6b55) == 0x06)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedba_1() throws {
//    loadRam(location: 0x0000, data:[0xed,0xba])
//    z80.af().ld(value: 0x2567)
//    z80.bc().ld(value: 0x069f)
//    z80.de().ld(value: 0xd40d)
//    z80.hl().ld(value: 0x6b55)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x2500)
//    XCTAssert(z80.bc().value() == 0x059f)
//    XCTAssert(z80.de().value() == 0xd40d)
//    XCTAssert(z80.hl().value() == 0x6b54)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.fetchRam(location: 0x6b55) == 0x06)
//    XCTAssert(z80.PC == 0x0)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedbb() throws {
//    loadRam(location: 0x0000, data:[0xed,0xbb])
//    loadRam(location: 0x1dcd, data:[0xf9,0x71,0xc5,0xb6])
//    z80.af().ld(value: 0x09c4)
//    z80.bc().ld(value: 0x043b)
//    z80.de().ld(value: 0xbe49)
//    z80.hl().ld(value: 0x1dd0)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0957)
//    XCTAssert(z80.bc().value() == 0x003b)
//    XCTAssert(z80.de().value() == 0xbe49)
//    XCTAssert(z80.hl().value() == 0x1dcc)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0000)
//    }
//
//    func testedbb_1() throws {
//    loadRam(location: 0x0000, data:[0xed,0xbb])
//    loadRam(location: 0x1dcd, data:[0xf9,0x71,0xc5,0xb6])
//    z80.af().ld(value: 0x09c4)
//    z80.bc().ld(value: 0x043b)
//    z80.de().ld(value: 0xbe49)
//    z80.hl().ld(value: 0x1dd0)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xed)
//    XCTAssert(z80.af().value() == 0x0917)
//    XCTAssert(z80.bc().value() == 0x033b)
//    XCTAssert(z80.de().value() == 0xbe49)
//    XCTAssert(z80.hl().value() == 0x1dcf)
//    XCTAssert(z80.af2().value() == 0x0000)
//    XCTAssert(z80.bc2().value() == 0x0000)
//    XCTAssert(z80.de2().value() == 0x0000)
//    XCTAssert(z80.hl2().value() == 0x0000)
//    XCTAssert(z80.ix().value() == 0x0000)
//    XCTAssert(z80.iy().value() == 0x0000)
//    XCTAssert(z80.PC == 0x0)
//    XCTAssert(z80.SP == 0x0000)
//    }
//

}
