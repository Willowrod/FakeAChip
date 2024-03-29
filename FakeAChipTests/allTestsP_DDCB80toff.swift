//
//  allTestsP_DDCB80toff.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_DDCB80toff: BaseTest {

    func testddcb80() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x70,0x80])
    loadRam(location: 0xad35, data:[0x30])
    z80.af().ld(value: 0x6319)
    z80.bc().ld(value: 0xbaf9)
    z80.de().ld(value: 0xc84b)
    z80.hl().ld(value: 0xbcf2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xacc5)
    z80.iy().ld(value: 0xa4ed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6319)
    XCTAssert(z80.bc().value() == 0x30f9)
    XCTAssert(z80.de().value() == 0xc84b)
    XCTAssert(z80.hl().value() == 0xbcf2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xacc5)
    XCTAssert(z80.iy().value() == 0xa4ed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb81() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2a,0x81])
    loadRam(location: 0xbdfd, data:[0x24])
    z80.af().ld(value: 0xfae1)
    z80.bc().ld(value: 0x5ae5)
    z80.de().ld(value: 0x9502)
    z80.hl().ld(value: 0xdc9b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbdd3)
    z80.iy().ld(value: 0x1a52)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfae1)
    XCTAssert(z80.bc().value() == 0x5a24)
    XCTAssert(z80.de().value() == 0x9502)
    XCTAssert(z80.hl().value() == 0xdc9b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbdd3)
    XCTAssert(z80.iy().value() == 0x1a52)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb82() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9a,0x82])
    loadRam(location: 0x5e0e, data:[0x51])
    z80.af().ld(value: 0xdaf6)
    z80.bc().ld(value: 0x3260)
    z80.de().ld(value: 0xf1ac)
    z80.hl().ld(value: 0x1d47)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5e74)
    z80.iy().ld(value: 0x35e2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdaf6)
    XCTAssert(z80.bc().value() == 0x3260)
    XCTAssert(z80.de().value() == 0x50ac)
    XCTAssert(z80.hl().value() == 0x1d47)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5e74)
    XCTAssert(z80.iy().value() == 0x35e2)
    XCTAssert(z80.fetchRam(location: 0x5e0e) == 0x50)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb83() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0e,0x83])
    loadRam(location: 0x344f, data:[0x01])
    z80.af().ld(value: 0x8e7c)
    z80.bc().ld(value: 0x5586)
    z80.de().ld(value: 0x8c92)
    z80.hl().ld(value: 0xfb00)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3441)
    z80.iy().ld(value: 0xd365)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8e7c)
    XCTAssert(z80.bc().value() == 0x5586)
    XCTAssert(z80.de().value() == 0x8c00)
    XCTAssert(z80.hl().value() == 0xfb00)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3441)
    XCTAssert(z80.iy().value() == 0xd365)
    XCTAssert(z80.fetchRam(location: 0x344f) == 0x0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb84() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x47,0x84])
    loadRam(location: 0x016a, data:[0xb0])
    z80.af().ld(value: 0xc1b3)
    z80.bc().ld(value: 0x4874)
    z80.de().ld(value: 0xc535)
    z80.hl().ld(value: 0x0e1c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0123)
    z80.iy().ld(value: 0xdd28)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc1b3)
    XCTAssert(z80.bc().value() == 0x4874)
    XCTAssert(z80.de().value() == 0xc535)
    XCTAssert(z80.hl().value() == 0xb01c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x123)
    XCTAssert(z80.iy().value() == 0xdd28)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb85() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x6c,0x85])
    loadRam(location: 0x0c0f, data:[0xde])
    z80.af().ld(value: 0x0928)
    z80.bc().ld(value: 0xb0db)
    z80.de().ld(value: 0x4e07)
    z80.hl().ld(value: 0xa7b7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0ba3)
    z80.iy().ld(value: 0xc61c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x928)
    XCTAssert(z80.bc().value() == 0xb0db)
    XCTAssert(z80.de().value() == 0x4e07)
    XCTAssert(z80.hl().value() == 0xa7de)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0ba3)
    XCTAssert(z80.iy().value() == 0xc61c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb86() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x5c,0x86])
    loadRam(location: 0x1121, data:[0x7c])
    z80.af().ld(value: 0x4515)
    z80.bc().ld(value: 0xde09)
    z80.de().ld(value: 0x3ce7)
    z80.hl().ld(value: 0x1fde)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x10c5)
    z80.iy().ld(value: 0x33ed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4515)
    XCTAssert(z80.bc().value() == 0xde09)
    XCTAssert(z80.de().value() == 0x3ce7)
    XCTAssert(z80.hl().value() == 0x1fde)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x10c5)
    XCTAssert(z80.iy().value() == 0x33ed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb87() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x02,0x87])
    loadRam(location: 0xede8, data:[0xc4])
    z80.af().ld(value: 0xd05e)
    z80.bc().ld(value: 0xa733)
    z80.de().ld(value: 0xd1dd)
    z80.hl().ld(value: 0x1603)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xede6)
    z80.iy().ld(value: 0xe5fb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc45e)
    XCTAssert(z80.bc().value() == 0xa733)
    XCTAssert(z80.de().value() == 0xd1dd)
    XCTAssert(z80.hl().value() == 0x1603)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xede6)
    XCTAssert(z80.iy().value() == 0xe5fb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb88() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9b,0x88])
    loadRam(location: 0x8729, data:[0x7c])
    z80.af().ld(value: 0xe4fa)
    z80.bc().ld(value: 0x3325)
    z80.de().ld(value: 0xc266)
    z80.hl().ld(value: 0x1b13)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x878e)
    z80.iy().ld(value: 0xe695)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe4fa)
    XCTAssert(z80.bc().value() == 0x7c25)
    XCTAssert(z80.de().value() == 0xc266)
    XCTAssert(z80.hl().value() == 0x1b13)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x878e)
    XCTAssert(z80.iy().value() == 0xe695)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb89() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2b,0x89])
    loadRam(location: 0x8f69, data:[0xcf])
    z80.af().ld(value: 0x933b)
    z80.bc().ld(value: 0x6fdd)
    z80.de().ld(value: 0xa3a8)
    z80.hl().ld(value: 0x2634)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8f3e)
    z80.iy().ld(value: 0x7727)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x933b)
    XCTAssert(z80.bc().value() == 0x6fcd)
    XCTAssert(z80.de().value() == 0xa3a8)
    XCTAssert(z80.hl().value() == 0x2634)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8f3e)
    XCTAssert(z80.iy().value() == 0x7727)
    XCTAssert(z80.fetchRam(location: 0x8f69) == 0xcd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0a,0x8a])
    loadRam(location: 0x39b3, data:[0xea])
    z80.af().ld(value: 0x6759)
    z80.bc().ld(value: 0xad1e)
    z80.de().ld(value: 0x5d71)
    z80.hl().ld(value: 0xce52)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x39a9)
    z80.iy().ld(value: 0x38a0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6759)
    XCTAssert(z80.bc().value() == 0xad1e)
    XCTAssert(z80.de().value() == 0xe871)
    XCTAssert(z80.hl().value() == 0xce52)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x39a9)
    XCTAssert(z80.iy().value() == 0x38a0)
    XCTAssert(z80.fetchRam(location: 0x39b3) == 0xe8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x62,0x8b])
    loadRam(location: 0x16e7, data:[0x8a])
    z80.af().ld(value: 0x3da2)
    z80.bc().ld(value: 0x1833)
    z80.de().ld(value: 0x03c1)
    z80.hl().ld(value: 0x07e9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1685)
    z80.iy().ld(value: 0xd790)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3da2)
    XCTAssert(z80.bc().value() == 0x1833)
    XCTAssert(z80.de().value() == 0x388)
    XCTAssert(z80.hl().value() == 0x07e9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1685)
    XCTAssert(z80.iy().value() == 0xd790)
    XCTAssert(z80.fetchRam(location: 0x16e7) == 0x88)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe8,0x8c])
    loadRam(location: 0xc68a, data:[0x3e])
    z80.af().ld(value: 0xa625)
    z80.bc().ld(value: 0xed31)
    z80.de().ld(value: 0x3946)
    z80.hl().ld(value: 0x32dc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc6a2)
    z80.iy().ld(value: 0x7ad6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa625)
    XCTAssert(z80.bc().value() == 0xed31)
    XCTAssert(z80.de().value() == 0x3946)
    XCTAssert(z80.hl().value() == 0x3cdc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc6a2)
    XCTAssert(z80.iy().value() == 0x7ad6)
    XCTAssert(z80.fetchRam(location: 0xc68a) == 0x3c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xcc,0x8d])
    loadRam(location: 0x22b2, data:[0x9e])
    z80.af().ld(value: 0x016b)
    z80.bc().ld(value: 0x5802)
    z80.de().ld(value: 0xa683)
    z80.hl().ld(value: 0x2549)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x22e6)
    z80.iy().ld(value: 0x33bb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x016b)
    XCTAssert(z80.bc().value() == 0x5802)
    XCTAssert(z80.de().value() == 0xa683)
    XCTAssert(z80.hl().value() == 0x259c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x22e6)
    XCTAssert(z80.iy().value() == 0x33bb)
    XCTAssert(z80.fetchRam(location: 0x22b2) == 0x9c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0a,0x8e])
    loadRam(location: 0xd2f2, data:[0x03])
    z80.af().ld(value: 0xf4f4)
    z80.bc().ld(value: 0xf3a8)
    z80.de().ld(value: 0x2843)
    z80.hl().ld(value: 0x82cb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd2e8)
    z80.iy().ld(value: 0xd367)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf4f4)
    XCTAssert(z80.bc().value() == 0xf3a8)
    XCTAssert(z80.de().value() == 0x2843)
    XCTAssert(z80.hl().value() == 0x82cb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd2e8)
    XCTAssert(z80.iy().value() == 0xd367)
    XCTAssert(z80.fetchRam(location: 0xd2f2) == 0x1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb8f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7b,0x8f])
    loadRam(location: 0x4079, data:[0x96])
    z80.af().ld(value: 0x6b1a)
    z80.bc().ld(value: 0x8ae2)
    z80.de().ld(value: 0x269b)
    z80.hl().ld(value: 0xcb2f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3ffe)
    z80.iy().ld(value: 0x75dd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x941a)
    XCTAssert(z80.bc().value() == 0x8ae2)
    XCTAssert(z80.de().value() == 0x269b)
    XCTAssert(z80.hl().value() == 0xcb2f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3ffe)
    XCTAssert(z80.iy().value() == 0x75dd)
    XCTAssert(z80.fetchRam(location: 0x4079) == 0x94)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb90() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x04,0x90])
    loadRam(location: 0xb505, data:[0x46])
    z80.af().ld(value: 0xc167)
    z80.bc().ld(value: 0x3dfc)
    z80.de().ld(value: 0x42e7)
    z80.hl().ld(value: 0x9e14)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb501)
    z80.iy().ld(value: 0x84fe)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc167)
    XCTAssert(z80.bc().value() == 0x42fc)
    XCTAssert(z80.de().value() == 0x42e7)
    XCTAssert(z80.hl().value() == 0x9e14)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb501)
    XCTAssert(z80.iy().value() == 0x84fe)
    XCTAssert(z80.fetchRam(location: 0xb505) == 0x42)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb91() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x11,0x91])
    loadRam(location: 0xc998, data:[0x83])
    z80.af().ld(value: 0xe85e)
    z80.bc().ld(value: 0xcc89)
    z80.de().ld(value: 0xd249)
    z80.hl().ld(value: 0xea3b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc987)
    z80.iy().ld(value: 0xc4d1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe85e)
    XCTAssert(z80.bc().value() == 0xcc83)
    XCTAssert(z80.de().value() == 0xd249)
    XCTAssert(z80.hl().value() == 0xea3b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc987)
    XCTAssert(z80.iy().value() == 0xc4d1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb92() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4b,0x92])
    loadRam(location: 0x91b1, data:[0xaa])
    z80.af().ld(value: 0x28a3)
    z80.bc().ld(value: 0x85ff)
    z80.de().ld(value: 0xab28)
    z80.hl().ld(value: 0x47a5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9166)
    z80.iy().ld(value: 0xe755)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x28a3)
    XCTAssert(z80.bc().value() == 0x85ff)
    XCTAssert(z80.de().value() == 0xaa28)
    XCTAssert(z80.hl().value() == 0x47a5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9166)
    XCTAssert(z80.iy().value() == 0xe755)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb93() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x03,0x93])
    loadRam(location: 0xac31, data:[0x93])
    z80.af().ld(value: 0x58ac)
    z80.bc().ld(value: 0xc88b)
    z80.de().ld(value: 0x6d24)
    z80.hl().ld(value: 0xdbdd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xac2e)
    z80.iy().ld(value: 0x5199)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x58ac)
    XCTAssert(z80.bc().value() == 0xc88b)
    XCTAssert(z80.de().value() == 0x6d93)
    XCTAssert(z80.hl().value() == 0xdbdd)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xac2e)
    XCTAssert(z80.iy().value() == 0x5199)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb94() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x11,0x94])
    loadRam(location: 0x5e95, data:[0xb7])
    z80.af().ld(value: 0xe38d)
    z80.bc().ld(value: 0x35a5)
    z80.de().ld(value: 0x8d07)
    z80.hl().ld(value: 0xbfb8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5e84)
    z80.iy().ld(value: 0x5f24)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe38d)
    XCTAssert(z80.bc().value() == 0x35a5)
    XCTAssert(z80.de().value() == 0x8d07)
    XCTAssert(z80.hl().value() == 0xb3b8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5e84)
    XCTAssert(z80.iy().value() == 0x5f24)
    XCTAssert(z80.fetchRam(location: 0x5e95) == 0xb3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb95() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe6,0x95])
    loadRam(location: 0xfb5a, data:[0xc6])
    z80.af().ld(value: 0x41f4)
    z80.bc().ld(value: 0x9536)
    z80.de().ld(value: 0xdd7d)
    z80.hl().ld(value: 0x4948)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfb74)
    z80.iy().ld(value: 0xf17d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x41f4)
    XCTAssert(z80.bc().value() == 0x9536)
    XCTAssert(z80.de().value() == 0xdd7d)
    XCTAssert(z80.hl().value() == 0x49c2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfb74)
    XCTAssert(z80.iy().value() == 0xf17d)
    XCTAssert(z80.fetchRam(location: 0xfb5a) == 0xc2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb96() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd5,0x96])
    loadRam(location: 0x7a56, data:[0xae])
    z80.af().ld(value: 0x4a9e)
    z80.bc().ld(value: 0x42ef)
    z80.de().ld(value: 0x32d7)
    z80.hl().ld(value: 0x18cf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7a81)
    z80.iy().ld(value: 0xbb1d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4a9e)
    XCTAssert(z80.bc().value() == 0x42ef)
    XCTAssert(z80.de().value() == 0x32d7)
    XCTAssert(z80.hl().value() == 0x18cf)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7a81)
    XCTAssert(z80.iy().value() == 0xbb1d)
    XCTAssert(z80.fetchRam(location: 0x7a56) == 0xaa)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb97() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x92,0x97])
    loadRam(location: 0x840e, data:[0x23])
    z80.af().ld(value: 0x9ad3)
    z80.bc().ld(value: 0x89f0)
    z80.de().ld(value: 0x73c7)
    z80.hl().ld(value: 0x0b1a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x847c)
    z80.iy().ld(value: 0x4b86)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x23d3)
    XCTAssert(z80.bc().value() == 0x89f0)
    XCTAssert(z80.de().value() == 0x73c7)
    XCTAssert(z80.hl().value() == 0x0b1a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x847c)
    XCTAssert(z80.iy().value() == 0x4b86)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb98() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdc,0x98])
    loadRam(location: 0x03fa, data:[0x58])
    z80.af().ld(value: 0x6e22)
    z80.bc().ld(value: 0xb9fd)
    z80.de().ld(value: 0x9fdc)
    z80.hl().ld(value: 0x3aed)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x041e)
    z80.iy().ld(value: 0xfd79)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6e22)
    XCTAssert(z80.bc().value() == 0x50fd)
    XCTAssert(z80.de().value() == 0x9fdc)
    XCTAssert(z80.hl().value() == 0x3aed)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x041e)
    XCTAssert(z80.iy().value() == 0xfd79)
    XCTAssert(z80.fetchRam(location: 0x03fa) == 0x50)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb99() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x6d,0x99])
    loadRam(location: 0x0a6a, data:[0xce])
    z80.af().ld(value: 0xa132)
    z80.bc().ld(value: 0x3891)
    z80.de().ld(value: 0x1515)
    z80.hl().ld(value: 0x2830)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x09fd)
    z80.iy().ld(value: 0x0473)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa132)
    XCTAssert(z80.bc().value() == 0x38c6)
    XCTAssert(z80.de().value() == 0x1515)
    XCTAssert(z80.hl().value() == 0x2830)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x09fd)
    XCTAssert(z80.iy().value() == 0x473)
    XCTAssert(z80.fetchRam(location: 0x0a6a) == 0xc6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x8a,0x9a])
    loadRam(location: 0x6832, data:[0xa8])
    z80.af().ld(value: 0x783d)
    z80.bc().ld(value: 0x8f69)
    z80.de().ld(value: 0x91c4)
    z80.hl().ld(value: 0xe38f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x68a8)
    z80.iy().ld(value: 0x391d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x783d)
    XCTAssert(z80.bc().value() == 0x8f69)
    XCTAssert(z80.de().value() == 0xa0c4)
    XCTAssert(z80.hl().value() == 0xe38f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x68a8)
    XCTAssert(z80.iy().value() == 0x391d)
    XCTAssert(z80.fetchRam(location: 0x6832) == 0xa0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x97,0x9b])
    loadRam(location: 0x0686, data:[0x62])
    z80.af().ld(value: 0x955a)
    z80.bc().ld(value: 0xc7b0)
    z80.de().ld(value: 0x53b3)
    z80.hl().ld(value: 0xaec6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x06ef)
    z80.iy().ld(value: 0xe991)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x955a)
    XCTAssert(z80.bc().value() == 0xc7b0)
    XCTAssert(z80.de().value() == 0x5362)
    XCTAssert(z80.hl().value() == 0xaec6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x06ef)
    XCTAssert(z80.iy().value() == 0xe991)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x54,0x9c])
    loadRam(location: 0x84cf, data:[0x1b])
    z80.af().ld(value: 0xaf69)
    z80.bc().ld(value: 0xf896)
    z80.de().ld(value: 0xe791)
    z80.hl().ld(value: 0xa2ee)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x847b)
    z80.iy().ld(value: 0x59ed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaf69)
    XCTAssert(z80.bc().value() == 0xf896)
    XCTAssert(z80.de().value() == 0xe791)
    XCTAssert(z80.hl().value() == 0x13ee)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x847b)
    XCTAssert(z80.iy().value() == 0x59ed)
    XCTAssert(z80.fetchRam(location: 0x84cf) == 0x13)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0f,0x9d])
    loadRam(location: 0xe92f, data:[0xe8])
    z80.af().ld(value: 0x7d1e)
    z80.bc().ld(value: 0x5009)
    z80.de().ld(value: 0x1248)
    z80.hl().ld(value: 0x380c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe920)
    z80.iy().ld(value: 0x4fe6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7d1e)
    XCTAssert(z80.bc().value() == 0x5009)
    XCTAssert(z80.de().value() == 0x1248)
    XCTAssert(z80.hl().value() == 0x38e0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe920)
    XCTAssert(z80.iy().value() == 0x4fe6)
    XCTAssert(z80.fetchRam(location: 0xe92f) == 0xe0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb5,0x9e])
    loadRam(location: 0xd870, data:[0xee])
    z80.af().ld(value: 0xc207)
    z80.bc().ld(value: 0xb47c)
    z80.de().ld(value: 0x0e16)
    z80.hl().ld(value: 0xe17f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd8bb)
    z80.iy().ld(value: 0xbb99)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc207)
    XCTAssert(z80.bc().value() == 0xb47c)
    XCTAssert(z80.de().value() == 0x0e16)
    XCTAssert(z80.hl().value() == 0xe17f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd8bb)
    XCTAssert(z80.iy().value() == 0xbb99)
    XCTAssert(z80.fetchRam(location: 0xd870) == 0xe6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb9f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb8,0x9f])
    loadRam(location: 0xe5f4, data:[0xa6])
    z80.af().ld(value: 0xc26b)
    z80.bc().ld(value: 0x7537)
    z80.de().ld(value: 0x46bb)
    z80.hl().ld(value: 0x13c0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe63c)
    z80.iy().ld(value: 0x1d98)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa66b)
    XCTAssert(z80.bc().value() == 0x7537)
    XCTAssert(z80.de().value() == 0x46bb)
    XCTAssert(z80.hl().value() == 0x13c0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe63c)
    XCTAssert(z80.iy().value() == 0x1d98)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x02,0xa0])
    loadRam(location: 0xa2f2, data:[0x39])
    z80.af().ld(value: 0x0bbe)
    z80.bc().ld(value: 0x8500)
    z80.de().ld(value: 0x8609)
    z80.hl().ld(value: 0x5352)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa2f0)
    z80.iy().ld(value: 0xda02)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x0bbe)
    XCTAssert(z80.bc().value() == 0x2900)
    XCTAssert(z80.de().value() == 0x8609)
    XCTAssert(z80.hl().value() == 0x5352)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa2f0)
    XCTAssert(z80.iy().value() == 0xda02)
    XCTAssert(z80.fetchRam(location: 0xa2f2) == 0x29)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf5,0xa1])
    loadRam(location: 0x45b0, data:[0xd2])
    z80.af().ld(value: 0xad0a)
    z80.bc().ld(value: 0xaa76)
    z80.de().ld(value: 0x0f2d)
    z80.hl().ld(value: 0x832c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x45bb)
    z80.iy().ld(value: 0xa22d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xad0a)
    XCTAssert(z80.bc().value() == 0xaac2)
    XCTAssert(z80.de().value() == 0x0f2d)
    XCTAssert(z80.hl().value() == 0x832c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x45bb)
    XCTAssert(z80.iy().value() == 0xa22d)
    XCTAssert(z80.fetchRam(location: 0x45b0) == 0xc2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0e,0xa2])
    loadRam(location: 0x6299, data:[0xa1])
    z80.af().ld(value: 0xf586)
    z80.bc().ld(value: 0x4a7d)
    z80.de().ld(value: 0xa5ab)
    z80.hl().ld(value: 0x26fc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x628b)
    z80.iy().ld(value: 0x6c4d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf586)
    XCTAssert(z80.bc().value() == 0x4a7d)
    XCTAssert(z80.de().value() == 0xa1ab)
    XCTAssert(z80.hl().value() == 0x26fc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x628b)
    XCTAssert(z80.iy().value() == 0x6c4d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2e,0xa3])
    loadRam(location: 0x043b, data:[0x04])
    z80.af().ld(value: 0xde5b)
    z80.bc().ld(value: 0xa284)
    z80.de().ld(value: 0xd40e)
    z80.hl().ld(value: 0xc92d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x040d)
    z80.iy().ld(value: 0x12c0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xde5b)
    XCTAssert(z80.bc().value() == 0xa284)
    XCTAssert(z80.de().value() == 0xd404)
    XCTAssert(z80.hl().value() == 0xc92d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x040d)
    XCTAssert(z80.iy().value() == 0x12c0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x03,0xa4])
    loadRam(location: 0xfe50, data:[0x27])
    z80.af().ld(value: 0xdfaa)
    z80.bc().ld(value: 0xae40)
    z80.de().ld(value: 0x02c3)
    z80.hl().ld(value: 0xe0b5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe4d)
    z80.iy().ld(value: 0xfaa3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdfaa)
    XCTAssert(z80.bc().value() == 0xae40)
    XCTAssert(z80.de().value() == 0x02c3)
    XCTAssert(z80.hl().value() == 0x27b5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfe4d)
    XCTAssert(z80.iy().value() == 0xfaa3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf6,0xa5])
    loadRam(location: 0x7b1d, data:[0x6b])
    z80.af().ld(value: 0x1a15)
    z80.bc().ld(value: 0x04cb)
    z80.de().ld(value: 0x4352)
    z80.hl().ld(value: 0xee39)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7b27)
    z80.iy().ld(value: 0x38a0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1a15)
    XCTAssert(z80.bc().value() == 0x04cb)
    XCTAssert(z80.de().value() == 0x4352)
    XCTAssert(z80.hl().value() == 0xee6b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7b27)
    XCTAssert(z80.iy().value() == 0x38a0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x27,0xa6])
    loadRam(location: 0xae42, data:[0x8f])
    z80.af().ld(value: 0x5e46)
    z80.bc().ld(value: 0xb98a)
    z80.de().ld(value: 0xb822)
    z80.hl().ld(value: 0x04ca)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xae1b)
    z80.iy().ld(value: 0x8730)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5e46)
    XCTAssert(z80.bc().value() == 0xb98a)
    XCTAssert(z80.de().value() == 0xb822)
    XCTAssert(z80.hl().value() == 0x04ca)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xae1b)
    XCTAssert(z80.iy().value() == 0x8730)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf2,0xa7])
    loadRam(location: 0x5eba, data:[0x87])
    z80.af().ld(value: 0x0eed)
    z80.bc().ld(value: 0x7b11)
    z80.de().ld(value: 0x8cb0)
    z80.hl().ld(value: 0xeb3d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5ec8)
    z80.iy().ld(value: 0x97cf)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x87ed)
    XCTAssert(z80.bc().value() == 0x7b11)
    XCTAssert(z80.de().value() == 0x8cb0)
    XCTAssert(z80.hl().value() == 0xeb3d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5ec8)
    XCTAssert(z80.iy().value() == 0x97cf)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd0,0xa8])
    loadRam(location: 0xe81f, data:[0x7e])
    z80.af().ld(value: 0x5173)
    z80.bc().ld(value: 0x3089)
    z80.de().ld(value: 0x070d)
    z80.hl().ld(value: 0xe8f9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe84f)
    z80.iy().ld(value: 0x55f0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5173)
    XCTAssert(z80.bc().value() == 0x5e89)
    XCTAssert(z80.de().value() == 0x070d)
    XCTAssert(z80.hl().value() == 0xe8f9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe84f)
    XCTAssert(z80.iy().value() == 0x55f0)
    XCTAssert(z80.fetchRam(location: 0xe81f) == 0x5e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcba9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9d,0xa9])
    loadRam(location: 0x0f7a, data:[0x1f])
    z80.af().ld(value: 0x4fb8)
    z80.bc().ld(value: 0xccb5)
    z80.de().ld(value: 0x3e9a)
    z80.hl().ld(value: 0x2673)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0fdd)
    z80.iy().ld(value: 0xaef2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4fb8)
    XCTAssert(z80.bc().value() == 0xcc1f)
    XCTAssert(z80.de().value() == 0x3e9a)
    XCTAssert(z80.hl().value() == 0x2673)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0fdd)
    XCTAssert(z80.iy().value() == 0xaef2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbaa() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9f,0xaa])
    loadRam(location: 0x66e6, data:[0x50])
    z80.af().ld(value: 0xfe76)
    z80.bc().ld(value: 0x6f96)
    z80.de().ld(value: 0x3feb)
    z80.hl().ld(value: 0x0b21)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6747)
    z80.iy().ld(value: 0x07ba)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfe76)
    XCTAssert(z80.bc().value() == 0x6f96)
    XCTAssert(z80.de().value() == 0x50eb)
    XCTAssert(z80.hl().value() == 0x0b21)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6747)
    XCTAssert(z80.iy().value() == 0x07ba)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbab() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x16,0xab])
    loadRam(location: 0x6698, data:[0xeb])
    z80.af().ld(value: 0x2eb4)
    z80.bc().ld(value: 0x36f1)
    z80.de().ld(value: 0x8f44)
    z80.hl().ld(value: 0x36af)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6682)
    z80.iy().ld(value: 0x9d60)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2eb4)
    XCTAssert(z80.bc().value() == 0x36f1)
    XCTAssert(z80.de().value() == 0x8fcb)
    XCTAssert(z80.hl().value() == 0x36af)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6682)
    XCTAssert(z80.iy().value() == 0x9d60)
    XCTAssert(z80.fetchRam(location: 0x6698) == 0xcb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbac() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc4,0xac])
    loadRam(location: 0xa4a1, data:[0x44])
    z80.af().ld(value: 0xaf32)
    z80.bc().ld(value: 0x8ca8)
    z80.de().ld(value: 0x6558)
    z80.hl().ld(value: 0x06d9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa4dd)
    z80.iy().ld(value: 0xcd1f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaf32)
    XCTAssert(z80.bc().value() == 0x8ca8)
    XCTAssert(z80.de().value() == 0x6558)
    XCTAssert(z80.hl().value() == 0x44d9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa4dd)
    XCTAssert(z80.iy().value() == 0xcd1f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbad() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x49,0xad])
    loadRam(location: 0xef3e, data:[0x76])
    z80.af().ld(value: 0xfcc9)
    z80.bc().ld(value: 0x69a7)
    z80.de().ld(value: 0x0eed)
    z80.hl().ld(value: 0xeab5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeef5)
    z80.iy().ld(value: 0x3ed2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfcc9)
    XCTAssert(z80.bc().value() == 0x69a7)
    XCTAssert(z80.de().value() == 0x0eed)
    XCTAssert(z80.hl().value() == 0xea56)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeef5)
    XCTAssert(z80.iy().value() == 0x3ed2)
    XCTAssert(z80.fetchRam(location: 0xef3e) == 0x56)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbae() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x6e,0xae])
    loadRam(location: 0xb374, data:[0x5a])
    z80.af().ld(value: 0x5f7a)
    z80.bc().ld(value: 0x9c20)
    z80.de().ld(value: 0xf013)
    z80.hl().ld(value: 0xc4b7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb306)
    z80.iy().ld(value: 0x15dd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5f7a)
    XCTAssert(z80.bc().value() == 0x9c20)
    XCTAssert(z80.de().value() == 0xf013)
    XCTAssert(z80.hl().value() == 0xc4b7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb306)
    XCTAssert(z80.iy().value() == 0x15dd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbaf() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc2,0xaf])
    loadRam(location: 0x35db, data:[0x15])
    z80.af().ld(value: 0xb11e)
    z80.bc().ld(value: 0x2583)
    z80.de().ld(value: 0x51fa)
    z80.hl().ld(value: 0xd427)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3619)
    z80.iy().ld(value: 0x9cef)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x151e)
    XCTAssert(z80.bc().value() == 0x2583)
    XCTAssert(z80.de().value() == 0x51fa)
    XCTAssert(z80.hl().value() == 0xd427)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3619)
    XCTAssert(z80.iy().value() == 0x9cef)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x47,0xb0])
    loadRam(location: 0x591e, data:[0x1e])
    z80.af().ld(value: 0xf43e)
    z80.bc().ld(value: 0xce57)
    z80.de().ld(value: 0x3bf3)
    z80.hl().ld(value: 0x0933)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x58d7)
    z80.iy().ld(value: 0xd89f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf43e)
    XCTAssert(z80.bc().value() == 0x1e57)
    XCTAssert(z80.de().value() == 0x3bf3)
    XCTAssert(z80.hl().value() == 0x933)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x58d7)
    XCTAssert(z80.iy().value() == 0xd89f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x86,0xb1])
    loadRam(location: 0xad58, data:[0x46])
    z80.af().ld(value: 0x35ef)
    z80.bc().ld(value: 0xbbbc)
    z80.de().ld(value: 0xdb46)
    z80.hl().ld(value: 0x046c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xadd2)
    z80.iy().ld(value: 0x2b6e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x35ef)
    XCTAssert(z80.bc().value() == 0xbb06)
    XCTAssert(z80.de().value() == 0xdb46)
    XCTAssert(z80.hl().value() == 0x046c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xadd2)
    XCTAssert(z80.iy().value() == 0x2b6e)
    XCTAssert(z80.fetchRam(location: 0xad58) == 0x6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x70,0xb2])
    loadRam(location: 0xe840, data:[0x48])
    z80.af().ld(value: 0xc26c)
    z80.bc().ld(value: 0xfd32)
    z80.de().ld(value: 0x9b7f)
    z80.hl().ld(value: 0xab6c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe7d0)
    z80.iy().ld(value: 0x501f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc26c)
    XCTAssert(z80.bc().value() == 0xfd32)
    XCTAssert(z80.de().value() == 0x087f)
    XCTAssert(z80.hl().value() == 0xab6c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe7d0)
    XCTAssert(z80.iy().value() == 0x501f)
    XCTAssert(z80.fetchRam(location: 0xe840) == 0x8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xde,0xb3])
    loadRam(location: 0x53d9, data:[0x06])
    z80.af().ld(value: 0x36ca)
    z80.bc().ld(value: 0xb434)
    z80.de().ld(value: 0xe212)
    z80.hl().ld(value: 0xf805)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x53fb)
    z80.iy().ld(value: 0xb191)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x36ca)
    XCTAssert(z80.bc().value() == 0xb434)
    XCTAssert(z80.de().value() == 0xe206)
    XCTAssert(z80.hl().value() == 0xf805)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x53fb)
    XCTAssert(z80.iy().value() == 0xb191)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x6b,0xb4])
    loadRam(location: 0x50d1, data:[0xdd])
    z80.af().ld(value: 0x0a1c)
    z80.bc().ld(value: 0xab67)
    z80.de().ld(value: 0x9ca1)
    z80.hl().ld(value: 0x2f98)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5066)
    z80.iy().ld(value: 0x320c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x0a1c)
    XCTAssert(z80.bc().value() == 0xab67)
    XCTAssert(z80.de().value() == 0x9ca1)
    XCTAssert(z80.hl().value() == 0x9d98)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5066)
    XCTAssert(z80.iy().value() == 0x320c)
    XCTAssert(z80.fetchRam(location: 0x50d1) == 0x9d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xec,0xb5])
    loadRam(location: 0x145a, data:[0xd6])
    z80.af().ld(value: 0xfd6d)
    z80.bc().ld(value: 0x51c9)
    z80.de().ld(value: 0x16d6)
    z80.hl().ld(value: 0x1373)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x146e)
    z80.iy().ld(value: 0x2148)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfd6d)
    XCTAssert(z80.bc().value() == 0x51c9)
    XCTAssert(z80.de().value() == 0x16d6)
    XCTAssert(z80.hl().value() == 0x1396)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x146e)
    XCTAssert(z80.iy().value() == 0x2148)
    XCTAssert(z80.fetchRam(location: 0x145a) == 0x96)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x15,0xb6])
    loadRam(location: 0x8787, data:[0x8c])
    z80.af().ld(value: 0x1d0b)
    z80.bc().ld(value: 0x04e8)
    z80.de().ld(value: 0x109e)
    z80.hl().ld(value: 0x1dde)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8772)
    z80.iy().ld(value: 0x8661)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1d0b)
    XCTAssert(z80.bc().value() == 0x04e8)
    XCTAssert(z80.de().value() == 0x109e)
    XCTAssert(z80.hl().value() == 0x1dde)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8772)
    XCTAssert(z80.iy().value() == 0x8661)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd3,0xb7])
    loadRam(location: 0x60f3, data:[0x54])
    z80.af().ld(value: 0xf012)
    z80.bc().ld(value: 0xb87e)
    z80.de().ld(value: 0x65ba)
    z80.hl().ld(value: 0xa5c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6120)
    z80.iy().ld(value: 0x789d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1412)
    XCTAssert(z80.bc().value() == 0xb87e)
    XCTAssert(z80.de().value() == 0x65ba)
    XCTAssert(z80.hl().value() == 0xa5c8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6120)
    XCTAssert(z80.iy().value() == 0x789d)
    XCTAssert(z80.fetchRam(location: 0x60f3) == 0x14)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x13,0xb8])
    loadRam(location: 0x0c09, data:[0x87])
    z80.af().ld(value: 0x8eae)
    z80.bc().ld(value: 0x4a53)
    z80.de().ld(value: 0xbfa1)
    z80.hl().ld(value: 0x5e7e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0bf6)
    z80.iy().ld(value: 0x1e35)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8eae)
    XCTAssert(z80.bc().value() == 0x753)
    XCTAssert(z80.de().value() == 0xbfa1)
    XCTAssert(z80.hl().value() == 0x5e7e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0bf6)
    XCTAssert(z80.iy().value() == 0x1e35)
    XCTAssert(z80.fetchRam(location: 0x0c09) == 0x7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbb9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x56,0xb9])
    loadRam(location: 0x05ba, data:[0xc8])
    z80.af().ld(value: 0x5fb7)
    z80.bc().ld(value: 0xa81e)
    z80.de().ld(value: 0xe2d2)
    z80.hl().ld(value: 0x4117)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0564)
    z80.iy().ld(value: 0x48a1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5fb7)
    XCTAssert(z80.bc().value() == 0xa848)
    XCTAssert(z80.de().value() == 0xe2d2)
    XCTAssert(z80.hl().value() == 0x4117)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x564)
    XCTAssert(z80.iy().value() == 0x48a1)
    XCTAssert(z80.fetchRam(location: 0x05ba) == 0x48)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbba() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x86,0xba])
    loadRam(location: 0xf566, data:[0x30])
    z80.af().ld(value: 0x7f6a)
    z80.bc().ld(value: 0x47fe)
    z80.de().ld(value: 0xce45)
    z80.hl().ld(value: 0x75de)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf5e0)
    z80.iy().ld(value: 0x032c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7f6a)
    XCTAssert(z80.bc().value() == 0x47fe)
    XCTAssert(z80.de().value() == 0x3045)
    XCTAssert(z80.hl().value() == 0x75de)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf5e0)
    XCTAssert(z80.iy().value() == 0x032c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbbb() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xef,0xbb])
    loadRam(location: 0xbd20, data:[0xc9])
    z80.af().ld(value: 0xc7e3)
    z80.bc().ld(value: 0xe49e)
    z80.de().ld(value: 0x9ec5)
    z80.hl().ld(value: 0x07e7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbd31)
    z80.iy().ld(value: 0x9d5f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc7e3)
    XCTAssert(z80.bc().value() == 0xe49e)
    XCTAssert(z80.de().value() == 0x9e49)
    XCTAssert(z80.hl().value() == 0x07e7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbd31)
    XCTAssert(z80.iy().value() == 0x9d5f)
    XCTAssert(z80.fetchRam(location: 0xbd20) == 0x49)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbbc() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc0,0xbc])
    loadRam(location: 0x634e, data:[0x28])
    z80.af().ld(value: 0xb430)
    z80.bc().ld(value: 0x7ac7)
    z80.de().ld(value: 0xb45f)
    z80.hl().ld(value: 0xfbf7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x638e)
    z80.iy().ld(value: 0x3173)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb430)
    XCTAssert(z80.bc().value() == 0x7ac7)
    XCTAssert(z80.de().value() == 0xb45f)
    XCTAssert(z80.hl().value() == 0x28f7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x638e)
    XCTAssert(z80.iy().value() == 0x3173)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbbd() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb9,0xbd])
    loadRam(location: 0xe37d, data:[0xdd])
    z80.af().ld(value: 0x4e71)
    z80.bc().ld(value: 0x6ffa)
    z80.de().ld(value: 0xa3f9)
    z80.hl().ld(value: 0xa2e5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe3c4)
    z80.iy().ld(value: 0x02d4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4e71)
    XCTAssert(z80.bc().value() == 0x6ffa)
    XCTAssert(z80.de().value() == 0xa3f9)
    XCTAssert(z80.hl().value() == 0xa25d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe3c4)
    XCTAssert(z80.iy().value() == 0x02d4)
    XCTAssert(z80.fetchRam(location: 0xe37d) == 0x5d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbbe() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4d,0xbe])
    loadRam(location: 0x5920, data:[0xe8])
    z80.af().ld(value: 0x4af8)
    z80.bc().ld(value: 0x99a5)
    z80.de().ld(value: 0xd6fd)
    z80.hl().ld(value: 0x7a16)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x58d3)
    z80.iy().ld(value: 0xce54)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4af8)
    XCTAssert(z80.bc().value() == 0x99a5)
    XCTAssert(z80.de().value() == 0xd6fd)
    XCTAssert(z80.hl().value() == 0x7a16)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x58d3)
    XCTAssert(z80.iy().value() == 0xce54)
    XCTAssert(z80.fetchRam(location: 0x5920) == 0x68)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbbf() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x26,0xbf])
    loadRam(location: 0x175a, data:[0xe2])
    z80.af().ld(value: 0x6e31)
    z80.bc().ld(value: 0x0320)
    z80.de().ld(value: 0x134b)
    z80.hl().ld(value: 0x77c3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1734)
    z80.iy().ld(value: 0xbc2d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6231)
    XCTAssert(z80.bc().value() == 0x320)
    XCTAssert(z80.de().value() == 0x134b)
    XCTAssert(z80.hl().value() == 0x77c3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1734)
    XCTAssert(z80.iy().value() == 0xbc2d)
    XCTAssert(z80.fetchRam(location: 0x175a) == 0x62)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x00,0xc0])
    loadRam(location: 0x792e, data:[0x92])
    z80.af().ld(value: 0x75be)
    z80.bc().ld(value: 0x2b93)
    z80.de().ld(value: 0x093d)
    z80.hl().ld(value: 0x1128)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x792e)
    z80.iy().ld(value: 0x31f7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x75be)
    XCTAssert(z80.bc().value() == 0x9393)
    XCTAssert(z80.de().value() == 0x093d)
    XCTAssert(z80.hl().value() == 0x1128)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x792e)
    XCTAssert(z80.iy().value() == 0x31f7)
    XCTAssert(z80.fetchRam(location: 0x792e) == 0x93)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf7,0xc1])
    loadRam(location: 0xdcc3, data:[0x1c])
    z80.af().ld(value: 0x313f)
    z80.bc().ld(value: 0x8223)
    z80.de().ld(value: 0x5fcc)
    z80.hl().ld(value: 0x42c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdccc)
    z80.iy().ld(value: 0xd87b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x313f)
    XCTAssert(z80.bc().value() == 0x821d)
    XCTAssert(z80.de().value() == 0x5fcc)
    XCTAssert(z80.hl().value() == 0x42c8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdccc)
    XCTAssert(z80.iy().value() == 0xd87b)
    XCTAssert(z80.fetchRam(location: 0xdcc3) == 0x1d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x85,0xc2])
    loadRam(location: 0x0c7f, data:[0x30])
    z80.af().ld(value: 0xa7e3)
    z80.bc().ld(value: 0xbf55)
    z80.de().ld(value: 0xd27b)
    z80.hl().ld(value: 0x0a9d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0cfa)
    z80.iy().ld(value: 0xea4e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa7e3)
    XCTAssert(z80.bc().value() == 0xbf55)
    XCTAssert(z80.de().value() == 0x317b)
    XCTAssert(z80.hl().value() == 0x0a9d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0cfa)
    XCTAssert(z80.iy().value() == 0xea4e)
    XCTAssert(z80.fetchRam(location: 0x0c7f) == 0x31)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x32,0xc3])
    loadRam(location: 0x5458, data:[0xdd])
    z80.af().ld(value: 0xe076)
    z80.bc().ld(value: 0x2760)
    z80.de().ld(value: 0x1eec)
    z80.hl().ld(value: 0x9968)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5426)
    z80.iy().ld(value: 0xa1a0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe076)
    XCTAssert(z80.bc().value() == 0x2760)
    XCTAssert(z80.de().value() == 0x1edd)
    XCTAssert(z80.hl().value() == 0x9968)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5426)
    XCTAssert(z80.iy().value() == 0xa1a0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xae,0xc4])
    loadRam(location: 0x7a7b, data:[0x27])
    z80.af().ld(value: 0xa679)
    z80.bc().ld(value: 0xcc05)
    z80.de().ld(value: 0x3f4d)
    z80.hl().ld(value: 0xc899)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7acd)
    z80.iy().ld(value: 0x48d7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa679)
    XCTAssert(z80.bc().value() == 0xcc05)
    XCTAssert(z80.de().value() == 0x3f4d)
    XCTAssert(z80.hl().value() == 0x2799)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7acd)
    XCTAssert(z80.iy().value() == 0x48d7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9c,0xc5])
    loadRam(location: 0xba35, data:[0x20])
    z80.af().ld(value: 0xddfd)
    z80.bc().ld(value: 0x64d4)
    z80.de().ld(value: 0x2671)
    z80.hl().ld(value: 0x35e7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xba99)
    z80.iy().ld(value: 0xbd98)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xddfd)
    XCTAssert(z80.bc().value() == 0x64d4)
    XCTAssert(z80.de().value() == 0x2671)
    XCTAssert(z80.hl().value() == 0x3521)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xba99)
    XCTAssert(z80.iy().value() == 0xbd98)
    XCTAssert(z80.fetchRam(location: 0xba35) == 0x21)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc4,0xc6])
    loadRam(location: 0xaaf0, data:[0xb8])
    z80.af().ld(value: 0xb324)
    z80.bc().ld(value: 0xdc0c)
    z80.de().ld(value: 0x1e35)
    z80.hl().ld(value: 0x8cd5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xab2c)
    z80.iy().ld(value: 0xb6f3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb324)
    XCTAssert(z80.bc().value() == 0xdc0c)
    XCTAssert(z80.de().value() == 0x1e35)
    XCTAssert(z80.hl().value() == 0x8cd5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xab2c)
    XCTAssert(z80.iy().value() == 0xb6f3)
    XCTAssert(z80.fetchRam(location: 0xaaf0) == 0xb9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf8,0xc7])
    loadRam(location: 0x64c3, data:[0x94])
    z80.af().ld(value: 0xa254)
    z80.bc().ld(value: 0x9e56)
    z80.de().ld(value: 0x6828)
    z80.hl().ld(value: 0x3189)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x64cb)
    z80.iy().ld(value: 0xdfad)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9554)
    XCTAssert(z80.bc().value() == 0x9e56)
    XCTAssert(z80.de().value() == 0x6828)
    XCTAssert(z80.hl().value() == 0x3189)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x64cb)
    XCTAssert(z80.iy().value() == 0xdfad)
    XCTAssert(z80.fetchRam(location: 0x64c3) == 0x95)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x65,0xc8])
    loadRam(location: 0x6edf, data:[0x8f])
    z80.af().ld(value: 0x8aca)
    z80.bc().ld(value: 0x139e)
    z80.de().ld(value: 0xe652)
    z80.hl().ld(value: 0x248b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6e7a)
    z80.iy().ld(value: 0x189a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8aca)
    XCTAssert(z80.bc().value() == 0x8f9e)
    XCTAssert(z80.de().value() == 0xe652)
    XCTAssert(z80.hl().value() == 0x248b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6e7a)
    XCTAssert(z80.iy().value() == 0x189a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbc9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xfb,0xc9])
    loadRam(location: 0xb66b, data:[0xb9])
    z80.af().ld(value: 0xf15f)
    z80.bc().ld(value: 0x856e)
    z80.de().ld(value: 0xa21f)
    z80.hl().ld(value: 0x8a59)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb670)
    z80.iy().ld(value: 0x4f79)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf15f)
    XCTAssert(z80.bc().value() == 0x85bb)
    XCTAssert(z80.de().value() == 0xa21f)
    XCTAssert(z80.hl().value() == 0x8a59)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb670)
    XCTAssert(z80.iy().value() == 0x4f79)
    XCTAssert(z80.fetchRam(location: 0xb66b) == 0xbb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbca() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x8a,0xca])
    loadRam(location: 0xa811, data:[0x7e])
    z80.af().ld(value: 0xdfab)
    z80.bc().ld(value: 0xa031)
    z80.de().ld(value: 0x1d78)
    z80.hl().ld(value: 0xad3a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa887)
    z80.iy().ld(value: 0x7334)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdfab)
    XCTAssert(z80.bc().value() == 0xa031)
    XCTAssert(z80.de().value() == 0x7e78)
    XCTAssert(z80.hl().value() == 0xad3a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa887)
    XCTAssert(z80.iy().value() == 0x7334)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbcb() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa4,0xcb])
    loadRam(location: 0xa3eb, data:[0x73])
    z80.af().ld(value: 0xebd6)
    z80.bc().ld(value: 0x376e)
    z80.de().ld(value: 0xc346)
    z80.hl().ld(value: 0xb10c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa447)
    z80.iy().ld(value: 0x31d6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xebd6)
    XCTAssert(z80.bc().value() == 0x376e)
    XCTAssert(z80.de().value() == 0xc373)
    XCTAssert(z80.hl().value() == 0xb10c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa447)
    XCTAssert(z80.iy().value() == 0x31d6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbcc() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x65,0xcc])
    loadRam(location: 0x1fbf, data:[0x72])
    z80.af().ld(value: 0x0212)
    z80.bc().ld(value: 0xdc46)
    z80.de().ld(value: 0x8f41)
    z80.hl().ld(value: 0x854e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1f5a)
    z80.iy().ld(value: 0x07ca)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x212)
    XCTAssert(z80.bc().value() == 0xdc46)
    XCTAssert(z80.de().value() == 0x8f41)
    XCTAssert(z80.hl().value() == 0x724e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1f5a)
    XCTAssert(z80.iy().value() == 0x07ca)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbcd() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe9,0xcd])
    loadRam(location: 0x535f, data:[0x1c])
    z80.af().ld(value: 0x3344)
    z80.bc().ld(value: 0xd73c)
    z80.de().ld(value: 0xd6b8)
    z80.hl().ld(value: 0x929d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5376)
    z80.iy().ld(value: 0x6d3a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3344)
    XCTAssert(z80.bc().value() == 0xd73c)
    XCTAssert(z80.de().value() == 0xd6b8)
    XCTAssert(z80.hl().value() == 0x921e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5376)
    XCTAssert(z80.iy().value() == 0x6d3a)
    XCTAssert(z80.fetchRam(location: 0x535f) == 0x1e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbce() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x85,0xce])
    loadRam(location: 0x0298, data:[0x10])
    z80.af().ld(value: 0x9e47)
    z80.bc().ld(value: 0xfc93)
    z80.de().ld(value: 0x9ffc)
    z80.hl().ld(value: 0xaace)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0313)
    z80.iy().ld(value: 0x7f66)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9e47)
    XCTAssert(z80.bc().value() == 0xfc93)
    XCTAssert(z80.de().value() == 0x9ffc)
    XCTAssert(z80.hl().value() == 0xaace)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x313)
    XCTAssert(z80.iy().value() == 0x7f66)
    XCTAssert(z80.fetchRam(location: 0x0298) == 0x12)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbcf() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe2,0xcf])
    loadRam(location: 0xc5b2, data:[0xb5])
    z80.af().ld(value: 0x53e8)
    z80.bc().ld(value: 0xd379)
    z80.de().ld(value: 0x87d5)
    z80.hl().ld(value: 0x10b0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc5d0)
    z80.iy().ld(value: 0x4f7f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb7e8)
    XCTAssert(z80.bc().value() == 0xd379)
    XCTAssert(z80.de().value() == 0x87d5)
    XCTAssert(z80.hl().value() == 0x10b0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc5d0)
    XCTAssert(z80.iy().value() == 0x4f7f)
    XCTAssert(z80.fetchRam(location: 0xc5b2) == 0xb7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7f,0xd0])
    loadRam(location: 0xadc2, data:[0x51])
    z80.af().ld(value: 0x3278)
    z80.bc().ld(value: 0x6114)
    z80.de().ld(value: 0xd25d)
    z80.hl().ld(value: 0x1cf8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xad43)
    z80.iy().ld(value: 0x99fc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3278)
    XCTAssert(z80.bc().value() == 0x5514)
    XCTAssert(z80.de().value() == 0xd25d)
    XCTAssert(z80.hl().value() == 0x1cf8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xad43)
    XCTAssert(z80.iy().value() == 0x99fc)
    XCTAssert(z80.fetchRam(location: 0xadc2) == 0x55)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa6,0xd1])
    loadRam(location: 0x1058, data:[0x2c])
    z80.af().ld(value: 0xc0b8)
    z80.bc().ld(value: 0x371a)
    z80.de().ld(value: 0x6472)
    z80.hl().ld(value: 0xd92d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x10b2)
    z80.iy().ld(value: 0x3074)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc0b8)
    XCTAssert(z80.bc().value() == 0x372c)
    XCTAssert(z80.de().value() == 0x6472)
    XCTAssert(z80.hl().value() == 0xd92d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x10b2)
    XCTAssert(z80.iy().value() == 0x3074)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9c,0xd2])
    loadRam(location: 0xb93d, data:[0x9c])
    z80.af().ld(value: 0x5bb6)
    z80.bc().ld(value: 0xcaa8)
    z80.de().ld(value: 0xe0db)
    z80.hl().ld(value: 0xaf84)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb9a1)
    z80.iy().ld(value: 0x7b5f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5bb6)
    XCTAssert(z80.bc().value() == 0xcaa8)
    XCTAssert(z80.de().value() == 0x9cdb)
    XCTAssert(z80.hl().value() == 0xaf84)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb9a1)
    XCTAssert(z80.iy().value() == 0x7b5f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbd,0xd3])
    loadRam(location: 0xd9f3, data:[0x60])
    z80.af().ld(value: 0xdb6a)
    z80.bc().ld(value: 0x4fe2)
    z80.de().ld(value: 0x9e52)
    z80.hl().ld(value: 0xa034)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xda36)
    z80.iy().ld(value: 0x88a0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdb6a)
    XCTAssert(z80.bc().value() == 0x4fe2)
    XCTAssert(z80.de().value() == 0x9e64)
    XCTAssert(z80.hl().value() == 0xa034)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xda36)
    XCTAssert(z80.iy().value() == 0x88a0)
    XCTAssert(z80.fetchRam(location: 0xd9f3) == 0x64)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x58,0xd4])
    loadRam(location: 0xef7e, data:[0x5e])
    z80.af().ld(value: 0xcc1c)
    z80.bc().ld(value: 0xb884)
    z80.de().ld(value: 0x6ad2)
    z80.hl().ld(value: 0x1621)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xef26)
    z80.iy().ld(value: 0x41de)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcc1c)
    XCTAssert(z80.bc().value() == 0xb884)
    XCTAssert(z80.de().value() == 0x6ad2)
    XCTAssert(z80.hl().value() == 0x5e21)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xef26)
    XCTAssert(z80.iy().value() == 0x41de)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x41,0xd5])
    loadRam(location: 0x8dfd, data:[0x71])
    z80.af().ld(value: 0xc41d)
    z80.bc().ld(value: 0xc8b0)
    z80.de().ld(value: 0xcacb)
    z80.hl().ld(value: 0x7687)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8dbc)
    z80.iy().ld(value: 0xcc25)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc41d)
    XCTAssert(z80.bc().value() == 0xc8b0)
    XCTAssert(z80.de().value() == 0xcacb)
    XCTAssert(z80.hl().value() == 0x7675)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8dbc)
    XCTAssert(z80.iy().value() == 0xcc25)
    XCTAssert(z80.fetchRam(location: 0x8dfd) == 0x75)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xea,0xd6])
    loadRam(location: 0x5eed, data:[0x73])
    z80.af().ld(value: 0x09eb)
    z80.bc().ld(value: 0x769d)
    z80.de().ld(value: 0x7e07)
    z80.hl().ld(value: 0x51f9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5f03)
    z80.iy().ld(value: 0x6280)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x09eb)
    XCTAssert(z80.bc().value() == 0x769d)
    XCTAssert(z80.de().value() == 0x7e07)
    XCTAssert(z80.hl().value() == 0x51f9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5f03)
    XCTAssert(z80.iy().value() == 0x6280)
    XCTAssert(z80.fetchRam(location: 0x5eed) == 0x77)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x80,0xd7])
    loadRam(location: 0xe6a5, data:[0x60])
    z80.af().ld(value: 0x241b)
    z80.bc().ld(value: 0xee10)
    z80.de().ld(value: 0xc152)
    z80.hl().ld(value: 0x2f6d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe725)
    z80.iy().ld(value: 0xc0d7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x641b)
    XCTAssert(z80.bc().value() == 0xee10)
    XCTAssert(z80.de().value() == 0xc152)
    XCTAssert(z80.hl().value() == 0x2f6d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe725)
    XCTAssert(z80.iy().value() == 0xc0d7)
    XCTAssert(z80.fetchRam(location: 0xe6a5) == 0x64)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4c,0xd8])
    loadRam(location: 0xb35b, data:[0x96])
    z80.af().ld(value: 0xe3dc)
    z80.bc().ld(value: 0x1981)
    z80.de().ld(value: 0xc97b)
    z80.hl().ld(value: 0xcb42)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb30f)
    z80.iy().ld(value: 0xb32a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe3dc)
    XCTAssert(z80.bc().value() == 0x9e81)
    XCTAssert(z80.de().value() == 0xc97b)
    XCTAssert(z80.hl().value() == 0xcb42)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb30f)
    XCTAssert(z80.iy().value() == 0xb32a)
    XCTAssert(z80.fetchRam(location: 0xb35b) == 0x9e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbd9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x52,0xd9])
    loadRam(location: 0x2694, data:[0xef])
    z80.af().ld(value: 0xe9a0)
    z80.bc().ld(value: 0xa7c7)
    z80.de().ld(value: 0xa476)
    z80.hl().ld(value: 0x6057)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2642)
    z80.iy().ld(value: 0x58a0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe9a0)
    XCTAssert(z80.bc().value() == 0xa7ef)
    XCTAssert(z80.de().value() == 0xa476)
    XCTAssert(z80.hl().value() == 0x6057)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2642)
    XCTAssert(z80.iy().value() == 0x58a0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbda() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xea,0xda])
    loadRam(location: 0x2d60, data:[0x82])
    z80.af().ld(value: 0x6787)
    z80.bc().ld(value: 0x26a7)
    z80.de().ld(value: 0xa194)
    z80.hl().ld(value: 0x11d3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2d76)
    z80.iy().ld(value: 0x7f80)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6787)
    XCTAssert(z80.bc().value() == 0x26a7)
    XCTAssert(z80.de().value() == 0x8a94)
    XCTAssert(z80.hl().value() == 0x11d3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2d76)
    XCTAssert(z80.iy().value() == 0x7f80)
    XCTAssert(z80.fetchRam(location: 0x2d60) == 0x8a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbdb() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4d,0xdb])
    loadRam(location: 0x2bca, data:[0x10])
    z80.af().ld(value: 0xf986)
    z80.bc().ld(value: 0x6a4b)
    z80.de().ld(value: 0x6588)
    z80.hl().ld(value: 0xd2c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2b7d)
    z80.iy().ld(value: 0x5847)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf986)
    XCTAssert(z80.bc().value() == 0x6a4b)
    XCTAssert(z80.de().value() == 0x6518)
    XCTAssert(z80.hl().value() == 0xd2c8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2b7d)
    XCTAssert(z80.iy().value() == 0x5847)
    XCTAssert(z80.fetchRam(location: 0x2bca) == 0x18)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbdc() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd3,0xdc])
    loadRam(location: 0x7ea7, data:[0x45])
    z80.af().ld(value: 0x4c9e)
    z80.bc().ld(value: 0xd94d)
    z80.de().ld(value: 0x9760)
    z80.hl().ld(value: 0xb707)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7ed4)
    z80.iy().ld(value: 0x5cc5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4c9e)
    XCTAssert(z80.bc().value() == 0xd94d)
    XCTAssert(z80.de().value() == 0x9760)
    XCTAssert(z80.hl().value() == 0x4d07)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7ed4)
    XCTAssert(z80.iy().value() == 0x5cc5)
    XCTAssert(z80.fetchRam(location: 0x7ea7) == 0x4d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbdd() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x6f,0xdd])
    loadRam(location: 0x5930, data:[0x20])
    z80.af().ld(value: 0x4b3b)
    z80.bc().ld(value: 0xd351)
    z80.de().ld(value: 0x9be9)
    z80.hl().ld(value: 0x2310)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x58c1)
    z80.iy().ld(value: 0xe430)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4b3b)
    XCTAssert(z80.bc().value() == 0xd351)
    XCTAssert(z80.de().value() == 0x9be9)
    XCTAssert(z80.hl().value() == 0x2328)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x58c1)
    XCTAssert(z80.iy().value() == 0xe430)
    XCTAssert(z80.fetchRam(location: 0x5930) == 0x28)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbde() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x14,0xde])
    loadRam(location: 0x89e6, data:[0x5e])
    z80.af().ld(value: 0x3b62)
    z80.bc().ld(value: 0xca1e)
    z80.de().ld(value: 0xa41a)
    z80.hl().ld(value: 0x227a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x89d2)
    z80.iy().ld(value: 0x7011)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3b62)
    XCTAssert(z80.bc().value() == 0xca1e)
    XCTAssert(z80.de().value() == 0xa41a)
    XCTAssert(z80.hl().value() == 0x227a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x89d2)
    XCTAssert(z80.iy().value() == 0x7011)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbdf() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xef,0xdf])
    loadRam(location: 0xd216, data:[0x72])
    z80.af().ld(value: 0x4c8a)
    z80.bc().ld(value: 0x5b42)
    z80.de().ld(value: 0x50dd)
    z80.hl().ld(value: 0x4be0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd227)
    z80.iy().ld(value: 0x4913)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7a8a)
    XCTAssert(z80.bc().value() == 0x5b42)
    XCTAssert(z80.de().value() == 0x50dd)
    XCTAssert(z80.hl().value() == 0x4be0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd227)
    XCTAssert(z80.iy().value() == 0x4913)
    XCTAssert(z80.fetchRam(location: 0xd216) == 0x7a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x62,0xe0])
    loadRam(location: 0x1cad, data:[0x46])
    z80.af().ld(value: 0x440a)
    z80.bc().ld(value: 0x713d)
    z80.de().ld(value: 0xacfc)
    z80.hl().ld(value: 0xf762)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1c4b)
    z80.iy().ld(value: 0xb6ba)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x440a)
    XCTAssert(z80.bc().value() == 0x563d)
    XCTAssert(z80.de().value() == 0xacfc)
    XCTAssert(z80.hl().value() == 0xf762)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1c4b)
    XCTAssert(z80.iy().value() == 0xb6ba)
    XCTAssert(z80.fetchRam(location: 0x1cad) == 0x56)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2e,0xe1])
    loadRam(location: 0xb95f, data:[0x75])
    z80.af().ld(value: 0xc219)
    z80.bc().ld(value: 0xaa6b)
    z80.de().ld(value: 0xdfbf)
    z80.hl().ld(value: 0x6f10)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb931)
    z80.iy().ld(value: 0xd3d6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc219)
    XCTAssert(z80.bc().value() == 0xaa75)
    XCTAssert(z80.de().value() == 0xdfbf)
    XCTAssert(z80.hl().value() == 0x6f10)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb931)
    XCTAssert(z80.iy().value() == 0xd3d6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x85,0xe2])
    loadRam(location: 0xeed5, data:[0x72])
    z80.af().ld(value: 0x66d7)
    z80.bc().ld(value: 0xabd0)
    z80.de().ld(value: 0xcb48)
    z80.hl().ld(value: 0x8054)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xef50)
    z80.iy().ld(value: 0x9997)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x66d7)
    XCTAssert(z80.bc().value() == 0xabd0)
    XCTAssert(z80.de().value() == 0x7248)
    XCTAssert(z80.hl().value() == 0x8054)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xef50)
    XCTAssert(z80.iy().value() == 0x9997)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf4,0xe3])
    loadRam(location: 0x7eba, data:[0x34])
    z80.af().ld(value: 0x7013)
    z80.bc().ld(value: 0xe7ed)
    z80.de().ld(value: 0x7e1c)
    z80.hl().ld(value: 0x57fb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7ec6)
    z80.iy().ld(value: 0x75eb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7013)
    XCTAssert(z80.bc().value() == 0xe7ed)
    XCTAssert(z80.de().value() == 0x7e34)
    XCTAssert(z80.hl().value() == 0x57fb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7ec6)
    XCTAssert(z80.iy().value() == 0x75eb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbf,0xe4])
    loadRam(location: 0x9586, data:[0x34])
    z80.af().ld(value: 0x1108)
    z80.bc().ld(value: 0x6e70)
    z80.de().ld(value: 0xf0af)
    z80.hl().ld(value: 0x2f0c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x95c7)
    z80.iy().ld(value: 0x6501)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1108)
    XCTAssert(z80.bc().value() == 0x6e70)
    XCTAssert(z80.de().value() == 0xf0af)
    XCTAssert(z80.hl().value() == 0x340c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x95c7)
    XCTAssert(z80.iy().value() == 0x6501)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf2,0xe5])
    loadRam(location: 0x6aa2, data:[0x2e])
    z80.af().ld(value: 0x57cc)
    z80.bc().ld(value: 0x5511)
    z80.de().ld(value: 0x2696)
    z80.hl().ld(value: 0xb83d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6ab0)
    z80.iy().ld(value: 0x0e90)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x57cc)
    XCTAssert(z80.bc().value() == 0x5511)
    XCTAssert(z80.de().value() == 0x2696)
    XCTAssert(z80.hl().value() == 0xb83e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6ab0)
    XCTAssert(z80.iy().value() == 0x0e90)
    XCTAssert(z80.fetchRam(location: 0x6aa2) == 0x3e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x25,0xe6])
    loadRam(location: 0xd88b, data:[0x4c])
    z80.af().ld(value: 0x207a)
    z80.bc().ld(value: 0xa441)
    z80.de().ld(value: 0x1e03)
    z80.hl().ld(value: 0xac60)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd866)
    z80.iy().ld(value: 0x5fdc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x207a)
    XCTAssert(z80.bc().value() == 0xa441)
    XCTAssert(z80.de().value() == 0x1e03)
    XCTAssert(z80.hl().value() == 0xac60)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd866)
    XCTAssert(z80.iy().value() == 0x5fdc)
    XCTAssert(z80.fetchRam(location: 0xd88b) == 0x5c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf3,0xe7])
    loadRam(location: 0x2a0e, data:[0xeb])
    z80.af().ld(value: 0xc3c5)
    z80.bc().ld(value: 0x7fa9)
    z80.de().ld(value: 0x4e07)
    z80.hl().ld(value: 0xe02d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2a1b)
    z80.iy().ld(value: 0x55b7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfbc5)
    XCTAssert(z80.bc().value() == 0x7fa9)
    XCTAssert(z80.de().value() == 0x4e07)
    XCTAssert(z80.hl().value() == 0xe02d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2a1b)
    XCTAssert(z80.iy().value() == 0x55b7)
    XCTAssert(z80.fetchRam(location: 0x2a0e) == 0xfb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf2,0xe8])
    loadRam(location: 0x4bcc, data:[0xba])
    z80.af().ld(value: 0x6d1c)
    z80.bc().ld(value: 0xa0c4)
    z80.de().ld(value: 0x93f0)
    z80.hl().ld(value: 0xa0b4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4bda)
    z80.iy().ld(value: 0x7761)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6d1c)
    XCTAssert(z80.bc().value() == 0xbac4)
    XCTAssert(z80.de().value() == 0x93f0)
    XCTAssert(z80.hl().value() == 0xa0b4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x4bda)
    XCTAssert(z80.iy().value() == 0x7761)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbe9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x8a,0xe9])
    loadRam(location: 0x7267, data:[0x0a])
    z80.af().ld(value: 0xebe5)
    z80.bc().ld(value: 0x0c2c)
    z80.de().ld(value: 0x1a2a)
    z80.hl().ld(value: 0x2720)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x72dd)
    z80.iy().ld(value: 0xa354)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xebe5)
    XCTAssert(z80.bc().value() == 0x0c2a)
    XCTAssert(z80.de().value() == 0x1a2a)
    XCTAssert(z80.hl().value() == 0x2720)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x72dd)
    XCTAssert(z80.iy().value() == 0xa354)
    XCTAssert(z80.fetchRam(location: 0x7267) == 0x2a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbea() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x04,0xea])
    loadRam(location: 0xa7ed, data:[0x5f])
    z80.af().ld(value: 0x42d2)
    z80.bc().ld(value: 0xda7a)
    z80.de().ld(value: 0x757f)
    z80.hl().ld(value: 0x6da6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa7e9)
    z80.iy().ld(value: 0xb933)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x42d2)
    XCTAssert(z80.bc().value() == 0xda7a)
    XCTAssert(z80.de().value() == 0x7f7f)
    XCTAssert(z80.hl().value() == 0x6da6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa7e9)
    XCTAssert(z80.iy().value() == 0xb933)
    XCTAssert(z80.fetchRam(location: 0xa7ed) == 0x7f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbeb() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x24,0xeb])
    loadRam(location: 0x1703, data:[0xf3])
    z80.af().ld(value: 0xe945)
    z80.bc().ld(value: 0x10aa)
    z80.de().ld(value: 0xf5f8)
    z80.hl().ld(value: 0x7647)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x16df)
    z80.iy().ld(value: 0x93fb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe945)
    XCTAssert(z80.bc().value() == 0x10aa)
    XCTAssert(z80.de().value() == 0xf5f3)
    XCTAssert(z80.hl().value() == 0x7647)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x16df)
    XCTAssert(z80.iy().value() == 0x93fb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbec() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x60,0xec])
    loadRam(location: 0xdde8, data:[0x00])
    z80.af().ld(value: 0x7180)
    z80.bc().ld(value: 0xbc85)
    z80.de().ld(value: 0x7dd3)
    z80.hl().ld(value: 0xf467)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdd88)
    z80.iy().ld(value: 0x6a41)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7180)
    XCTAssert(z80.bc().value() == 0xbc85)
    XCTAssert(z80.de().value() == 0x7dd3)
    XCTAssert(z80.hl().value() == 0x2067)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdd88)
    XCTAssert(z80.iy().value() == 0x6a41)
    XCTAssert(z80.fetchRam(location: 0xdde8) == 0x20)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbed() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbe,0xed])
    loadRam(location: 0xf730, data:[0x6b])
    z80.af().ld(value: 0x6b2f)
    z80.bc().ld(value: 0x9762)
    z80.de().ld(value: 0x1f0a)
    z80.hl().ld(value: 0xdb61)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf772)
    z80.iy().ld(value: 0x33e3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6b2f)
    XCTAssert(z80.bc().value() == 0x9762)
    XCTAssert(z80.de().value() == 0x1f0a)
    XCTAssert(z80.hl().value() == 0xdb6b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf772)
    XCTAssert(z80.iy().value() == 0x33e3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbee() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xde,0xee])
    loadRam(location: 0x6c06, data:[0xbd])
    z80.af().ld(value: 0x79ea)
    z80.bc().ld(value: 0xdc8a)
    z80.de().ld(value: 0x7887)
    z80.hl().ld(value: 0x3baa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6c28)
    z80.iy().ld(value: 0xabbc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x79ea)
    XCTAssert(z80.bc().value() == 0xdc8a)
    XCTAssert(z80.de().value() == 0x7887)
    XCTAssert(z80.hl().value() == 0x3baa)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6c28)
    XCTAssert(z80.iy().value() == 0xabbc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbef() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x30,0xef])
    loadRam(location: 0xcc98, data:[0x11])
    z80.af().ld(value: 0x46c3)
    z80.bc().ld(value: 0x2fc2)
    z80.de().ld(value: 0x8690)
    z80.hl().ld(value: 0xa836)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcc68)
    z80.iy().ld(value: 0xa8ce)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x31c3)
    XCTAssert(z80.bc().value() == 0x2fc2)
    XCTAssert(z80.de().value() == 0x8690)
    XCTAssert(z80.hl().value() == 0xa836)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xcc68)
    XCTAssert(z80.iy().value() == 0xa8ce)
    XCTAssert(z80.fetchRam(location: 0xcc98) == 0x31)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf0() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2f,0xf0])
    loadRam(location: 0x13ef, data:[0xad])
    z80.af().ld(value: 0xb330)
    z80.bc().ld(value: 0x4469)
    z80.de().ld(value: 0x362b)
    z80.hl().ld(value: 0xb515)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x13c0)
    z80.iy().ld(value: 0x6479)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb330)
    XCTAssert(z80.bc().value() == 0xed69)
    XCTAssert(z80.de().value() == 0x362b)
    XCTAssert(z80.hl().value() == 0xb515)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x13c0)
    XCTAssert(z80.iy().value() == 0x6479)
    XCTAssert(z80.fetchRam(location: 0x13ef) == 0xed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf1() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x40,0xf1])
    loadRam(location: 0x47fa, data:[0x78])
    z80.af().ld(value: 0x94c0)
    z80.bc().ld(value: 0x9ab0)
    z80.de().ld(value: 0xa0fd)
    z80.hl().ld(value: 0x7c1d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x47ba)
    z80.iy().ld(value: 0x8c81)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x94c0)
    XCTAssert(z80.bc().value() == 0x9a78)
    XCTAssert(z80.de().value() == 0xa0fd)
    XCTAssert(z80.hl().value() == 0x7c1d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x47ba)
    XCTAssert(z80.iy().value() == 0x8c81)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf2() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0f,0xf2])
    loadRam(location: 0xc956, data:[0x21])
    z80.af().ld(value: 0x5302)
    z80.bc().ld(value: 0x9204)
    z80.de().ld(value: 0x20ec)
    z80.hl().ld(value: 0xd640)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc947)
    z80.iy().ld(value: 0x4ef1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5302)
    XCTAssert(z80.bc().value() == 0x9204)
    XCTAssert(z80.de().value() == 0x61ec)
    XCTAssert(z80.hl().value() == 0xd640)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc947)
    XCTAssert(z80.iy().value() == 0x4ef1)
    XCTAssert(z80.fetchRam(location: 0xc956) == 0x61)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf3() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x06,0xf3])
    loadRam(location: 0x1d9c, data:[0xe4])
    z80.af().ld(value: 0x9950)
    z80.bc().ld(value: 0xa3d2)
    z80.de().ld(value: 0x5058)
    z80.hl().ld(value: 0x5ccc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1d96)
    z80.iy().ld(value: 0x7c75)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9950)
    XCTAssert(z80.bc().value() == 0xa3d2)
    XCTAssert(z80.de().value() == 0x50e4)
    XCTAssert(z80.hl().value() == 0x5ccc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1d96)
    XCTAssert(z80.iy().value() == 0x7c75)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf4() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3b,0xf4])
    loadRam(location: 0x173d, data:[0xe1])
    z80.af().ld(value: 0x3712)
    z80.bc().ld(value: 0x1f99)
    z80.de().ld(value: 0x4863)
    z80.hl().ld(value: 0x47de)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1702)
    z80.iy().ld(value: 0xc042)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3712)
    XCTAssert(z80.bc().value() == 0x1f99)
    XCTAssert(z80.de().value() == 0x4863)
    XCTAssert(z80.hl().value() == 0xe1de)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1702)
    XCTAssert(z80.iy().value() == 0xc042)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf5() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x64,0xf5])
    loadRam(location: 0xeba3, data:[0xc5])
    z80.af().ld(value: 0xd83f)
    z80.bc().ld(value: 0x1ec9)
    z80.de().ld(value: 0xd0da)
    z80.hl().ld(value: 0x4173)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeb3f)
    z80.iy().ld(value: 0x1ead)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd83f)
    XCTAssert(z80.bc().value() == 0x1ec9)
    XCTAssert(z80.de().value() == 0xd0da)
    XCTAssert(z80.hl().value() == 0x41c5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeb3f)
    XCTAssert(z80.iy().value() == 0x1ead)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf6() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7b,0xf6])
    loadRam(location: 0xdcd5, data:[0xa2])
    z80.af().ld(value: 0x4d6c)
    z80.bc().ld(value: 0x93ac)
    z80.de().ld(value: 0x810d)
    z80.hl().ld(value: 0xcfe1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdc5a)
    z80.iy().ld(value: 0xc33c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4d6c)
    XCTAssert(z80.bc().value() == 0x93ac)
    XCTAssert(z80.de().value() == 0x810d)
    XCTAssert(z80.hl().value() == 0xcfe1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdc5a)
    XCTAssert(z80.iy().value() == 0xc33c)
    XCTAssert(z80.fetchRam(location: 0xdcd5) == 0xe2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf7() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc3,0xf7])
    loadRam(location: 0x2fe1, data:[0xa9])
    z80.af().ld(value: 0xfe40)
    z80.bc().ld(value: 0x7887)
    z80.de().ld(value: 0xb9de)
    z80.hl().ld(value: 0xc013)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x301e)
    z80.iy().ld(value: 0x9710)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe940)
    XCTAssert(z80.bc().value() == 0x7887)
    XCTAssert(z80.de().value() == 0xb9de)
    XCTAssert(z80.hl().value() == 0xc013)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x301e)
    XCTAssert(z80.iy().value() == 0x9710)
    XCTAssert(z80.fetchRam(location: 0x2fe1) == 0xe9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf8() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x59,0xf8])
    loadRam(location: 0x42d8, data:[0x28])
    z80.af().ld(value: 0x8278)
    z80.bc().ld(value: 0x21a4)
    z80.de().ld(value: 0x1e5c)
    z80.hl().ld(value: 0x4952)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x427f)
    z80.iy().ld(value: 0x41e1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8278)
    XCTAssert(z80.bc().value() == 0xa8a4)
    XCTAssert(z80.de().value() == 0x1e5c)
    XCTAssert(z80.hl().value() == 0x4952)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x427f)
    XCTAssert(z80.iy().value() == 0x41e1)
    XCTAssert(z80.fetchRam(location: 0x42d8) == 0xa8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbf9() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x55,0xf9])
    loadRam(location: 0xd8e4, data:[0x14])
    z80.af().ld(value: 0xb2df)
    z80.bc().ld(value: 0xe9b8)
    z80.de().ld(value: 0x56c3)
    z80.hl().ld(value: 0x16ff)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd88f)
    z80.iy().ld(value: 0x0bab)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb2df)
    XCTAssert(z80.bc().value() == 0xe994)
    XCTAssert(z80.de().value() == 0x56c3)
    XCTAssert(z80.hl().value() == 0x16ff)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd88f)
    XCTAssert(z80.iy().value() == 0x0bab)
    XCTAssert(z80.fetchRam(location: 0xd8e4) == 0x94)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbfa() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x74,0xfa])
    loadRam(location: 0x9494, data:[0xfe])
    z80.af().ld(value: 0x01f1)
    z80.bc().ld(value: 0xbc0d)
    z80.de().ld(value: 0xd476)
    z80.hl().ld(value: 0x1510)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9420)
    z80.iy().ld(value: 0x93a3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x01f1)
    XCTAssert(z80.bc().value() == 0xbc0d)
    XCTAssert(z80.de().value() == 0xfe76)
    XCTAssert(z80.hl().value() == 0x1510)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9420)
    XCTAssert(z80.iy().value() == 0x93a3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbfb() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xaf,0xfb])
    loadRam(location: 0x3402, data:[0x02])
    z80.af().ld(value: 0x709b)
    z80.bc().ld(value: 0x14eb)
    z80.de().ld(value: 0xec1c)
    z80.hl().ld(value: 0xb844)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3453)
    z80.iy().ld(value: 0xf2b0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x709b)
    XCTAssert(z80.bc().value() == 0x14eb)
    XCTAssert(z80.de().value() == 0xec82)
    XCTAssert(z80.hl().value() == 0xb844)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3453)
    XCTAssert(z80.iy().value() == 0xf2b0)
    XCTAssert(z80.fetchRam(location: 0x3402) == 0x82)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbfc() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa1,0xfc])
    loadRam(location: 0x60da, data:[0x10])
    z80.af().ld(value: 0x6c89)
    z80.bc().ld(value: 0xa96e)
    z80.de().ld(value: 0xd27b)
    z80.hl().ld(value: 0xd6a7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6139)
    z80.iy().ld(value: 0xb4c1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6c89)
    XCTAssert(z80.bc().value() == 0xa96e)
    XCTAssert(z80.de().value() == 0xd27b)
    XCTAssert(z80.hl().value() == 0x90a7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6139)
    XCTAssert(z80.iy().value() == 0xb4c1)
    XCTAssert(z80.fetchRam(location: 0x60da) == 0x90)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbfd() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x28,0xfd])
    loadRam(location: 0x3ef8, data:[0xc2])
    z80.af().ld(value: 0xfb3f)
    z80.bc().ld(value: 0x83f6)
    z80.de().ld(value: 0x2094)
    z80.hl().ld(value: 0x3349)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3ed0)
    z80.iy().ld(value: 0x6f0e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfb3f)
    XCTAssert(z80.bc().value() == 0x83f6)
    XCTAssert(z80.de().value() == 0x2094)
    XCTAssert(z80.hl().value() == 0x33c2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3ed0)
    XCTAssert(z80.iy().value() == 0x6f0e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbfe() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xec,0xfe])
    loadRam(location: 0x41a1, data:[0xa1])
    z80.af().ld(value: 0xfc42)
    z80.bc().ld(value: 0x50b7)
    z80.de().ld(value: 0xe98d)
    z80.hl().ld(value: 0x3e45)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x41b5)
    z80.iy().ld(value: 0x3410)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfc42)
    XCTAssert(z80.bc().value() == 0x50b7)
    XCTAssert(z80.de().value() == 0xe98d)
    XCTAssert(z80.hl().value() == 0x3e45)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x41b5)
    XCTAssert(z80.iy().value() == 0x3410)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcbff() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd3,0xff])
    loadRam(location: 0x0628, data:[0x2b])
    z80.af().ld(value: 0xe666)
    z80.bc().ld(value: 0x94d2)
    z80.de().ld(value: 0xac90)
    z80.hl().ld(value: 0x8f45)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0655)
    z80.iy().ld(value: 0xba29)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xab66)
    XCTAssert(z80.bc().value() == 0x94d2)
    XCTAssert(z80.de().value() == 0xac90)
    XCTAssert(z80.hl().value() == 0x8f45)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x655)
    XCTAssert(z80.iy().value() == 0xba29)
    XCTAssert(z80.fetchRam(location: 0x0628) == 0xab)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }
}
