//
//  allTestsP_DD80toff.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_DD80toff: BaseTest {

 
    func testdd84() throws {
    loadRam(location: 0x0000, data:[0xdd,0x84])
    z80.af().ld(value: 0x2e47)
    z80.bc().ld(value: 0x1de8)
    z80.de().ld(value: 0xb8b9)
    z80.hl().ld(value: 0x78a6)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9f1d)
    z80.iy().ld(value: 0xb11f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcd98)
    XCTAssert(z80.bc().value() == 0x1de8)
    XCTAssert(z80.de().value() == 0xb8b9)
    XCTAssert(z80.hl().value() == 0x78a6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9f1d)
    XCTAssert(z80.iy().value() == 0xb11f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd85() throws {
    loadRam(location: 0x0000, data:[0xdd,0x85])
    z80.af().ld(value: 0xb27a)
    z80.bc().ld(value: 0xb1ff)
    z80.de().ld(value: 0x8d7b)
    z80.hl().ld(value: 0x40c0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb513)
    z80.iy().ld(value: 0x0688)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc580)
    XCTAssert(z80.bc().value() == 0xb1ff)
    XCTAssert(z80.de().value() == 0x8d7b)
    XCTAssert(z80.hl().value() == 0x40c0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb513)
    XCTAssert(z80.iy().value() == 0x688)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd86() throws {
    loadRam(location: 0x0000, data:[0xdd,0x86,0xc1])
    loadRam(location: 0xb576, data:[0x5b])
    z80.af().ld(value: 0x4efa)
    z80.bc().ld(value: 0xd085)
    z80.de().ld(value: 0x5bac)
    z80.hl().ld(value: 0xe364)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb5b5)
    z80.iy().ld(value: 0xfe3a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa9bc)
    XCTAssert(z80.bc().value() == 0xd085)
    XCTAssert(z80.de().value() == 0x5bac)
    XCTAssert(z80.hl().value() == 0xe364)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb5b5)
    XCTAssert(z80.iy().value() == 0xfe3a)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd8c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x8c])
    z80.af().ld(value: 0xbc63)
    z80.bc().ld(value: 0x8fdc)
    z80.de().ld(value: 0xea8f)
    z80.hl().ld(value: 0x9734)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0eb3)
    z80.iy().ld(value: 0x1b54)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcb98)
    XCTAssert(z80.bc().value() == 0x8fdc)
    XCTAssert(z80.de().value() == 0xea8f)
    XCTAssert(z80.hl().value() == 0x9734)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0eb3)
    XCTAssert(z80.iy().value() == 0x1b54)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd8d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x8d])
    z80.af().ld(value: 0xb61f)
    z80.bc().ld(value: 0x1c81)
    z80.de().ld(value: 0xb6fb)
    z80.hl().ld(value: 0xd6e5)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x09be)
    z80.iy().ld(value: 0xa736)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7535)
    XCTAssert(z80.bc().value() == 0x1c81)
    XCTAssert(z80.de().value() == 0xb6fb)
    XCTAssert(z80.hl().value() == 0xd6e5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x09be)
    XCTAssert(z80.iy().value() == 0xa736)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd8e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x8e,0x25])
    loadRam(location: 0xbbbc, data:[0x32])
    z80.af().ld(value: 0x4ed4)
    z80.bc().ld(value: 0x182d)
    z80.de().ld(value: 0xab17)
    z80.hl().ld(value: 0x94ae)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbb97)
    z80.iy().ld(value: 0x87da)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8094)
    XCTAssert(z80.bc().value() == 0x182d)
    XCTAssert(z80.de().value() == 0xab17)
    XCTAssert(z80.hl().value() == 0x94ae)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbb97)
    XCTAssert(z80.iy().value() == 0x87da)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd94() throws {
    loadRam(location: 0x0000, data:[0xdd,0x94])
    z80.af().ld(value: 0x7ef1)
    z80.bc().ld(value: 0x9efe)
    z80.de().ld(value: 0x6ea1)
    z80.hl().ld(value: 0xfc55)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0a09)
    z80.iy().ld(value: 0x89c5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7422)
    XCTAssert(z80.bc().value() == 0x9efe)
    XCTAssert(z80.de().value() == 0x6ea1)
    XCTAssert(z80.hl().value() == 0xfc55)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0a09)
    XCTAssert(z80.iy().value() == 0x89c5)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd95() throws {
    loadRam(location: 0x0000, data:[0xdd,0x95])
    z80.af().ld(value: 0x2920)
    z80.bc().ld(value: 0x59ab)
    z80.de().ld(value: 0x428c)
    z80.hl().ld(value: 0x3a94)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x44fd)
    z80.iy().ld(value: 0xf243)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2c3b)
    XCTAssert(z80.bc().value() == 0x59ab)
    XCTAssert(z80.de().value() == 0x428c)
    XCTAssert(z80.hl().value() == 0x3a94)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x44fd)
    XCTAssert(z80.iy().value() == 0xf243)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd96() throws {
    loadRam(location: 0x0000, data:[0xdd,0x96,0x5f])
    loadRam(location: 0x2cc5, data:[0x49])
    z80.af().ld(value: 0x9b76)
    z80.bc().ld(value: 0x461f)
    z80.de().ld(value: 0xced7)
    z80.hl().ld(value: 0xdb3f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x2c66)
    z80.iy().ld(value: 0x9dbf)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5206)
    XCTAssert(z80.bc().value() == 0x461f)
    XCTAssert(z80.de().value() == 0xced7)
    XCTAssert(z80.hl().value() == 0xdb3f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2c66)
    XCTAssert(z80.iy().value() == 0x9dbf)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd9c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x9c])
    z80.af().ld(value: 0xfaf4)
    z80.bc().ld(value: 0x670e)
    z80.de().ld(value: 0xafcc)
    z80.hl().ld(value: 0x8b34)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x285f)
    z80.iy().ld(value: 0x1caa)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd282)
    XCTAssert(z80.bc().value() == 0x670e)
    XCTAssert(z80.de().value() == 0xafcc)
    XCTAssert(z80.hl().value() == 0x8b34)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x285f)
    XCTAssert(z80.iy().value() == 0x1caa)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd9d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x9d])
    z80.af().ld(value: 0xf827)
    z80.bc().ld(value: 0x0cdb)
    z80.de().ld(value: 0xdf32)
    z80.hl().ld(value: 0xd0e4)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9b12)
    z80.iy().ld(value: 0x7d07)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe5a2)
    XCTAssert(z80.bc().value() == 0x0cdb)
    XCTAssert(z80.de().value() == 0xdf32)
    XCTAssert(z80.hl().value() == 0xd0e4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9b12)
    XCTAssert(z80.iy().value() == 0x7d07)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd9e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x9e,0x14])
    loadRam(location: 0xb4e0, data:[0xb5])
    z80.af().ld(value: 0x938e)
    z80.bc().ld(value: 0xf9c5)
    z80.de().ld(value: 0xcbc4)
    z80.hl().ld(value: 0xca21)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb4cc)
    z80.iy().ld(value: 0x46fa)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xde9b)
    XCTAssert(z80.bc().value() == 0xf9c5)
    XCTAssert(z80.de().value() == 0xcbc4)
    XCTAssert(z80.hl().value() == 0xca21)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb4cc)
    XCTAssert(z80.iy().value() == 0x46fa)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdda4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xa4])
    z80.af().ld(value: 0x52f5)
    z80.bc().ld(value: 0xba53)
    z80.de().ld(value: 0xacfc)
    z80.hl().ld(value: 0x9481)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x2f8b)
    z80.iy().ld(value: 0xedf6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x210)
    XCTAssert(z80.bc().value() == 0xba53)
    XCTAssert(z80.de().value() == 0xacfc)
    XCTAssert(z80.hl().value() == 0x9481)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2f8b)
    XCTAssert(z80.iy().value() == 0xedf6)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdda5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xa5])
    z80.af().ld(value: 0xbaaf)
    z80.bc().ld(value: 0xa675)
    z80.de().ld(value: 0xd757)
    z80.hl().ld(value: 0xf1db)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xfdef)
    z80.iy().ld(value: 0xd8ce)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaabc)
    XCTAssert(z80.bc().value() == 0xa675)
    XCTAssert(z80.de().value() == 0xd757)
    XCTAssert(z80.hl().value() == 0xf1db)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfdef)
    XCTAssert(z80.iy().value() == 0xd8ce)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdda6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xa6,0x41])
    loadRam(location: 0x7ed6, data:[0xc7])
    z80.af().ld(value: 0x1da4)
    z80.bc().ld(value: 0x20c4)
    z80.de().ld(value: 0xebc3)
    z80.hl().ld(value: 0xda8d)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7e95)
    z80.iy().ld(value: 0x5e8a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x514)
    XCTAssert(z80.bc().value() == 0x20c4)
    XCTAssert(z80.de().value() == 0xebc3)
    XCTAssert(z80.hl().value() == 0xda8d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7e95)
    XCTAssert(z80.iy().value() == 0x5e8a)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testddac() throws {
    loadRam(location: 0x0000, data:[0xdd,0xac])
    z80.af().ld(value: 0xef15)
    z80.bc().ld(value: 0x2a7c)
    z80.de().ld(value: 0x17e5)
    z80.hl().ld(value: 0x3f6e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xaffa)
    z80.iy().ld(value: 0xa0b5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4000)
    XCTAssert(z80.bc().value() == 0x2a7c)
    XCTAssert(z80.de().value() == 0x17e5)
    XCTAssert(z80.hl().value() == 0x3f6e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xaffa)
    XCTAssert(z80.iy().value() == 0xa0b5)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddad() throws {
    loadRam(location: 0x0000, data:[0xdd,0xad])
    z80.af().ld(value: 0xba2e)
    z80.bc().ld(value: 0x6ba1)
    z80.de().ld(value: 0xef1b)
    z80.hl().ld(value: 0x5713)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xba38)
    z80.iy().ld(value: 0xa708)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8284)
    XCTAssert(z80.bc().value() == 0x6ba1)
    XCTAssert(z80.de().value() == 0xef1b)
    XCTAssert(z80.hl().value() == 0x5713)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xba38)
    XCTAssert(z80.iy().value() == 0xa708)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddae() throws {
    loadRam(location: 0x0000, data:[0xdd,0xae,0x72])
    loadRam(location: 0xe97b, data:[0xc3])
    z80.af().ld(value: 0x8009)
    z80.bc().ld(value: 0x3ad6)
    z80.de().ld(value: 0xa721)
    z80.hl().ld(value: 0x2100)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xe909)
    z80.iy().ld(value: 0x87b4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4300)
    XCTAssert(z80.bc().value() == 0x3ad6)
    XCTAssert(z80.de().value() == 0xa721)
    XCTAssert(z80.hl().value() == 0x2100)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe909)
    XCTAssert(z80.iy().value() == 0x87b4)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testddb4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xb4])
    z80.af().ld(value: 0x1ccd)
    z80.bc().ld(value: 0x29aa)
    z80.de().ld(value: 0x2e82)
    z80.hl().ld(value: 0x4dc8)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9c04)
    z80.iy().ld(value: 0x8be3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9c8c)
    XCTAssert(z80.bc().value() == 0x29aa)
    XCTAssert(z80.de().value() == 0x2e82)
    XCTAssert(z80.hl().value() == 0x4dc8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9c04)
    XCTAssert(z80.iy().value() == 0x8be3)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddb5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xb5])
    z80.af().ld(value: 0x46b4)
    z80.bc().ld(value: 0xfc93)
    z80.de().ld(value: 0x7a06)
    z80.hl().ld(value: 0x0518)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0ac5)
    z80.iy().ld(value: 0x4150)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc780)
    XCTAssert(z80.bc().value() == 0xfc93)
    XCTAssert(z80.de().value() == 0x7a06)
    XCTAssert(z80.hl().value() == 0x518)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0ac5)
    XCTAssert(z80.iy().value() == 0x4150)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddb6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xb6,0x31])
    loadRam(location: 0xc6a0, data:[0x1c])
    z80.af().ld(value: 0x5017)
    z80.bc().ld(value: 0xab81)
    z80.de().ld(value: 0x4287)
    z80.hl().ld(value: 0x5ee1)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc66f)
    z80.iy().ld(value: 0xd6cc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5c0c)
    XCTAssert(z80.bc().value() == 0xab81)
    XCTAssert(z80.de().value() == 0x4287)
    XCTAssert(z80.hl().value() == 0x5ee1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc66f)
    XCTAssert(z80.iy().value() == 0xd6cc)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testddbc() throws {
    loadRam(location: 0x0000, data:[0xdd,0xbc])
    z80.af().ld(value: 0x53e0)
    z80.bc().ld(value: 0xaa98)
    z80.de().ld(value: 0xf7d7)
    z80.hl().ld(value: 0xfa0c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbe7a)
    z80.iy().ld(value: 0xa41f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x53bf)
    XCTAssert(z80.bc().value() == 0xaa98)
    XCTAssert(z80.de().value() == 0xf7d7)
    XCTAssert(z80.hl().value() == 0xfa0c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbe7a)
    XCTAssert(z80.iy().value() == 0xa41f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddbd() throws {
    loadRam(location: 0x0000, data:[0xdd,0xbd])
    z80.af().ld(value: 0xdc83)
    z80.bc().ld(value: 0x80ce)
    z80.de().ld(value: 0x5d2f)
    z80.hl().ld(value: 0xe999)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbb41)
    z80.iy().ld(value: 0xa24f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdc82)
    XCTAssert(z80.bc().value() == 0x80ce)
    XCTAssert(z80.de().value() == 0x5d2f)
    XCTAssert(z80.hl().value() == 0xe999)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbb41)
    XCTAssert(z80.iy().value() == 0xa24f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testddbe() throws {
    loadRam(location: 0x0000, data:[0xdd,0xbe,0x48])
    loadRam(location: 0x937a, data:[0x5b])
    z80.af().ld(value: 0x9838)
    z80.bc().ld(value: 0xbfd5)
    z80.de().ld(value: 0xa299)
    z80.hl().ld(value: 0xd34b)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9332)
    z80.iy().ld(value: 0xb1d5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x981e)
    XCTAssert(z80.bc().value() == 0xbfd5)
    XCTAssert(z80.de().value() == 0xa299)
    XCTAssert(z80.hl().value() == 0xd34b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9332)
    XCTAssert(z80.iy().value() == 0xb1d5)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }
    
    func testdde1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xe1])
    loadRam(location: 0x595f, data:[0x9a,0x09])
    z80.af().ld(value: 0x8a15)
    z80.bc().ld(value: 0x6bf0)
    z80.de().ld(value: 0x0106)
    z80.hl().ld(value: 0x3dd0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5da4)
    z80.iy().ld(value: 0x8716)
    z80.PC = 0x0000
    z80.SP = 0x595f
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8a15)
    XCTAssert(z80.bc().value() == 0x6bf0)
    XCTAssert(z80.de().value() == 0x0106)
    XCTAssert(z80.hl().value() == 0x3dd0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x099a)
    XCTAssert(z80.iy().value() == 0x8716)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x5961)
    }

    func testdde3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xe3])
    loadRam(location: 0x57bd, data:[0x15,0x3f])
    z80.af().ld(value: 0x068e)
    z80.bc().ld(value: 0x58e6)
    z80.de().ld(value: 0x2713)
    z80.hl().ld(value: 0x500f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbe05)
    z80.iy().ld(value: 0x4308)
    z80.PC = 0x0000
    z80.SP = 0x57bd
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x068e)
    XCTAssert(z80.bc().value() == 0x58e6)
    XCTAssert(z80.de().value() == 0x2713)
    XCTAssert(z80.hl().value() == 0x500f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3f15)
    XCTAssert(z80.iy().value() == 0x4308)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x57bd)
    }

    func testdde5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xe5])
    z80.af().ld(value: 0x7462)
    z80.bc().ld(value: 0x9b6c)
    z80.de().ld(value: 0xbfe5)
    z80.hl().ld(value: 0x0330)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb282)
    z80.iy().ld(value: 0xe272)
    z80.PC = 0x0000
    z80.SP = 0x0761
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7462)
    XCTAssert(z80.bc().value() == 0x9b6c)
    XCTAssert(z80.de().value() == 0xbfe5)
    XCTAssert(z80.hl().value() == 0x0330)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb282)
    XCTAssert(z80.iy().value() == 0xe272)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x075f)
    }

    func testdde9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xe9])
    z80.af().ld(value: 0x75a7)
    z80.bc().ld(value: 0x139b)
    z80.de().ld(value: 0xf9a3)
    z80.hl().ld(value: 0x94bb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x64f0)
    z80.iy().ld(value: 0x3433)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x75a7)
    XCTAssert(z80.bc().value() == 0x139b)
    XCTAssert(z80.de().value() == 0xf9a3)
    XCTAssert(z80.hl().value() == 0x94bb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x64f0)
    XCTAssert(z80.iy().value() == 0x3433)
    XCTAssert(z80.PC == 0x64f0)
    XCTAssert(z80.SP == 0x0000)
    }

    func testddf9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xf9])
    z80.af().ld(value: 0x8709)
    z80.bc().ld(value: 0x15dd)
    z80.de().ld(value: 0x7fa6)
    z80.hl().ld(value: 0x3c5c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd3a7)
    z80.iy().ld(value: 0x1d7b)
    z80.PC = 0x0000
    z80.SP = 0xf67c
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8709)
    XCTAssert(z80.bc().value() == 0x15dd)
    XCTAssert(z80.de().value() == 0x7fa6)
    XCTAssert(z80.hl().value() == 0x3c5c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd3a7)
    XCTAssert(z80.iy().value() == 0x1d7b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xd3a7)
    }




}
