//
//  allTestsP_FDCB80toff.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_FDCB80toff: BaseTest {

   
    func testfdcb80() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8b,0x80])
    loadRam(location: 0x9198, data:[0xa9])
    z80.af().ld(value: 0xe196)
    z80.bc().ld(value: 0x72ea)
    z80.de().ld(value: 0x507e)
    z80.hl().ld(value: 0x6457)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xab75)
    z80.iy().ld(value: 0x920d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe196)
    XCTAssert(z80.bc().value() == 0xa8ea)
    XCTAssert(z80.de().value() == 0x507e)
    XCTAssert(z80.hl().value() == 0x6457)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xab75)
    XCTAssert(z80.iy().value() == 0x920d)
    XCTAssert(z80.fetchRam(location: 0x9198) == 0xa8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb81() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x55,0x81])
    loadRam(location: 0x82fa, data:[0xfa])
    z80.af().ld(value: 0x3d3d)
    z80.bc().ld(value: 0xb255)
    z80.de().ld(value: 0x8759)
    z80.hl().ld(value: 0x0cb0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe078)
    z80.iy().ld(value: 0x82a5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3d3d)
    XCTAssert(z80.bc().value() == 0xb2fa)
    XCTAssert(z80.de().value() == 0x8759)
    XCTAssert(z80.hl().value() == 0x0cb0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe078)
    XCTAssert(z80.iy().value() == 0x82a5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb82() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9c,0x82])
    loadRam(location: 0x5d74, data:[0x9d])
    z80.af().ld(value: 0x4e10)
    z80.bc().ld(value: 0x5d8d)
    z80.de().ld(value: 0x27a0)
    z80.hl().ld(value: 0xffff)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xee0a)
    z80.iy().ld(value: 0x5dd8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4e10)
    XCTAssert(z80.bc().value() == 0x5d8d)
    XCTAssert(z80.de().value() == 0x9ca0)
    XCTAssert(z80.hl().value() == 0xffff)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xee0a)
    XCTAssert(z80.iy().value() == 0x5dd8)
    XCTAssert(z80.fetchRam(location: 0x5d74) == 0x9c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb83() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x28,0x83])
    loadRam(location: 0x3772, data:[0xd5])
    z80.af().ld(value: 0x3c7f)
    z80.bc().ld(value: 0xfd81)
    z80.de().ld(value: 0x47fb)
    z80.hl().ld(value: 0x9f12)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcbf9)
    z80.iy().ld(value: 0x374a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3c7f)
    XCTAssert(z80.bc().value() == 0xfd81)
    XCTAssert(z80.de().value() == 0x47d4)
    XCTAssert(z80.hl().value() == 0x9f12)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcbf9)
    XCTAssert(z80.iy().value() == 0x374a)
    XCTAssert(z80.fetchRam(location: 0x3772) == 0xd4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb84() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xaa,0x84])
    loadRam(location: 0xf16d, data:[0xea])
    z80.af().ld(value: 0x6872)
    z80.bc().ld(value: 0x81b1)
    z80.de().ld(value: 0x1e7a)
    z80.hl().ld(value: 0xe37e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9b4c)
    z80.iy().ld(value: 0xf1c3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6872)
    XCTAssert(z80.bc().value() == 0x81b1)
    XCTAssert(z80.de().value() == 0x1e7a)
    XCTAssert(z80.hl().value() == 0xea7e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9b4c)
    XCTAssert(z80.iy().value() == 0xf1c3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb85() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x6c,0x85])
    loadRam(location: 0x049f, data:[0xe0])
    z80.af().ld(value: 0x25b3)
    z80.bc().ld(value: 0x5694)
    z80.de().ld(value: 0x57cd)
    z80.hl().ld(value: 0xf34d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8ed2)
    z80.iy().ld(value: 0x0433)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x25b3)
    XCTAssert(z80.bc().value() == 0x5694)
    XCTAssert(z80.de().value() == 0x57cd)
    XCTAssert(z80.hl().value() == 0xf3e0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8ed2)
    XCTAssert(z80.iy().value() == 0x0433)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb86() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7e,0x86])
    loadRam(location: 0x2ace, data:[0x36])
    z80.af().ld(value: 0x152b)
    z80.bc().ld(value: 0x8ce1)
    z80.de().ld(value: 0x818d)
    z80.hl().ld(value: 0x40f2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9b7a)
    z80.iy().ld(value: 0x2a50)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x152b)
    XCTAssert(z80.bc().value() == 0x8ce1)
    XCTAssert(z80.de().value() == 0x818d)
    XCTAssert(z80.hl().value() == 0x40f2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9b7a)
    XCTAssert(z80.iy().value() == 0x2a50)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb87() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x59,0x87])
    loadRam(location: 0x24c3, data:[0x65])
    z80.af().ld(value: 0xfe1d)
    z80.bc().ld(value: 0x5353)
    z80.de().ld(value: 0x618d)
    z80.hl().ld(value: 0x3266)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1a53)
    z80.iy().ld(value: 0x246a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x641d)
    XCTAssert(z80.bc().value() == 0x5353)
    XCTAssert(z80.de().value() == 0x618d)
    XCTAssert(z80.hl().value() == 0x3266)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1a53)
    XCTAssert(z80.iy().value() == 0x246a)
    XCTAssert(z80.fetchRam(location: 0x24c3) == 0x64)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb88() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd4,0x88])
    loadRam(location: 0xc5e1, data:[0xd6])
    z80.af().ld(value: 0x7d14)
    z80.bc().ld(value: 0xa0ec)
    z80.de().ld(value: 0x1e47)
    z80.hl().ld(value: 0x76e1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3871)
    z80.iy().ld(value: 0xc60d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7d14)
    XCTAssert(z80.bc().value() == 0xd4ec)
    XCTAssert(z80.de().value() == 0x1e47)
    XCTAssert(z80.hl().value() == 0x76e1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3871)
    XCTAssert(z80.iy().value() == 0xc60d)
    XCTAssert(z80.fetchRam(location: 0xc5e1) == 0xd4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb89() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc3,0x89])
    loadRam(location: 0x09c4, data:[0xb0])
    z80.af().ld(value: 0x86c3)
    z80.bc().ld(value: 0x50a6)
    z80.de().ld(value: 0x8592)
    z80.hl().ld(value: 0xd6ca)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x947b)
    z80.iy().ld(value: 0x0a01)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x86c3)
    XCTAssert(z80.bc().value() == 0x50b0)
    XCTAssert(z80.de().value() == 0x8592)
    XCTAssert(z80.hl().value() == 0xd6ca)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x947b)
    XCTAssert(z80.iy().value() == 0x0a01)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf9,0x8a])
    loadRam(location: 0xd4cb, data:[0xd8])
    z80.af().ld(value: 0x599c)
    z80.bc().ld(value: 0x961a)
    z80.de().ld(value: 0x55f9)
    z80.hl().ld(value: 0x8470)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd2a5)
    z80.iy().ld(value: 0xd4d2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x599c)
    XCTAssert(z80.bc().value() == 0x961a)
    XCTAssert(z80.de().value() == 0xd8f9)
    XCTAssert(z80.hl().value() == 0x8470)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd2a5)
    XCTAssert(z80.iy().value() == 0xd4d2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xed,0x8b])
    loadRam(location: 0xc70b, data:[0xdc])
    z80.af().ld(value: 0x2715)
    z80.bc().ld(value: 0xa209)
    z80.de().ld(value: 0xab47)
    z80.hl().ld(value: 0x3eac)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf352)
    z80.iy().ld(value: 0xc71e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2715)
    XCTAssert(z80.bc().value() == 0xa209)
    XCTAssert(z80.de().value() == 0xabdc)
    XCTAssert(z80.hl().value() == 0x3eac)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf352)
    XCTAssert(z80.iy().value() == 0xc71e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x97,0x8c])
    loadRam(location: 0xa199, data:[0x67])
    z80.af().ld(value: 0x2818)
    z80.bc().ld(value: 0x4259)
    z80.de().ld(value: 0xa9b0)
    z80.hl().ld(value: 0xe7a0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6471)
    z80.iy().ld(value: 0xa202)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2818)
    XCTAssert(z80.bc().value() == 0x4259)
    XCTAssert(z80.de().value() == 0xa9b0)
    XCTAssert(z80.hl().value() == 0x65a0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6471)
    XCTAssert(z80.iy().value() == 0xa202)
    XCTAssert(z80.fetchRam(location: 0xa199) == 0x65)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc9,0x8d])
    loadRam(location: 0x5632, data:[0x9a])
    z80.af().ld(value: 0x14e3)
    z80.bc().ld(value: 0xc330)
    z80.de().ld(value: 0x9aa2)
    z80.hl().ld(value: 0x8418)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0d4f)
    z80.iy().ld(value: 0x5669)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x14e3)
    XCTAssert(z80.bc().value() == 0xc330)
    XCTAssert(z80.de().value() == 0x9aa2)
    XCTAssert(z80.hl().value() == 0x8498)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0d4f)
    XCTAssert(z80.iy().value() == 0x5669)
    XCTAssert(z80.fetchRam(location: 0x5632) == 0x98)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc2,0x8e])
    loadRam(location: 0x4c43, data:[0x7f])
    z80.af().ld(value: 0xcb79)
    z80.bc().ld(value: 0x0fff)
    z80.de().ld(value: 0xb244)
    z80.hl().ld(value: 0xc902)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6246)
    z80.iy().ld(value: 0x4c81)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xcb79)
    XCTAssert(z80.bc().value() == 0x0fff)
    XCTAssert(z80.de().value() == 0xb244)
    XCTAssert(z80.hl().value() == 0xc902)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6246)
    XCTAssert(z80.iy().value() == 0x4c81)
    XCTAssert(z80.fetchRam(location: 0x4c43) == 0x7d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb8f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd4,0x8f])
    loadRam(location: 0x6b25, data:[0x59])
    z80.af().ld(value: 0x66b4)
    z80.bc().ld(value: 0x5fbb)
    z80.de().ld(value: 0x6c9b)
    z80.hl().ld(value: 0xd0e3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xac5a)
    z80.iy().ld(value: 0x6b51)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x59b4)
    XCTAssert(z80.bc().value() == 0x5fbb)
    XCTAssert(z80.de().value() == 0x6c9b)
    XCTAssert(z80.hl().value() == 0xd0e3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xac5a)
    XCTAssert(z80.iy().value() == 0x6b51)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb90() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xfd,0x90])
    loadRam(location: 0xd7f2, data:[0x70])
    z80.af().ld(value: 0x1305)
    z80.bc().ld(value: 0x1ce1)
    z80.de().ld(value: 0xd627)
    z80.hl().ld(value: 0x7402)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb470)
    z80.iy().ld(value: 0xd7f5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1305)
    XCTAssert(z80.bc().value() == 0x70e1)
    XCTAssert(z80.de().value() == 0xd627)
    XCTAssert(z80.hl().value() == 0x7402)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb470)
    XCTAssert(z80.iy().value() == 0xd7f5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb91() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbf,0x91])
    loadRam(location: 0x4791, data:[0x0e])
    z80.af().ld(value: 0x10df)
    z80.bc().ld(value: 0xc48f)
    z80.de().ld(value: 0x0213)
    z80.hl().ld(value: 0xfc7e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbfab)
    z80.iy().ld(value: 0x47d2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x10df)
    XCTAssert(z80.bc().value() == 0xc40a)
    XCTAssert(z80.de().value() == 0x0213)
    XCTAssert(z80.hl().value() == 0xfc7e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xbfab)
    XCTAssert(z80.iy().value() == 0x47d2)
    XCTAssert(z80.fetchRam(location: 0x4791) == 0x0a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb92() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0b,0x92])
    loadRam(location: 0x3145, data:[0xf6])
    z80.af().ld(value: 0x6a11)
    z80.bc().ld(value: 0xf89e)
    z80.de().ld(value: 0xf49d)
    z80.hl().ld(value: 0xc115)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbc5d)
    z80.iy().ld(value: 0x313a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6a11)
    XCTAssert(z80.bc().value() == 0xf89e)
    XCTAssert(z80.de().value() == 0xf29d)
    XCTAssert(z80.hl().value() == 0xc115)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xbc5d)
    XCTAssert(z80.iy().value() == 0x313a)
    XCTAssert(z80.fetchRam(location: 0x3145) == 0xf2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb93() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x52,0x93])
    loadRam(location: 0x2992, data:[0x38])
    z80.af().ld(value: 0x61e5)
    z80.bc().ld(value: 0xcc2c)
    z80.de().ld(value: 0x959a)
    z80.hl().ld(value: 0xb52b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfa64)
    z80.iy().ld(value: 0x2940)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x61e5)
    XCTAssert(z80.bc().value() == 0xcc2c)
    XCTAssert(z80.de().value() == 0x9538)
    XCTAssert(z80.hl().value() == 0xb52b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfa64)
    XCTAssert(z80.iy().value() == 0x2940)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb94() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x95,0x94])
    loadRam(location: 0xfdb1, data:[0x48])
    z80.af().ld(value: 0x31b4)
    z80.bc().ld(value: 0x3e5a)
    z80.de().ld(value: 0xfb3d)
    z80.hl().ld(value: 0xab83)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa801)
    z80.iy().ld(value: 0xfe1c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x31b4)
    XCTAssert(z80.bc().value() == 0x3e5a)
    XCTAssert(z80.de().value() == 0xfb3d)
    XCTAssert(z80.hl().value() == 0x4883)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa801)
    XCTAssert(z80.iy().value() == 0xfe1c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb95() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x90,0x95])
    loadRam(location: 0xe706, data:[0xeb])
    z80.af().ld(value: 0x337e)
    z80.bc().ld(value: 0x63a7)
    z80.de().ld(value: 0x2918)
    z80.hl().ld(value: 0xed6b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb12c)
    z80.iy().ld(value: 0xe776)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x337e)
    XCTAssert(z80.bc().value() == 0x63a7)
    XCTAssert(z80.de().value() == 0x2918)
    XCTAssert(z80.hl().value() == 0xedeb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb12c)
    XCTAssert(z80.iy().value() == 0xe776)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb96() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9e,0x96])
    loadRam(location: 0xe66d, data:[0xfc])
    z80.af().ld(value: 0x5d99)
    z80.bc().ld(value: 0xd9ec)
    z80.de().ld(value: 0xb6d0)
    z80.hl().ld(value: 0x5ed5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5d9d)
    z80.iy().ld(value: 0xe6cf)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5d99)
    XCTAssert(z80.bc().value() == 0xd9ec)
    XCTAssert(z80.de().value() == 0xb6d0)
    XCTAssert(z80.hl().value() == 0x5ed5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5d9d)
    XCTAssert(z80.iy().value() == 0xe6cf)
    XCTAssert(z80.fetchRam(location: 0xe66d) == 0xf8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb97() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x64,0x97])
    loadRam(location: 0x18e3, data:[0x9d])
    z80.af().ld(value: 0xccb6)
    z80.bc().ld(value: 0x8406)
    z80.de().ld(value: 0x72c6)
    z80.hl().ld(value: 0x1ba7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6dca)
    z80.iy().ld(value: 0x187f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x99b6)
    XCTAssert(z80.bc().value() == 0x8406)
    XCTAssert(z80.de().value() == 0x72c6)
    XCTAssert(z80.hl().value() == 0x1ba7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6dca)
    XCTAssert(z80.iy().value() == 0x187f)
    XCTAssert(z80.fetchRam(location: 0x18e3) == 0x99)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb98() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xda,0x98])
    loadRam(location: 0x4392, data:[0x15])
    z80.af().ld(value: 0x0495)
    z80.bc().ld(value: 0x312f)
    z80.de().ld(value: 0x8000)
    z80.hl().ld(value: 0xb749)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe9cb)
    z80.iy().ld(value: 0x43b8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0495)
    XCTAssert(z80.bc().value() == 0x152f)
    XCTAssert(z80.de().value() == 0x8000)
    XCTAssert(z80.hl().value() == 0xb749)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe9cb)
    XCTAssert(z80.iy().value() == 0x43b8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb99() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x78,0x99])
    loadRam(location: 0xd8e4, data:[0xb5])
    z80.af().ld(value: 0x2824)
    z80.bc().ld(value: 0xa485)
    z80.de().ld(value: 0xa30b)
    z80.hl().ld(value: 0xb286)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x10b0)
    z80.iy().ld(value: 0xd86c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2824)
    XCTAssert(z80.bc().value() == 0xa4b5)
    XCTAssert(z80.de().value() == 0xa30b)
    XCTAssert(z80.hl().value() == 0xb286)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x10b0)
    XCTAssert(z80.iy().value() == 0xd86c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9c,0x9a])
    loadRam(location: 0xd6b3, data:[0x9d])
    z80.af().ld(value: 0xb0cc)
    z80.bc().ld(value: 0xc40c)
    z80.de().ld(value: 0xdc1a)
    z80.hl().ld(value: 0x014a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2ff9)
    z80.iy().ld(value: 0xd717)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb0cc)
    XCTAssert(z80.bc().value() == 0xc40c)
    XCTAssert(z80.de().value() == 0x951a)
    XCTAssert(z80.hl().value() == 0x014a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2ff9)
    XCTAssert(z80.iy().value() == 0xd717)
    XCTAssert(z80.fetchRam(location: 0xd6b3) == 0x95)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x83,0x9b])
    loadRam(location: 0xcaa1, data:[0x95])
    z80.af().ld(value: 0xd092)
    z80.bc().ld(value: 0xa6c2)
    z80.de().ld(value: 0x7900)
    z80.hl().ld(value: 0x5448)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfab0)
    z80.iy().ld(value: 0xcb1e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd092)
    XCTAssert(z80.bc().value() == 0xa6c2)
    XCTAssert(z80.de().value() == 0x7995)
    XCTAssert(z80.hl().value() == 0x5448)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfab0)
    XCTAssert(z80.iy().value() == 0xcb1e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1e,0x9c])
    loadRam(location: 0x03d1, data:[0x78])
    z80.af().ld(value: 0xb58d)
    z80.bc().ld(value: 0x1ed1)
    z80.de().ld(value: 0xe93b)
    z80.hl().ld(value: 0x9e0c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5605)
    z80.iy().ld(value: 0x03b3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb58d)
    XCTAssert(z80.bc().value() == 0x1ed1)
    XCTAssert(z80.de().value() == 0xe93b)
    XCTAssert(z80.hl().value() == 0x700c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5605)
    XCTAssert(z80.iy().value() == 0x03b3)
    XCTAssert(z80.fetchRam(location: 0x03d1) == 0x70)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe6,0x9d])
    loadRam(location: 0xc06d, data:[0x53])
    z80.af().ld(value: 0xc7e9)
    z80.bc().ld(value: 0x18d3)
    z80.de().ld(value: 0x8eed)
    z80.hl().ld(value: 0xbd7d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9a7f)
    z80.iy().ld(value: 0xc087)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc7e9)
    XCTAssert(z80.bc().value() == 0x18d3)
    XCTAssert(z80.de().value() == 0x8eed)
    XCTAssert(z80.hl().value() == 0xbd53)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9a7f)
    XCTAssert(z80.iy().value() == 0xc087)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xeb,0x9e])
    loadRam(location: 0x41a8, data:[0x61])
    z80.af().ld(value: 0x81c7)
    z80.bc().ld(value: 0x71df)
    z80.de().ld(value: 0x45d5)
    z80.hl().ld(value: 0x0ca7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x648f)
    z80.iy().ld(value: 0x41bd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x81c7)
    XCTAssert(z80.bc().value() == 0x71df)
    XCTAssert(z80.de().value() == 0x45d5)
    XCTAssert(z80.hl().value() == 0x0ca7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x648f)
    XCTAssert(z80.iy().value() == 0x41bd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb9f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x50,0x9f])
    loadRam(location: 0x9d99, data:[0x89])
    z80.af().ld(value: 0xebf5)
    z80.bc().ld(value: 0xdc9f)
    z80.de().ld(value: 0xd490)
    z80.hl().ld(value: 0x15be)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0e12)
    z80.iy().ld(value: 0x9d49)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x81f5)
    XCTAssert(z80.bc().value() == 0xdc9f)
    XCTAssert(z80.de().value() == 0xd490)
    XCTAssert(z80.hl().value() == 0x15be)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0e12)
    XCTAssert(z80.iy().value() == 0x9d49)
    XCTAssert(z80.fetchRam(location: 0x9d99) == 0x81)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x76,0xa0])
    loadRam(location: 0xd703, data:[0xd4])
    z80.af().ld(value: 0x8ccb)
    z80.bc().ld(value: 0x0057)
    z80.de().ld(value: 0xbc19)
    z80.hl().ld(value: 0xe543)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8c5d)
    z80.iy().ld(value: 0xd68d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8ccb)
    XCTAssert(z80.bc().value() == 0xc457)
    XCTAssert(z80.de().value() == 0xbc19)
    XCTAssert(z80.hl().value() == 0xe543)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8c5d)
    XCTAssert(z80.iy().value() == 0xd68d)
    XCTAssert(z80.fetchRam(location: 0xd703) == 0xc4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x31,0xa1])
    loadRam(location: 0x66f9, data:[0xec])
    z80.af().ld(value: 0xeee6)
    z80.bc().ld(value: 0x6da4)
    z80.de().ld(value: 0x3a20)
    z80.hl().ld(value: 0x8bba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1de7)
    z80.iy().ld(value: 0x66c8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xeee6)
    XCTAssert(z80.bc().value() == 0x6dec)
    XCTAssert(z80.de().value() == 0x3a20)
    XCTAssert(z80.hl().value() == 0x8bba)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1de7)
    XCTAssert(z80.iy().value() == 0x66c8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0e,0xa2])
    loadRam(location: 0x04cd, data:[0x47])
    z80.af().ld(value: 0x3f89)
    z80.bc().ld(value: 0x5120)
    z80.de().ld(value: 0x0bd1)
    z80.hl().ld(value: 0xe669)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2993)
    z80.iy().ld(value: 0x04bf)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3f89)
    XCTAssert(z80.bc().value() == 0x5120)
    XCTAssert(z80.de().value() == 0x47d1)
    XCTAssert(z80.hl().value() == 0xe669)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2993)
    XCTAssert(z80.iy().value() == 0x04bf)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x05,0xa3])
    loadRam(location: 0xad7c, data:[0x59])
    z80.af().ld(value: 0x4439)
    z80.bc().ld(value: 0x6b8b)
    z80.de().ld(value: 0x6178)
    z80.hl().ld(value: 0x1246)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4cdb)
    z80.iy().ld(value: 0xad77)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4439)
    XCTAssert(z80.bc().value() == 0x6b8b)
    XCTAssert(z80.de().value() == 0x6149)
    XCTAssert(z80.hl().value() == 0x1246)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4cdb)
    XCTAssert(z80.iy().value() == 0xad77)
    XCTAssert(z80.fetchRam(location: 0xad7c) == 0x49)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x66,0xa4])
    loadRam(location: 0xc133, data:[0xc5])
    z80.af().ld(value: 0x3385)
    z80.bc().ld(value: 0x261e)
    z80.de().ld(value: 0xa487)
    z80.hl().ld(value: 0xb3bd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4b8f)
    z80.iy().ld(value: 0xc0cd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3385)
    XCTAssert(z80.bc().value() == 0x261e)
    XCTAssert(z80.de().value() == 0xa487)
    XCTAssert(z80.hl().value() == 0xc5bd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4b8f)
    XCTAssert(z80.iy().value() == 0xc0cd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa0,0xa5])
    loadRam(location: 0xf141, data:[0x44])
    z80.af().ld(value: 0x6e70)
    z80.bc().ld(value: 0xb7ed)
    z80.de().ld(value: 0x22cd)
    z80.hl().ld(value: 0xaedc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x46de)
    z80.iy().ld(value: 0xf1a1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6e70)
    XCTAssert(z80.bc().value() == 0xb7ed)
    XCTAssert(z80.de().value() == 0x22cd)
    XCTAssert(z80.hl().value() == 0xae44)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x46de)
    XCTAssert(z80.iy().value() == 0xf1a1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x76,0xa6])
    loadRam(location: 0x9469, data:[0xbc])
    z80.af().ld(value: 0x814b)
    z80.bc().ld(value: 0x6408)
    z80.de().ld(value: 0x3dcb)
    z80.hl().ld(value: 0x971f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5716)
    z80.iy().ld(value: 0x93f3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x814b)
    XCTAssert(z80.bc().value() == 0x6408)
    XCTAssert(z80.de().value() == 0x3dcb)
    XCTAssert(z80.hl().value() == 0x971f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5716)
    XCTAssert(z80.iy().value() == 0x93f3)
    XCTAssert(z80.fetchRam(location: 0x9469) == 0xac)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x66,0xa7])
    loadRam(location: 0x7a2a, data:[0x2e])
    z80.af().ld(value: 0xa4c2)
    z80.bc().ld(value: 0x679e)
    z80.de().ld(value: 0xc313)
    z80.hl().ld(value: 0x61df)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x67e6)
    z80.iy().ld(value: 0x79c4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2ec2)
    XCTAssert(z80.bc().value() == 0x679e)
    XCTAssert(z80.de().value() == 0xc313)
    XCTAssert(z80.hl().value() == 0x61df)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x67e6)
    XCTAssert(z80.iy().value() == 0x79c4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa9,0xa8])
    loadRam(location: 0x0cef, data:[0xb7])
    z80.af().ld(value: 0x537c)
    z80.bc().ld(value: 0x1fed)
    z80.de().ld(value: 0x6cbb)
    z80.hl().ld(value: 0xbd26)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc638)
    z80.iy().ld(value: 0x0d46)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x537c)
    XCTAssert(z80.bc().value() == 0x97ed)
    XCTAssert(z80.de().value() == 0x6cbb)
    XCTAssert(z80.hl().value() == 0xbd26)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc638)
    XCTAssert(z80.iy().value() == 0x0d46)
    XCTAssert(z80.fetchRam(location: 0x0cef) == 0x97)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcba9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2b,0xa9])
    loadRam(location: 0x0f7f, data:[0x8f])
    z80.af().ld(value: 0xba5a)
    z80.bc().ld(value: 0x3076)
    z80.de().ld(value: 0xcdd7)
    z80.hl().ld(value: 0x298d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x59ab)
    z80.iy().ld(value: 0x0f54)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xba5a)
    XCTAssert(z80.bc().value() == 0x308f)
    XCTAssert(z80.de().value() == 0xcdd7)
    XCTAssert(z80.hl().value() == 0x298d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x59ab)
    XCTAssert(z80.iy().value() == 0x0f54)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbaa() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0b,0xaa])
    loadRam(location: 0xb3dc, data:[0x3a])
    z80.af().ld(value: 0x406a)
    z80.bc().ld(value: 0x2ed6)
    z80.de().ld(value: 0xfa8c)
    z80.hl().ld(value: 0xc633)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x87cb)
    z80.iy().ld(value: 0xb3d1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x406a)
    XCTAssert(z80.bc().value() == 0x2ed6)
    XCTAssert(z80.de().value() == 0x1a8c)
    XCTAssert(z80.hl().value() == 0xc633)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x87cb)
    XCTAssert(z80.iy().value() == 0xb3d1)
    XCTAssert(z80.fetchRam(location: 0xb3dc) == 0x1a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbab() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa9,0xab])
    loadRam(location: 0x8e77, data:[0x1f])
    z80.af().ld(value: 0xda61)
    z80.bc().ld(value: 0x0521)
    z80.de().ld(value: 0xa123)
    z80.hl().ld(value: 0xc7fa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb71a)
    z80.iy().ld(value: 0x8ece)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xda61)
    XCTAssert(z80.bc().value() == 0x0521)
    XCTAssert(z80.de().value() == 0xa11f)
    XCTAssert(z80.hl().value() == 0xc7fa)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb71a)
    XCTAssert(z80.iy().value() == 0x8ece)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbac() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x23,0xac])
    loadRam(location: 0x0548, data:[0x9c])
    z80.af().ld(value: 0x34a3)
    z80.bc().ld(value: 0x81ce)
    z80.de().ld(value: 0x07d6)
    z80.hl().ld(value: 0xf3a4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x430b)
    z80.iy().ld(value: 0x0525)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x34a3)
    XCTAssert(z80.bc().value() == 0x81ce)
    XCTAssert(z80.de().value() == 0x07d6)
    XCTAssert(z80.hl().value() == 0x9ca4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x430b)
    XCTAssert(z80.iy().value() == 0x0525)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbad() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x4e,0xad])
    loadRam(location: 0x94dd, data:[0x37])
    z80.af().ld(value: 0x5010)
    z80.bc().ld(value: 0x918e)
    z80.de().ld(value: 0xddbc)
    z80.hl().ld(value: 0x4f89)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x88c5)
    z80.iy().ld(value: 0x948f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5010)
    XCTAssert(z80.bc().value() == 0x918e)
    XCTAssert(z80.de().value() == 0xddbc)
    XCTAssert(z80.hl().value() == 0x4f17)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x88c5)
    XCTAssert(z80.iy().value() == 0x948f)
    XCTAssert(z80.fetchRam(location: 0x94dd) == 0x17)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbae() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0c,0xae])
    loadRam(location: 0x0c29, data:[0xa9])
    z80.af().ld(value: 0xec0d)
    z80.bc().ld(value: 0xb57e)
    z80.de().ld(value: 0x18c6)
    z80.hl().ld(value: 0x7b01)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbac6)
    z80.iy().ld(value: 0x0c1d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xec0d)
    XCTAssert(z80.bc().value() == 0xb57e)
    XCTAssert(z80.de().value() == 0x18c6)
    XCTAssert(z80.hl().value() == 0x7b01)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xbac6)
    XCTAssert(z80.iy().value() == 0x0c1d)
    XCTAssert(z80.fetchRam(location: 0x0c29) == 0x89)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbaf() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0d,0xaf])
    loadRam(location: 0x26f8, data:[0x44])
    z80.af().ld(value: 0xb322)
    z80.bc().ld(value: 0x6731)
    z80.de().ld(value: 0xdaad)
    z80.hl().ld(value: 0x8d38)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdd8f)
    z80.iy().ld(value: 0x26eb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4422)
    XCTAssert(z80.bc().value() == 0x6731)
    XCTAssert(z80.de().value() == 0xdaad)
    XCTAssert(z80.hl().value() == 0x8d38)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xdd8f)
    XCTAssert(z80.iy().value() == 0x26eb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x5a,0xb0])
    loadRam(location: 0xa125, data:[0x76])
    z80.af().ld(value: 0xb984)
    z80.bc().ld(value: 0x796c)
    z80.de().ld(value: 0x44b1)
    z80.hl().ld(value: 0xfef9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4069)
    z80.iy().ld(value: 0xa0cb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb984)
    XCTAssert(z80.bc().value() == 0x366c)
    XCTAssert(z80.de().value() == 0x44b1)
    XCTAssert(z80.hl().value() == 0xfef9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4069)
    XCTAssert(z80.iy().value() == 0xa0cb)
    XCTAssert(z80.fetchRam(location: 0xa125) == 0x36)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x82,0xb1])
    loadRam(location: 0xf31a, data:[0x79])
    z80.af().ld(value: 0x59c3)
    z80.bc().ld(value: 0xab13)
    z80.de().ld(value: 0x42ee)
    z80.hl().ld(value: 0xb764)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8f7f)
    z80.iy().ld(value: 0xf398)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x59c3)
    XCTAssert(z80.bc().value() == 0xab39)
    XCTAssert(z80.de().value() == 0x42ee)
    XCTAssert(z80.hl().value() == 0xb764)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8f7f)
    XCTAssert(z80.iy().value() == 0xf398)
    XCTAssert(z80.fetchRam(location: 0xf31a) == 0x39)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x23,0xb2])
    loadRam(location: 0x341c, data:[0x7b])
    z80.af().ld(value: 0xf310)
    z80.bc().ld(value: 0xceec)
    z80.de().ld(value: 0xbbfb)
    z80.hl().ld(value: 0x3569)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4a6f)
    z80.iy().ld(value: 0x33f9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf310)
    XCTAssert(z80.bc().value() == 0xceec)
    XCTAssert(z80.de().value() == 0x3bfb)
    XCTAssert(z80.hl().value() == 0x3569)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4a6f)
    XCTAssert(z80.iy().value() == 0x33f9)
    XCTAssert(z80.fetchRam(location: 0x341c) == 0x3b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x6c,0xb3])
    loadRam(location: 0x523e, data:[0x37])
    z80.af().ld(value: 0x9c05)
    z80.bc().ld(value: 0x0f92)
    z80.de().ld(value: 0xbd3b)
    z80.hl().ld(value: 0x553d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc75e)
    z80.iy().ld(value: 0x51d2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9c05)
    XCTAssert(z80.bc().value() == 0x0f92)
    XCTAssert(z80.de().value() == 0xbd37)
    XCTAssert(z80.hl().value() == 0x553d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc75e)
    XCTAssert(z80.iy().value() == 0x51d2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc5,0xb4])
    loadRam(location: 0x4cdc, data:[0xe9])
    z80.af().ld(value: 0x3e55)
    z80.bc().ld(value: 0x1338)
    z80.de().ld(value: 0x638d)
    z80.hl().ld(value: 0x353c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x44ad)
    z80.iy().ld(value: 0x4d17)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3e55)
    XCTAssert(z80.bc().value() == 0x1338)
    XCTAssert(z80.de().value() == 0x638d)
    XCTAssert(z80.hl().value() == 0xa93c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x44ad)
    XCTAssert(z80.iy().value() == 0x4d17)
    XCTAssert(z80.fetchRam(location: 0x4cdc) == 0xa9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x50,0xb5])
    loadRam(location: 0x8f2d, data:[0x0f])
    z80.af().ld(value: 0x2f3a)
    z80.bc().ld(value: 0xb709)
    z80.de().ld(value: 0x4167)
    z80.hl().ld(value: 0x57be)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb543)
    z80.iy().ld(value: 0x8edd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2f3a)
    XCTAssert(z80.bc().value() == 0xb709)
    XCTAssert(z80.de().value() == 0x4167)
    XCTAssert(z80.hl().value() == 0x570f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb543)
    XCTAssert(z80.iy().value() == 0x8edd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3a,0xb6])
    loadRam(location: 0x1e50, data:[0x13])
    z80.af().ld(value: 0xa887)
    z80.bc().ld(value: 0x519b)
    z80.de().ld(value: 0xc91b)
    z80.hl().ld(value: 0xcc91)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa416)
    z80.iy().ld(value: 0x1e16)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xa887)
    XCTAssert(z80.bc().value() == 0x519b)
    XCTAssert(z80.de().value() == 0xc91b)
    XCTAssert(z80.hl().value() == 0xcc91)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa416)
    XCTAssert(z80.iy().value() == 0x1e16)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc0,0xb7])
    loadRam(location: 0x0069, data:[0x38])
    z80.af().ld(value: 0x1335)
    z80.bc().ld(value: 0xa599)
    z80.de().ld(value: 0x9fbf)
    z80.hl().ld(value: 0xc111)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8bc5)
    z80.iy().ld(value: 0x00a9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3835)
    XCTAssert(z80.bc().value() == 0xa599)
    XCTAssert(z80.de().value() == 0x9fbf)
    XCTAssert(z80.hl().value() == 0xc111)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8bc5)
    XCTAssert(z80.iy().value() == 0x00a9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x31,0xb8])
    loadRam(location: 0xd0b8, data:[0x17])
    z80.af().ld(value: 0xd146)
    z80.bc().ld(value: 0x1138)
    z80.de().ld(value: 0x1a45)
    z80.hl().ld(value: 0x8259)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6a03)
    z80.iy().ld(value: 0xd087)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd146)
    XCTAssert(z80.bc().value() == 0x1738)
    XCTAssert(z80.de().value() == 0x1a45)
    XCTAssert(z80.hl().value() == 0x8259)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6a03)
    XCTAssert(z80.iy().value() == 0xd087)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbb9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3b,0xb9])
    loadRam(location: 0xb889, data:[0xb4])
    z80.af().ld(value: 0x757b)
    z80.bc().ld(value: 0x0b9e)
    z80.de().ld(value: 0x767b)
    z80.hl().ld(value: 0x2ad1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1498)
    z80.iy().ld(value: 0xb84e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x757b)
    XCTAssert(z80.bc().value() == 0x0b34)
    XCTAssert(z80.de().value() == 0x767b)
    XCTAssert(z80.hl().value() == 0x2ad1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1498)
    XCTAssert(z80.iy().value() == 0xb84e)
    XCTAssert(z80.fetchRam(location: 0xb889) == 0x34)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbba() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x38,0xba])
    loadRam(location: 0x3877, data:[0xd6])
    z80.af().ld(value: 0x43ef)
    z80.bc().ld(value: 0x1c58)
    z80.de().ld(value: 0xdda3)
    z80.hl().ld(value: 0x4519)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb67b)
    z80.iy().ld(value: 0x383f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x43ef)
    XCTAssert(z80.bc().value() == 0x1c58)
    XCTAssert(z80.de().value() == 0x56a3)
    XCTAssert(z80.hl().value() == 0x4519)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb67b)
    XCTAssert(z80.iy().value() == 0x383f)
    XCTAssert(z80.fetchRam(location: 0x3877) == 0x56)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbbb() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x07,0xbb])
    loadRam(location: 0xe305, data:[0x6e])
    z80.af().ld(value: 0xdccb)
    z80.bc().ld(value: 0x7ab3)
    z80.de().ld(value: 0x7615)
    z80.hl().ld(value: 0x4161)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2942)
    z80.iy().ld(value: 0xe2fe)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdccb)
    XCTAssert(z80.bc().value() == 0x7ab3)
    XCTAssert(z80.de().value() == 0x766e)
    XCTAssert(z80.hl().value() == 0x4161)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2942)
    XCTAssert(z80.iy().value() == 0xe2fe)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbbc() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf8,0xbc])
    loadRam(location: 0xaf04, data:[0xcf])
    z80.af().ld(value: 0x0e07)
    z80.bc().ld(value: 0x34f5)
    z80.de().ld(value: 0x0995)
    z80.hl().ld(value: 0xcc42)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9d42)
    z80.iy().ld(value: 0xaf0c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0e07)
    XCTAssert(z80.bc().value() == 0x34f5)
    XCTAssert(z80.de().value() == 0x0995)
    XCTAssert(z80.hl().value() == 0x4f42)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9d42)
    XCTAssert(z80.iy().value() == 0xaf0c)
    XCTAssert(z80.fetchRam(location: 0xaf04) == 0x4f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbbd() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xaa,0xbd])
    loadRam(location: 0xdeb7, data:[0x8d])
    z80.af().ld(value: 0x30ef)
    z80.bc().ld(value: 0xe60c)
    z80.de().ld(value: 0x9bf0)
    z80.hl().ld(value: 0xa1bf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbd1c)
    z80.iy().ld(value: 0xdf0d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x30ef)
    XCTAssert(z80.bc().value() == 0xe60c)
    XCTAssert(z80.de().value() == 0x9bf0)
    XCTAssert(z80.hl().value() == 0xa10d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xbd1c)
    XCTAssert(z80.iy().value() == 0xdf0d)
    XCTAssert(z80.fetchRam(location: 0xdeb7) == 0x0d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbbe() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc8,0xbe])
    loadRam(location: 0x3cd7, data:[0xa1])
    z80.af().ld(value: 0x1133)
    z80.bc().ld(value: 0xbef6)
    z80.de().ld(value: 0x5059)
    z80.hl().ld(value: 0x1089)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd558)
    z80.iy().ld(value: 0x3d0f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1133)
    XCTAssert(z80.bc().value() == 0xbef6)
    XCTAssert(z80.de().value() == 0x5059)
    XCTAssert(z80.hl().value() == 0x1089)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd558)
    XCTAssert(z80.iy().value() == 0x3d0f)
    XCTAssert(z80.fetchRam(location: 0x3cd7) == 0x21)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbbf() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xfd,0xbf])
    loadRam(location: 0xbde4, data:[0xac])
    z80.af().ld(value: 0x83d6)
    z80.bc().ld(value: 0xc893)
    z80.de().ld(value: 0x8db8)
    z80.hl().ld(value: 0x716b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0956)
    z80.iy().ld(value: 0xbde7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2cd6)
    XCTAssert(z80.bc().value() == 0xc893)
    XCTAssert(z80.de().value() == 0x8db8)
    XCTAssert(z80.hl().value() == 0x716b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0956)
    XCTAssert(z80.iy().value() == 0xbde7)
    XCTAssert(z80.fetchRam(location: 0xbde4) == 0x2c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0a,0xc0])
    loadRam(location: 0x2b3b, data:[0xec])
    z80.af().ld(value: 0x3666)
    z80.bc().ld(value: 0x676c)
    z80.de().ld(value: 0x35e5)
    z80.hl().ld(value: 0xdb0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xea93)
    z80.iy().ld(value: 0x2b31)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3666)
    XCTAssert(z80.bc().value() == 0xed6c)
    XCTAssert(z80.de().value() == 0x35e5)
    XCTAssert(z80.hl().value() == 0xdb0a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xea93)
    XCTAssert(z80.iy().value() == 0x2b31)
    XCTAssert(z80.fetchRam(location: 0x2b3b) == 0xed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x87,0xc1])
    loadRam(location: 0xbcee, data:[0xee])
    z80.af().ld(value: 0x3902)
    z80.bc().ld(value: 0xd498)
    z80.de().ld(value: 0xaf62)
    z80.hl().ld(value: 0x9821)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x48b8)
    z80.iy().ld(value: 0xbd67)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3902)
    XCTAssert(z80.bc().value() == 0xd4ef)
    XCTAssert(z80.de().value() == 0xaf62)
    XCTAssert(z80.hl().value() == 0x9821)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x48b8)
    XCTAssert(z80.iy().value() == 0xbd67)
    XCTAssert(z80.fetchRam(location: 0xbcee) == 0xef)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8d,0xc2])
    loadRam(location: 0x5ab9, data:[0xc2])
    z80.af().ld(value: 0xad26)
    z80.bc().ld(value: 0x5a6d)
    z80.de().ld(value: 0x6762)
    z80.hl().ld(value: 0x16c9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x495a)
    z80.iy().ld(value: 0x5b2c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xad26)
    XCTAssert(z80.bc().value() == 0x5a6d)
    XCTAssert(z80.de().value() == 0xc362)
    XCTAssert(z80.hl().value() == 0x16c9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x495a)
    XCTAssert(z80.iy().value() == 0x5b2c)
    XCTAssert(z80.fetchRam(location: 0x5ab9) == 0xc3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x5a,0xc3])
    loadRam(location: 0xe6c0, data:[0x4f])
    z80.af().ld(value: 0x3e6c)
    z80.bc().ld(value: 0x9a74)
    z80.de().ld(value: 0xa2ee)
    z80.hl().ld(value: 0x9838)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeafa)
    z80.iy().ld(value: 0xe666)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3e6c)
    XCTAssert(z80.bc().value() == 0x9a74)
    XCTAssert(z80.de().value() == 0xa24f)
    XCTAssert(z80.hl().value() == 0x9838)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xeafa)
    XCTAssert(z80.iy().value() == 0xe666)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x89,0xc4])
    loadRam(location: 0x5c99, data:[0x61])
    z80.af().ld(value: 0xbf68)
    z80.bc().ld(value: 0xd00b)
    z80.de().ld(value: 0x5283)
    z80.hl().ld(value: 0x51c2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x517c)
    z80.iy().ld(value: 0x5d10)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbf68)
    XCTAssert(z80.bc().value() == 0xd00b)
    XCTAssert(z80.de().value() == 0x5283)
    XCTAssert(z80.hl().value() == 0x61c2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x517c)
    XCTAssert(z80.iy().value() == 0x5d10)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa9,0xc5])
    loadRam(location: 0x0264, data:[0xcd])
    z80.af().ld(value: 0x127b)
    z80.bc().ld(value: 0xdb6a)
    z80.de().ld(value: 0x00b9)
    z80.hl().ld(value: 0x5138)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x98f6)
    z80.iy().ld(value: 0x02bb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x127b)
    XCTAssert(z80.bc().value() == 0xdb6a)
    XCTAssert(z80.de().value() == 0x00b9)
    XCTAssert(z80.hl().value() == 0x51cd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x98f6)
    XCTAssert(z80.iy().value() == 0x02bb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xee,0xc6])
    loadRam(location: 0x76b2, data:[0x82])
    z80.af().ld(value: 0x35da)
    z80.bc().ld(value: 0x98c2)
    z80.de().ld(value: 0x3f57)
    z80.hl().ld(value: 0x44a4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2771)
    z80.iy().ld(value: 0x76c4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x35da)
    XCTAssert(z80.bc().value() == 0x98c2)
    XCTAssert(z80.de().value() == 0x3f57)
    XCTAssert(z80.hl().value() == 0x44a4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2771)
    XCTAssert(z80.iy().value() == 0x76c4)
    XCTAssert(z80.fetchRam(location: 0x76b2) == 0x83)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9e,0xc7])
    loadRam(location: 0xf2a9, data:[0xd7])
    z80.af().ld(value: 0x763f)
    z80.bc().ld(value: 0xb86f)
    z80.de().ld(value: 0x12d3)
    z80.hl().ld(value: 0x7e2d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd870)
    z80.iy().ld(value: 0xf30b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd73f)
    XCTAssert(z80.bc().value() == 0xb86f)
    XCTAssert(z80.de().value() == 0x12d3)
    XCTAssert(z80.hl().value() == 0x7e2d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd870)
    XCTAssert(z80.iy().value() == 0xf30b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x10,0xc8])
    loadRam(location: 0xc422, data:[0xe9])
    z80.af().ld(value: 0x1f81)
    z80.bc().ld(value: 0xc7c0)
    z80.de().ld(value: 0x85da)
    z80.hl().ld(value: 0x3cdd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd854)
    z80.iy().ld(value: 0xc412)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1f81)
    XCTAssert(z80.bc().value() == 0xebc0)
    XCTAssert(z80.de().value() == 0x85da)
    XCTAssert(z80.hl().value() == 0x3cdd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd854)
    XCTAssert(z80.iy().value() == 0xc412)
    XCTAssert(z80.fetchRam(location: 0xc422) == 0xeb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbc9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x61,0xc9])
    loadRam(location: 0x8ba3, data:[0xb7])
    z80.af().ld(value: 0xed19)
    z80.bc().ld(value: 0x3f88)
    z80.de().ld(value: 0x1370)
    z80.hl().ld(value: 0xe084)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4fdd)
    z80.iy().ld(value: 0x8b42)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xed19)
    XCTAssert(z80.bc().value() == 0x3fb7)
    XCTAssert(z80.de().value() == 0x1370)
    XCTAssert(z80.hl().value() == 0xe084)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4fdd)
    XCTAssert(z80.iy().value() == 0x8b42)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbca() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1a,0xca])
    loadRam(location: 0x51aa, data:[0x90])
    z80.af().ld(value: 0xc7e5)
    z80.bc().ld(value: 0x233b)
    z80.de().ld(value: 0x2312)
    z80.hl().ld(value: 0xf7f9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe417)
    z80.iy().ld(value: 0x5190)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc7e5)
    XCTAssert(z80.bc().value() == 0x233b)
    XCTAssert(z80.de().value() == 0x9212)
    XCTAssert(z80.hl().value() == 0xf7f9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe417)
    XCTAssert(z80.iy().value() == 0x5190)
    XCTAssert(z80.fetchRam(location: 0x51aa) == 0x92)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbcb() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x5e,0xcb])
    loadRam(location: 0x9ad0, data:[0x70])
    z80.af().ld(value: 0xbdba)
    z80.bc().ld(value: 0xa964)
    z80.de().ld(value: 0xea38)
    z80.hl().ld(value: 0x9422)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfca3)
    z80.iy().ld(value: 0x9a72)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbdba)
    XCTAssert(z80.bc().value() == 0xa964)
    XCTAssert(z80.de().value() == 0xea72)
    XCTAssert(z80.hl().value() == 0x9422)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfca3)
    XCTAssert(z80.iy().value() == 0x9a72)
    XCTAssert(z80.fetchRam(location: 0x9ad0) == 0x72)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbcc() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2d,0xcc])
    loadRam(location: 0x1526, data:[0x4e])
    z80.af().ld(value: 0x0f4f)
    z80.bc().ld(value: 0x0261)
    z80.de().ld(value: 0x21b0)
    z80.hl().ld(value: 0x2097)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x575d)
    z80.iy().ld(value: 0x14f9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0f4f)
    XCTAssert(z80.bc().value() == 0x0261)
    XCTAssert(z80.de().value() == 0x21b0)
    XCTAssert(z80.hl().value() == 0x4e97)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x575d)
    XCTAssert(z80.iy().value() == 0x14f9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbcd() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa1,0xcd])
    loadRam(location: 0xbb8a, data:[0x66])
    z80.af().ld(value: 0x1b79)
    z80.bc().ld(value: 0x8f9f)
    z80.de().ld(value: 0x31bf)
    z80.hl().ld(value: 0x9ca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7ecb)
    z80.iy().ld(value: 0xbbe9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1b79)
    XCTAssert(z80.bc().value() == 0x8f9f)
    XCTAssert(z80.de().value() == 0x31bf)
    XCTAssert(z80.hl().value() == 0x9c66)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7ecb)
    XCTAssert(z80.iy().value() == 0xbbe9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbce() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x36,0xce])
    loadRam(location: 0xb8d8, data:[0x45])
    z80.af().ld(value: 0x8e13)
    z80.bc().ld(value: 0x968e)
    z80.de().ld(value: 0x1784)
    z80.hl().ld(value: 0x0a0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1e87)
    z80.iy().ld(value: 0xb8a2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8e13)
    XCTAssert(z80.bc().value() == 0x968e)
    XCTAssert(z80.de().value() == 0x1784)
    XCTAssert(z80.hl().value() == 0x0a0a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1e87)
    XCTAssert(z80.iy().value() == 0xb8a2)
    XCTAssert(z80.fetchRam(location: 0xb8d8) == 0x47)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbcf() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x70,0xcf])
    loadRam(location: 0xc30c, data:[0x7a])
    z80.af().ld(value: 0x8d0a)
    z80.bc().ld(value: 0xa073)
    z80.de().ld(value: 0xc4ba)
    z80.hl().ld(value: 0x5b69)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3b47)
    z80.iy().ld(value: 0xc29c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7a0a)
    XCTAssert(z80.bc().value() == 0xa073)
    XCTAssert(z80.de().value() == 0xc4ba)
    XCTAssert(z80.hl().value() == 0x5b69)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3b47)
    XCTAssert(z80.iy().value() == 0xc29c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbc,0xd0])
    loadRam(location: 0x3ba7, data:[0x20])
    z80.af().ld(value: 0xe2bb)
    z80.bc().ld(value: 0x8635)
    z80.de().ld(value: 0x650c)
    z80.hl().ld(value: 0x689a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1294)
    z80.iy().ld(value: 0x3beb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe2bb)
    XCTAssert(z80.bc().value() == 0x2435)
    XCTAssert(z80.de().value() == 0x650c)
    XCTAssert(z80.hl().value() == 0x689a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1294)
    XCTAssert(z80.iy().value() == 0x3beb)
    XCTAssert(z80.fetchRam(location: 0x3ba7) == 0x24)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x11,0xd1])
    loadRam(location: 0x8c76, data:[0xb9])
    z80.af().ld(value: 0x5df8)
    z80.bc().ld(value: 0xf701)
    z80.de().ld(value: 0x9494)
    z80.hl().ld(value: 0x4967)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xad00)
    z80.iy().ld(value: 0x8c65)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5df8)
    XCTAssert(z80.bc().value() == 0xf7bd)
    XCTAssert(z80.de().value() == 0x9494)
    XCTAssert(z80.hl().value() == 0x4967)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xad00)
    XCTAssert(z80.iy().value() == 0x8c65)
    XCTAssert(z80.fetchRam(location: 0x8c76) == 0xbd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xfb,0xd2])
    loadRam(location: 0xc04c, data:[0x51])
    z80.af().ld(value: 0x9876)
    z80.bc().ld(value: 0x4bd9)
    z80.de().ld(value: 0x3148)
    z80.hl().ld(value: 0x665a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7eac)
    z80.iy().ld(value: 0xc051)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9876)
    XCTAssert(z80.bc().value() == 0x4bd9)
    XCTAssert(z80.de().value() == 0x5548)
    XCTAssert(z80.hl().value() == 0x665a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7eac)
    XCTAssert(z80.iy().value() == 0xc051)
    XCTAssert(z80.fetchRam(location: 0xc04c) == 0x55)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3e,0xd3])
    loadRam(location: 0x0ac5, data:[0xe0])
    z80.af().ld(value: 0x8f90)
    z80.bc().ld(value: 0xbacd)
    z80.de().ld(value: 0xe87a)
    z80.hl().ld(value: 0x538f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe5a)
    z80.iy().ld(value: 0x0a87)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8f90)
    XCTAssert(z80.bc().value() == 0xbacd)
    XCTAssert(z80.de().value() == 0xe8e4)
    XCTAssert(z80.hl().value() == 0x538f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfe5a)
    XCTAssert(z80.iy().value() == 0x0a87)
    XCTAssert(z80.fetchRam(location: 0x0ac5) == 0xe4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x36,0xd4])
    loadRam(location: 0x94ae, data:[0x7d])
    z80.af().ld(value: 0x15e2)
    z80.bc().ld(value: 0x1820)
    z80.de().ld(value: 0x5588)
    z80.hl().ld(value: 0xe67f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7193)
    z80.iy().ld(value: 0x9478)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x15e2)
    XCTAssert(z80.bc().value() == 0x1820)
    XCTAssert(z80.de().value() == 0x5588)
    XCTAssert(z80.hl().value() == 0x7d7f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7193)
    XCTAssert(z80.iy().value() == 0x9478)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x48,0xd5])
    loadRam(location: 0x8650, data:[0x98])
    z80.af().ld(value: 0x1409)
    z80.bc().ld(value: 0x6535)
    z80.de().ld(value: 0xc371)
    z80.hl().ld(value: 0xabe2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2e10)
    z80.iy().ld(value: 0x8608)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1409)
    XCTAssert(z80.bc().value() == 0x6535)
    XCTAssert(z80.de().value() == 0xc371)
    XCTAssert(z80.hl().value() == 0xab9c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2e10)
    XCTAssert(z80.iy().value() == 0x8608)
    XCTAssert(z80.fetchRam(location: 0x8650) == 0x9c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc9,0xd6])
    loadRam(location: 0x6a6c, data:[0x7c])
    z80.af().ld(value: 0x7801)
    z80.bc().ld(value: 0x78b6)
    z80.de().ld(value: 0xd191)
    z80.hl().ld(value: 0x054a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2065)
    z80.iy().ld(value: 0x6aa3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7801)
    XCTAssert(z80.bc().value() == 0x78b6)
    XCTAssert(z80.de().value() == 0xd191)
    XCTAssert(z80.hl().value() == 0x054a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2065)
    XCTAssert(z80.iy().value() == 0x6aa3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbe,0xd7])
    loadRam(location: 0x3669, data:[0x95])
    z80.af().ld(value: 0x1b6a)
    z80.bc().ld(value: 0x266e)
    z80.de().ld(value: 0x387f)
    z80.hl().ld(value: 0x7fcb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1941)
    z80.iy().ld(value: 0x36ab)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x956a)
    XCTAssert(z80.bc().value() == 0x266e)
    XCTAssert(z80.de().value() == 0x387f)
    XCTAssert(z80.hl().value() == 0x7fcb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1941)
    XCTAssert(z80.iy().value() == 0x36ab)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbc,0xd8])
    loadRam(location: 0x43b4, data:[0xd8])
    z80.af().ld(value: 0x7b1b)
    z80.bc().ld(value: 0xa191)
    z80.de().ld(value: 0xefee)
    z80.hl().ld(value: 0x55b9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf789)
    z80.iy().ld(value: 0x43f8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7b1b)
    XCTAssert(z80.bc().value() == 0xd891)
    XCTAssert(z80.de().value() == 0xefee)
    XCTAssert(z80.hl().value() == 0x55b9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf789)
    XCTAssert(z80.iy().value() == 0x43f8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbd9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x16,0xd9])
    loadRam(location: 0x0a7c, data:[0xf4])
    z80.af().ld(value: 0x0faf)
    z80.bc().ld(value: 0x4eda)
    z80.de().ld(value: 0xc556)
    z80.hl().ld(value: 0x6ed3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3fc3)
    z80.iy().ld(value: 0x0a66)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0faf)
    XCTAssert(z80.bc().value() == 0x4efc)
    XCTAssert(z80.de().value() == 0xc556)
    XCTAssert(z80.hl().value() == 0x6ed3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3fc3)
    XCTAssert(z80.iy().value() == 0x0a66)
    XCTAssert(z80.fetchRam(location: 0x0a7c) == 0xfc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbda() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe8,0xda])
    loadRam(location: 0xd0d8, data:[0x6b])
    z80.af().ld(value: 0x9ea1)
    z80.bc().ld(value: 0x8186)
    z80.de().ld(value: 0xc045)
    z80.hl().ld(value: 0xd6e0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x34d3)
    z80.iy().ld(value: 0xd0f0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9ea1)
    XCTAssert(z80.bc().value() == 0x8186)
    XCTAssert(z80.de().value() == 0x6b45)
    XCTAssert(z80.hl().value() == 0xd6e0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x34d3)
    XCTAssert(z80.iy().value() == 0xd0f0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbdb() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7a,0xdb])
    loadRam(location: 0x8ca3, data:[0x15])
    z80.af().ld(value: 0x5ee0)
    z80.bc().ld(value: 0xbdea)
    z80.de().ld(value: 0xd00e)
    z80.hl().ld(value: 0x513f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x690a)
    z80.iy().ld(value: 0x8c29)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5ee0)
    XCTAssert(z80.bc().value() == 0xbdea)
    XCTAssert(z80.de().value() == 0xd01d)
    XCTAssert(z80.hl().value() == 0x513f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x690a)
    XCTAssert(z80.iy().value() == 0x8c29)
    XCTAssert(z80.fetchRam(location: 0x8ca3) == 0x1d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbdc() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x64,0xdc])
    loadRam(location: 0x599e, data:[0x15])
    z80.af().ld(value: 0x5cfa)
    z80.bc().ld(value: 0x2e2b)
    z80.de().ld(value: 0x1d17)
    z80.hl().ld(value: 0xdbf6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa4f2)
    z80.iy().ld(value: 0x593a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5cfa)
    XCTAssert(z80.bc().value() == 0x2e2b)
    XCTAssert(z80.de().value() == 0x1d17)
    XCTAssert(z80.hl().value() == 0x1df6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa4f2)
    XCTAssert(z80.iy().value() == 0x593a)
    XCTAssert(z80.fetchRam(location: 0x599e) == 0x1d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbdd() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x75,0xdd])
    loadRam(location: 0x1e09, data:[0x28])
    z80.af().ld(value: 0x8773)
    z80.bc().ld(value: 0x70a6)
    z80.de().ld(value: 0x83ce)
    z80.hl().ld(value: 0x52b8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x35da)
    z80.iy().ld(value: 0x1d94)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8773)
    XCTAssert(z80.bc().value() == 0x70a6)
    XCTAssert(z80.de().value() == 0x83ce)
    XCTAssert(z80.hl().value() == 0x5228)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x35da)
    XCTAssert(z80.iy().value() == 0x1d94)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbde() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x17,0xde])
    loadRam(location: 0xc9f7, data:[0x41])
    z80.af().ld(value: 0x8310)
    z80.bc().ld(value: 0xfa01)
    z80.de().ld(value: 0x6c69)
    z80.hl().ld(value: 0x252a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5291)
    z80.iy().ld(value: 0xc9e0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8310)
    XCTAssert(z80.bc().value() == 0xfa01)
    XCTAssert(z80.de().value() == 0x6c69)
    XCTAssert(z80.hl().value() == 0x252a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5291)
    XCTAssert(z80.iy().value() == 0xc9e0)
    XCTAssert(z80.fetchRam(location: 0xc9f7) == 0x49)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbdf() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x93,0xdf])
    loadRam(location: 0xea56, data:[0xef])
    z80.af().ld(value: 0x780d)
    z80.bc().ld(value: 0xa722)
    z80.de().ld(value: 0xe78e)
    z80.hl().ld(value: 0x50ba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9d67)
    z80.iy().ld(value: 0xeac3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xef0d)
    XCTAssert(z80.bc().value() == 0xa722)
    XCTAssert(z80.de().value() == 0xe78e)
    XCTAssert(z80.hl().value() == 0x50ba)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9d67)
    XCTAssert(z80.iy().value() == 0xeac3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x56,0xe0])
    loadRam(location: 0x155d, data:[0xb9])
    z80.af().ld(value: 0x10ef)
    z80.bc().ld(value: 0x4101)
    z80.de().ld(value: 0x2ca5)
    z80.hl().ld(value: 0xf752)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4747)
    z80.iy().ld(value: 0x1507)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x10ef)
    XCTAssert(z80.bc().value() == 0xb901)
    XCTAssert(z80.de().value() == 0x2ca5)
    XCTAssert(z80.hl().value() == 0xf752)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4747)
    XCTAssert(z80.iy().value() == 0x1507)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd1,0xe1])
    loadRam(location: 0x0dde, data:[0x16])
    z80.af().ld(value: 0xe4cb)
    z80.bc().ld(value: 0x6f72)
    z80.de().ld(value: 0x1c11)
    z80.hl().ld(value: 0x1426)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x189b)
    z80.iy().ld(value: 0x0e0d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe4cb)
    XCTAssert(z80.bc().value() == 0x6f16)
    XCTAssert(z80.de().value() == 0x1c11)
    XCTAssert(z80.hl().value() == 0x1426)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x189b)
    XCTAssert(z80.iy().value() == 0x0e0d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x50,0xe2])
    loadRam(location: 0xe4ec, data:[0xc2])
    z80.af().ld(value: 0x11a9)
    z80.bc().ld(value: 0xbae8)
    z80.de().ld(value: 0x938b)
    z80.hl().ld(value: 0xbac4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd8ed)
    z80.iy().ld(value: 0xe49c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x11a9)
    XCTAssert(z80.bc().value() == 0xbae8)
    XCTAssert(z80.de().value() == 0xd28b)
    XCTAssert(z80.hl().value() == 0xbac4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd8ed)
    XCTAssert(z80.iy().value() == 0xe49c)
    XCTAssert(z80.fetchRam(location: 0xe4ec) == 0xd2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xca,0xe3])
    loadRam(location: 0xad72, data:[0xba])
    z80.af().ld(value: 0x8832)
    z80.bc().ld(value: 0x952b)
    z80.de().ld(value: 0x02b2)
    z80.hl().ld(value: 0x26ef)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfb55)
    z80.iy().ld(value: 0xada8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8832)
    XCTAssert(z80.bc().value() == 0x952b)
    XCTAssert(z80.de().value() == 0x02ba)
    XCTAssert(z80.hl().value() == 0x26ef)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfb55)
    XCTAssert(z80.iy().value() == 0xada8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x62,0xe4])
    loadRam(location: 0x54d6, data:[0x7b])
    z80.af().ld(value: 0x3989)
    z80.bc().ld(value: 0x4142)
    z80.de().ld(value: 0x89e2)
    z80.hl().ld(value: 0x785b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0bf7)
    z80.iy().ld(value: 0x5474)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3989)
    XCTAssert(z80.bc().value() == 0x4142)
    XCTAssert(z80.de().value() == 0x89e2)
    XCTAssert(z80.hl().value() == 0x7b5b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0bf7)
    XCTAssert(z80.iy().value() == 0x5474)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xda,0xe5])
    loadRam(location: 0xa507, data:[0x4c])
    z80.af().ld(value: 0xe5c5)
    z80.bc().ld(value: 0xb86d)
    z80.de().ld(value: 0x41bb)
    z80.hl().ld(value: 0x315e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1a78)
    z80.iy().ld(value: 0xa52d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe5c5)
    XCTAssert(z80.bc().value() == 0xb86d)
    XCTAssert(z80.de().value() == 0x41bb)
    XCTAssert(z80.hl().value() == 0x315c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1a78)
    XCTAssert(z80.iy().value() == 0xa52d)
    XCTAssert(z80.fetchRam(location: 0xa507) == 0x5c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x76,0xe6])
    loadRam(location: 0x8b7c, data:[0x45])
    z80.af().ld(value: 0xfd89)
    z80.bc().ld(value: 0xd888)
    z80.de().ld(value: 0x1e2f)
    z80.hl().ld(value: 0xddf5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x42f5)
    z80.iy().ld(value: 0x8b06)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xfd89)
    XCTAssert(z80.bc().value() == 0xd888)
    XCTAssert(z80.de().value() == 0x1e2f)
    XCTAssert(z80.hl().value() == 0xddf5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x42f5)
    XCTAssert(z80.iy().value() == 0x8b06)
    XCTAssert(z80.fetchRam(location: 0x8b7c) == 0x55)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x11,0xe7])
    loadRam(location: 0xb5a8, data:[0xa6])
    z80.af().ld(value: 0x2025)
    z80.bc().ld(value: 0xd3e9)
    z80.de().ld(value: 0xd4b6)
    z80.hl().ld(value: 0xaa30)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x88bd)
    z80.iy().ld(value: 0xb597)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb625)
    XCTAssert(z80.bc().value() == 0xd3e9)
    XCTAssert(z80.de().value() == 0xd4b6)
    XCTAssert(z80.hl().value() == 0xaa30)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x88bd)
    XCTAssert(z80.iy().value() == 0xb597)
    XCTAssert(z80.fetchRam(location: 0xb5a8) == 0xb6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xed,0xe8])
    loadRam(location: 0x0a64, data:[0xd0])
    z80.af().ld(value: 0x514d)
    z80.bc().ld(value: 0xc2ab)
    z80.de().ld(value: 0x37b5)
    z80.hl().ld(value: 0x57de)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa4ec)
    z80.iy().ld(value: 0x0a77)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x514d)
    XCTAssert(z80.bc().value() == 0xf0ab)
    XCTAssert(z80.de().value() == 0x37b5)
    XCTAssert(z80.hl().value() == 0x57de)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa4ec)
    XCTAssert(z80.iy().value() == 0x0a77)
    XCTAssert(z80.fetchRam(location: 0x0a64) == 0xf0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbe9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x35,0xe9])
    loadRam(location: 0xa883, data:[0x2f])
    z80.af().ld(value: 0x974e)
    z80.bc().ld(value: 0xd28e)
    z80.de().ld(value: 0xd5cb)
    z80.hl().ld(value: 0x6bd4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x158a)
    z80.iy().ld(value: 0xa84e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x974e)
    XCTAssert(z80.bc().value() == 0xd22f)
    XCTAssert(z80.de().value() == 0xd5cb)
    XCTAssert(z80.hl().value() == 0x6bd4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x158a)
    XCTAssert(z80.iy().value() == 0xa84e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbea() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x93,0xea])
    loadRam(location: 0x7526, data:[0x1b])
    z80.af().ld(value: 0x3ef4)
    z80.bc().ld(value: 0x3fc6)
    z80.de().ld(value: 0x4a44)
    z80.hl().ld(value: 0xe9a4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc877)
    z80.iy().ld(value: 0x7593)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3ef4)
    XCTAssert(z80.bc().value() == 0x3fc6)
    XCTAssert(z80.de().value() == 0x3b44)
    XCTAssert(z80.hl().value() == 0xe9a4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc877)
    XCTAssert(z80.iy().value() == 0x7593)
    XCTAssert(z80.fetchRam(location: 0x7526) == 0x3b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbeb() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd0,0xeb])
    loadRam(location: 0x23e1, data:[0x47])
    z80.af().ld(value: 0x798f)
    z80.bc().ld(value: 0x5e9b)
    z80.de().ld(value: 0x940e)
    z80.hl().ld(value: 0x2e52)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd6ad)
    z80.iy().ld(value: 0x2411)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x798f)
    XCTAssert(z80.bc().value() == 0x5e9b)
    XCTAssert(z80.de().value() == 0x9467)
    XCTAssert(z80.hl().value() == 0x2e52)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd6ad)
    XCTAssert(z80.iy().value() == 0x2411)
    XCTAssert(z80.fetchRam(location: 0x23e1) == 0x67)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbec() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf3,0xec])
    loadRam(location: 0xd2de, data:[0x49])
    z80.af().ld(value: 0x38a4)
    z80.bc().ld(value: 0x07c0)
    z80.de().ld(value: 0x6cee)
    z80.hl().ld(value: 0xe715)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf160)
    z80.iy().ld(value: 0xd2eb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x38a4)
    XCTAssert(z80.bc().value() == 0x07c0)
    XCTAssert(z80.de().value() == 0x6cee)
    XCTAssert(z80.hl().value() == 0x6915)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf160)
    XCTAssert(z80.iy().value() == 0xd2eb)
    XCTAssert(z80.fetchRam(location: 0xd2de) == 0x69)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbed() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x58,0xed])
    loadRam(location: 0x0f03, data:[0x10])
    z80.af().ld(value: 0xe0bc)
    z80.bc().ld(value: 0x70c1)
    z80.de().ld(value: 0xde35)
    z80.hl().ld(value: 0x81c5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd57f)
    z80.iy().ld(value: 0x0eab)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe0bc)
    XCTAssert(z80.bc().value() == 0x70c1)
    XCTAssert(z80.de().value() == 0xde35)
    XCTAssert(z80.hl().value() == 0x8130)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd57f)
    XCTAssert(z80.iy().value() == 0x0eab)
    XCTAssert(z80.fetchRam(location: 0x0f03) == 0x30)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbee() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x02,0xee])
    loadRam(location: 0x42be, data:[0xd0])
    z80.af().ld(value: 0x5fcb)
    z80.bc().ld(value: 0x9007)
    z80.de().ld(value: 0x1736)
    z80.hl().ld(value: 0xaca8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4bab)
    z80.iy().ld(value: 0x42bc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5fcb)
    XCTAssert(z80.bc().value() == 0x9007)
    XCTAssert(z80.de().value() == 0x1736)
    XCTAssert(z80.hl().value() == 0xaca8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4bab)
    XCTAssert(z80.iy().value() == 0x42bc)
    XCTAssert(z80.fetchRam(location: 0x42be) == 0xf0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbef() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x58,0xef])
    loadRam(location: 0x22ca, data:[0x09])
    z80.af().ld(value: 0x4ee3)
    z80.bc().ld(value: 0xd344)
    z80.de().ld(value: 0xcb5b)
    z80.hl().ld(value: 0xaeb5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xde5f)
    z80.iy().ld(value: 0x2272)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x29e3)
    XCTAssert(z80.bc().value() == 0xd344)
    XCTAssert(z80.de().value() == 0xcb5b)
    XCTAssert(z80.hl().value() == 0xaeb5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xde5f)
    XCTAssert(z80.iy().value() == 0x2272)
    XCTAssert(z80.fetchRam(location: 0x22ca) == 0x29)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf0() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x45,0xf0])
    loadRam(location: 0xeee3, data:[0x2c])
    z80.af().ld(value: 0x1080)
    z80.bc().ld(value: 0xb270)
    z80.de().ld(value: 0x1b5b)
    z80.hl().ld(value: 0xa9b7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe89d)
    z80.iy().ld(value: 0xee9e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1080)
    XCTAssert(z80.bc().value() == 0x6c70)
    XCTAssert(z80.de().value() == 0x1b5b)
    XCTAssert(z80.hl().value() == 0xa9b7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe89d)
    XCTAssert(z80.iy().value() == 0xee9e)
    XCTAssert(z80.fetchRam(location: 0xeee3) == 0x6c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf1() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2f,0xf1])
    loadRam(location: 0x47b2, data:[0xdc])
    z80.af().ld(value: 0x1702)
    z80.bc().ld(value: 0xc43b)
    z80.de().ld(value: 0xd138)
    z80.hl().ld(value: 0x316f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8067)
    z80.iy().ld(value: 0x4783)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1702)
    XCTAssert(z80.bc().value() == 0xc4dc)
    XCTAssert(z80.de().value() == 0xd138)
    XCTAssert(z80.hl().value() == 0x316f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8067)
    XCTAssert(z80.iy().value() == 0x4783)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf2() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2c,0xf2])
    loadRam(location: 0xeac3, data:[0x5e])
    z80.af().ld(value: 0x732a)
    z80.bc().ld(value: 0x4cd1)
    z80.de().ld(value: 0x77fe)
    z80.hl().ld(value: 0x4814)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x42f1)
    z80.iy().ld(value: 0xea97)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x732a)
    XCTAssert(z80.bc().value() == 0x4cd1)
    XCTAssert(z80.de().value() == 0x5efe)
    XCTAssert(z80.hl().value() == 0x4814)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x42f1)
    XCTAssert(z80.iy().value() == 0xea97)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf3() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x38,0xf3])
    loadRam(location: 0x7dc8, data:[0x0c])
    z80.af().ld(value: 0x6b97)
    z80.bc().ld(value: 0x59d3)
    z80.de().ld(value: 0xf546)
    z80.hl().ld(value: 0x7530)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6670)
    z80.iy().ld(value: 0x7d90)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6b97)
    XCTAssert(z80.bc().value() == 0x59d3)
    XCTAssert(z80.de().value() == 0xf54c)
    XCTAssert(z80.hl().value() == 0x7530)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6670)
    XCTAssert(z80.iy().value() == 0x7d90)
    XCTAssert(z80.fetchRam(location: 0x7dc8) == 0x4c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf4() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd0,0xf4])
    loadRam(location: 0x306c, data:[0x0e])
    z80.af().ld(value: 0x7af0)
    z80.bc().ld(value: 0xa81f)
    z80.de().ld(value: 0x5d3a)
    z80.hl().ld(value: 0x799b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe12b)
    z80.iy().ld(value: 0x309c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7af0)
    XCTAssert(z80.bc().value() == 0xa81f)
    XCTAssert(z80.de().value() == 0x5d3a)
    XCTAssert(z80.hl().value() == 0x4e9b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe12b)
    XCTAssert(z80.iy().value() == 0x309c)
    XCTAssert(z80.fetchRam(location: 0x306c) == 0x4e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf5() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x55,0xf5])
    loadRam(location: 0x6b74, data:[0xf8])
    z80.af().ld(value: 0x1370)
    z80.bc().ld(value: 0xf6b2)
    z80.de().ld(value: 0xaaa2)
    z80.hl().ld(value: 0x7f0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc9f6)
    z80.iy().ld(value: 0x6b1f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1370)
    XCTAssert(z80.bc().value() == 0xf6b2)
    XCTAssert(z80.de().value() == 0xaaa2)
    XCTAssert(z80.hl().value() == 0x7ff8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc9f6)
    XCTAssert(z80.iy().value() == 0x6b1f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf6() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x56,0xf6])
    loadRam(location: 0xc670, data:[0x5d])
    z80.af().ld(value: 0x7c43)
    z80.bc().ld(value: 0xfcd1)
    z80.de().ld(value: 0x34bd)
    z80.hl().ld(value: 0xf4ab)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xef33)
    z80.iy().ld(value: 0xc61a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7c43)
    XCTAssert(z80.bc().value() == 0xfcd1)
    XCTAssert(z80.de().value() == 0x34bd)
    XCTAssert(z80.hl().value() == 0xf4ab)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xef33)
    XCTAssert(z80.iy().value() == 0xc61a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf7() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9e,0xf7])
    loadRam(location: 0x5727, data:[0x66])
    z80.af().ld(value: 0xe6da)
    z80.bc().ld(value: 0x231a)
    z80.de().ld(value: 0x7bb1)
    z80.hl().ld(value: 0x800d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe37e)
    z80.iy().ld(value: 0x5789)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x66da)
    XCTAssert(z80.bc().value() == 0x231a)
    XCTAssert(z80.de().value() == 0x7bb1)
    XCTAssert(z80.hl().value() == 0x800d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe37e)
    XCTAssert(z80.iy().value() == 0x5789)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf8() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x54,0xf8])
    loadRam(location: 0xdece, data:[0x7a])
    z80.af().ld(value: 0xfa29)
    z80.bc().ld(value: 0xee74)
    z80.de().ld(value: 0xd7c4)
    z80.hl().ld(value: 0xafaf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x512c)
    z80.iy().ld(value: 0xde7a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xfa29)
    XCTAssert(z80.bc().value() == 0xfa74)
    XCTAssert(z80.de().value() == 0xd7c4)
    XCTAssert(z80.hl().value() == 0xafaf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x512c)
    XCTAssert(z80.iy().value() == 0xde7a)
    XCTAssert(z80.fetchRam(location: 0xdece) == 0xfa)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbf9() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x30,0xf9])
    loadRam(location: 0x9a13, data:[0xc6])
    z80.af().ld(value: 0x4662)
    z80.bc().ld(value: 0xa71b)
    z80.de().ld(value: 0x5065)
    z80.hl().ld(value: 0xed06)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x279e)
    z80.iy().ld(value: 0x99e3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4662)
    XCTAssert(z80.bc().value() == 0xa7c6)
    XCTAssert(z80.de().value() == 0x5065)
    XCTAssert(z80.hl().value() == 0xed06)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x279e)
    XCTAssert(z80.iy().value() == 0x99e3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbfa() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x09,0xfa])
    loadRam(location: 0xbd82, data:[0xf4])
    z80.af().ld(value: 0x9426)
    z80.bc().ld(value: 0x53ec)
    z80.de().ld(value: 0x5016)
    z80.hl().ld(value: 0x6c99)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8b99)
    z80.iy().ld(value: 0xbd79)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9426)
    XCTAssert(z80.bc().value() == 0x53ec)
    XCTAssert(z80.de().value() == 0xf416)
    XCTAssert(z80.hl().value() == 0x6c99)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8b99)
    XCTAssert(z80.iy().value() == 0xbd79)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbfb() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xba,0xfb])
    loadRam(location: 0xf82f, data:[0xed])
    z80.af().ld(value: 0x5343)
    z80.bc().ld(value: 0xb212)
    z80.de().ld(value: 0x09ca)
    z80.hl().ld(value: 0xe3c6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcd2b)
    z80.iy().ld(value: 0xf875)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5343)
    XCTAssert(z80.bc().value() == 0xb212)
    XCTAssert(z80.de().value() == 0x09ed)
    XCTAssert(z80.hl().value() == 0xe3c6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcd2b)
    XCTAssert(z80.iy().value() == 0xf875)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbfc() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x56,0xfc])
    loadRam(location: 0x6679, data:[0x65])
    z80.af().ld(value: 0x0965)
    z80.bc().ld(value: 0x4392)
    z80.de().ld(value: 0xca25)
    z80.hl().ld(value: 0x2baa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf023)
    z80.iy().ld(value: 0x6623)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0965)
    XCTAssert(z80.bc().value() == 0x4392)
    XCTAssert(z80.de().value() == 0xca25)
    XCTAssert(z80.hl().value() == 0xe5aa)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf023)
    XCTAssert(z80.iy().value() == 0x6623)
    XCTAssert(z80.fetchRam(location: 0x6679) == 0xe5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbfd() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x25,0xfd])
    loadRam(location: 0x5d50, data:[0x27])
    z80.af().ld(value: 0x1751)
    z80.bc().ld(value: 0x233c)
    z80.de().ld(value: 0x6214)
    z80.hl().ld(value: 0xd119)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc415)
    z80.iy().ld(value: 0x5d2b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1751)
    XCTAssert(z80.bc().value() == 0x233c)
    XCTAssert(z80.de().value() == 0x6214)
    XCTAssert(z80.hl().value() == 0xd1a7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc415)
    XCTAssert(z80.iy().value() == 0x5d2b)
    XCTAssert(z80.fetchRam(location: 0x5d50) == 0xa7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbfe() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x88,0xfe])
    loadRam(location: 0x4dd7, data:[0x4a])
    z80.af().ld(value: 0xb4cf)
    z80.bc().ld(value: 0x5639)
    z80.de().ld(value: 0x677b)
    z80.hl().ld(value: 0x0ca2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xddc5)
    z80.iy().ld(value: 0x4e4f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb4cf)
    XCTAssert(z80.bc().value() == 0x5639)
    XCTAssert(z80.de().value() == 0x677b)
    XCTAssert(z80.hl().value() == 0x0ca2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xddc5)
    XCTAssert(z80.iy().value() == 0x4e4f)
    XCTAssert(z80.fetchRam(location: 0x4dd7) == 0xca)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcbff() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe4,0xff])
    loadRam(location: 0x2ad1, data:[0x97])
    z80.af().ld(value: 0xf151)
    z80.bc().ld(value: 0x13da)
    z80.de().ld(value: 0x7c56)
    z80.hl().ld(value: 0xf025)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2b36)
    z80.iy().ld(value: 0x2aed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9751)
    XCTAssert(z80.bc().value() == 0x13da)
    XCTAssert(z80.de().value() == 0x7c56)
    XCTAssert(z80.hl().value() == 0xf025)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2b36)
    XCTAssert(z80.iy().value() == 0x2aed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

}
