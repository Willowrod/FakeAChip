//
//  allTestsP_CB80toff.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_CB80toff: BaseTest {

    
    
    func testcb80() throws {
    loadRam(location: 0x0000, data:[0xcb,0x80])
    loadRam(location: 0xa706, data:[0x0a])
    z80.af().ld(value: 0x8f00)
    z80.bc().ld(value: 0x702f)
    z80.de().ld(value: 0x17bd)
    z80.hl().ld(value: 0xa706)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8f00)
    XCTAssert(z80.bc().value() == 0x702f)
    XCTAssert(z80.de().value() == 0x17bd)
    XCTAssert(z80.hl().value() == 0xa706)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb81() throws {
    loadRam(location: 0x0000, data:[0xcb,0x81])
    loadRam(location: 0x6616, data:[0x74])
    z80.af().ld(value: 0xae00)
    z80.bc().ld(value: 0x947f)
    z80.de().ld(value: 0x7153)
    z80.hl().ld(value: 0x6616)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xae00)
    XCTAssert(z80.bc().value() == 0x947e)
    XCTAssert(z80.de().value() == 0x7153)
    XCTAssert(z80.hl().value() == 0x6616)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb82() throws {
    loadRam(location: 0x0000, data:[0xcb,0x82])
    loadRam(location: 0x4572, data:[0x2f])
    z80.af().ld(value: 0x8100)
    z80.bc().ld(value: 0xbed2)
    z80.de().ld(value: 0xc719)
    z80.hl().ld(value: 0x4572)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8100)
    XCTAssert(z80.bc().value() == 0xbed2)
    XCTAssert(z80.de().value() == 0xc619)
    XCTAssert(z80.hl().value() == 0x4572)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb83() throws {
    loadRam(location: 0x0000, data:[0xcb,0x83])
    loadRam(location: 0xae9a, data:[0x16])
    z80.af().ld(value: 0xe600)
    z80.bc().ld(value: 0x63a2)
    z80.de().ld(value: 0xccf7)
    z80.hl().ld(value: 0xae9a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe600)
    XCTAssert(z80.bc().value() == 0x63a2)
    XCTAssert(z80.de().value() == 0xccf6)
    XCTAssert(z80.hl().value() == 0xae9a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb84() throws {
    loadRam(location: 0x0000, data:[0xcb,0x84])
    loadRam(location: 0xd6c0, data:[0x72])
    z80.af().ld(value: 0xce00)
    z80.bc().ld(value: 0xe0cc)
    z80.de().ld(value: 0xd305)
    z80.hl().ld(value: 0xd6c0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xce00)
    XCTAssert(z80.bc().value() == 0xe0cc)
    XCTAssert(z80.de().value() == 0xd305)
    XCTAssert(z80.hl().value() == 0xd6c0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb85() throws {
    loadRam(location: 0x0000, data:[0xcb,0x85])
    loadRam(location: 0xdda0, data:[0x8a])
    z80.af().ld(value: 0xf300)
    z80.bc().ld(value: 0xed79)
    z80.de().ld(value: 0x9db7)
    z80.hl().ld(value: 0xdda0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf300)
    XCTAssert(z80.bc().value() == 0xed79)
    XCTAssert(z80.de().value() == 0x9db7)
    XCTAssert(z80.hl().value() == 0xdda0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb86() throws {
    loadRam(location: 0x0000, data:[0xcb,0x86])
    loadRam(location: 0x1b48, data:[0x62])
    z80.af().ld(value: 0x2a00)
    z80.bc().ld(value: 0xb0b9)
    z80.de().ld(value: 0x9426)
    z80.hl().ld(value: 0x1b48)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2a00)
    XCTAssert(z80.bc().value() == 0xb0b9)
    XCTAssert(z80.de().value() == 0x9426)
    XCTAssert(z80.hl().value() == 0x1b48)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb87() throws {
    loadRam(location: 0x0000, data:[0xcb,0x87])
    loadRam(location: 0xdfc5, data:[0xde])
    z80.af().ld(value: 0x1100)
    z80.bc().ld(value: 0x86dc)
    z80.de().ld(value: 0x1798)
    z80.hl().ld(value: 0xdfc5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1000)
    XCTAssert(z80.bc().value() == 0x86dc)
    XCTAssert(z80.de().value() == 0x1798)
    XCTAssert(z80.hl().value() == 0xdfc5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb88() throws {
    loadRam(location: 0x0000, data:[0xcb,0x88])
    loadRam(location: 0x674d, data:[0x5f])
    z80.af().ld(value: 0xe300)
    z80.bc().ld(value: 0x8a21)
    z80.de().ld(value: 0xe33e)
    z80.hl().ld(value: 0x674d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe300)
    XCTAssert(z80.bc().value() == 0x8821)
    XCTAssert(z80.de().value() == 0xe33e)
    XCTAssert(z80.hl().value() == 0x674d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb89() throws {
    loadRam(location: 0x0000, data:[0xcb,0x89])
    loadRam(location: 0x1bd7, data:[0xf2])
    z80.af().ld(value: 0x6000)
    z80.bc().ld(value: 0xd186)
    z80.de().ld(value: 0xc5b6)
    z80.hl().ld(value: 0x1bd7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6000)
    XCTAssert(z80.bc().value() == 0xd184)
    XCTAssert(z80.de().value() == 0xc5b6)
    XCTAssert(z80.hl().value() == 0x1bd7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8a])
    loadRam(location: 0xb98e, data:[0x2f])
    z80.af().ld(value: 0x3e00)
    z80.bc().ld(value: 0x5fcd)
    z80.de().ld(value: 0x0b38)
    z80.hl().ld(value: 0xb98e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3e00)
    XCTAssert(z80.bc().value() == 0x5fcd)
    XCTAssert(z80.de().value() == 0x938)
    XCTAssert(z80.hl().value() == 0xb98e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8b])
    loadRam(location: 0x4a07, data:[0x3f])
    z80.af().ld(value: 0x6500)
    z80.bc().ld(value: 0x040e)
    z80.de().ld(value: 0x103f)
    z80.hl().ld(value: 0x4a07)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6500)
    XCTAssert(z80.bc().value() == 0x040e)
    XCTAssert(z80.de().value() == 0x103d)
    XCTAssert(z80.hl().value() == 0x4a07)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8c])
    loadRam(location: 0xdaef, data:[0x0c])
    z80.af().ld(value: 0xf800)
    z80.bc().ld(value: 0x6d27)
    z80.de().ld(value: 0x9bdf)
    z80.hl().ld(value: 0xdaef)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf800)
    XCTAssert(z80.bc().value() == 0x6d27)
    XCTAssert(z80.de().value() == 0x9bdf)
    XCTAssert(z80.hl().value() == 0xd8ef)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8d])
    loadRam(location: 0xbd72, data:[0x13])
    z80.af().ld(value: 0x3e00)
    z80.bc().ld(value: 0x5469)
    z80.de().ld(value: 0x2c28)
    z80.hl().ld(value: 0xbd72)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3e00)
    XCTAssert(z80.bc().value() == 0x5469)
    XCTAssert(z80.de().value() == 0x2c28)
    XCTAssert(z80.hl().value() == 0xbd70)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8e])
    loadRam(location: 0x63a7, data:[0xd4])
    z80.af().ld(value: 0x1f00)
    z80.bc().ld(value: 0x140b)
    z80.de().ld(value: 0xb492)
    z80.hl().ld(value: 0x63a7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1f00)
    XCTAssert(z80.bc().value() == 0x140b)
    XCTAssert(z80.de().value() == 0xb492)
    XCTAssert(z80.hl().value() == 0x63a7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb8f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x8f])
    loadRam(location: 0x1c1a, data:[0x37])
    z80.af().ld(value: 0x2500)
    z80.bc().ld(value: 0xc522)
    z80.de().ld(value: 0xca46)
    z80.hl().ld(value: 0x1c1a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2500)
    XCTAssert(z80.bc().value() == 0xc522)
    XCTAssert(z80.de().value() == 0xca46)
    XCTAssert(z80.hl().value() == 0x1c1a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb90() throws {
    loadRam(location: 0x0000, data:[0xcb,0x90])
    loadRam(location: 0xc73c, data:[0xa2])
    z80.af().ld(value: 0x5700)
    z80.bc().ld(value: 0x595c)
    z80.de().ld(value: 0x4f0a)
    z80.hl().ld(value: 0xc73c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5700)
    XCTAssert(z80.bc().value() == 0x595c)
    XCTAssert(z80.de().value() == 0x4f0a)
    XCTAssert(z80.hl().value() == 0xc73c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb91() throws {
    loadRam(location: 0x0000, data:[0xcb,0x91])
    loadRam(location: 0x97e0, data:[0x5e])
    z80.af().ld(value: 0x5e00)
    z80.bc().ld(value: 0x8f26)
    z80.de().ld(value: 0xa735)
    z80.hl().ld(value: 0x97e0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5e00)
    XCTAssert(z80.bc().value() == 0x8f22)
    XCTAssert(z80.de().value() == 0xa735)
    XCTAssert(z80.hl().value() == 0x97e0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb92() throws {
    loadRam(location: 0x0000, data:[0xcb,0x92])
    loadRam(location: 0x83d0, data:[0x2b])
    z80.af().ld(value: 0x3300)
    z80.bc().ld(value: 0x7d9f)
    z80.de().ld(value: 0x87d0)
    z80.hl().ld(value: 0x83d0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3300)
    XCTAssert(z80.bc().value() == 0x7d9f)
    XCTAssert(z80.de().value() == 0x83d0)
    XCTAssert(z80.hl().value() == 0x83d0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb93() throws {
    loadRam(location: 0x0000, data:[0xcb,0x93])
    loadRam(location: 0x2234, data:[0xa0])
    z80.af().ld(value: 0xc200)
    z80.bc().ld(value: 0x4e05)
    z80.de().ld(value: 0xb3f8)
    z80.hl().ld(value: 0x2234)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc200)
    XCTAssert(z80.bc().value() == 0x4e05)
    XCTAssert(z80.de().value() == 0xb3f8)
    XCTAssert(z80.hl().value() == 0x2234)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb94() throws {
    loadRam(location: 0x0000, data:[0xcb,0x94])
    loadRam(location: 0xd6a6, data:[0xd0])
    z80.af().ld(value: 0xee00)
    z80.bc().ld(value: 0x8f4b)
    z80.de().ld(value: 0x2831)
    z80.hl().ld(value: 0xd6a6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xee00)
    XCTAssert(z80.bc().value() == 0x8f4b)
    XCTAssert(z80.de().value() == 0x2831)
    XCTAssert(z80.hl().value() == 0xd2a6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb95() throws {
    loadRam(location: 0x0000, data:[0xcb,0x95])
    loadRam(location: 0x36ff, data:[0xcd])
    z80.af().ld(value: 0x3c00)
    z80.bc().ld(value: 0x6af2)
    z80.de().ld(value: 0xb25d)
    z80.hl().ld(value: 0x36ff)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3c00)
    XCTAssert(z80.bc().value() == 0x6af2)
    XCTAssert(z80.de().value() == 0xb25d)
    XCTAssert(z80.hl().value() == 0x36fb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb96() throws {
    loadRam(location: 0x0000, data:[0xcb,0x96])
    loadRam(location: 0x3324, data:[0x21])
    z80.af().ld(value: 0x7600)
    z80.bc().ld(value: 0xb027)
    z80.de().ld(value: 0xd0a5)
    z80.hl().ld(value: 0x3324)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7600)
    XCTAssert(z80.bc().value() == 0xb027)
    XCTAssert(z80.de().value() == 0xd0a5)
    XCTAssert(z80.hl().value() == 0x3324)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb97() throws {
    loadRam(location: 0x0000, data:[0xcb,0x97])
    loadRam(location: 0x97bc, data:[0x75])
    z80.af().ld(value: 0x1600)
    z80.bc().ld(value: 0xad09)
    z80.de().ld(value: 0x7902)
    z80.hl().ld(value: 0x97bc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1200)
    XCTAssert(z80.bc().value() == 0xad09)
    XCTAssert(z80.de().value() == 0x7902)
    XCTAssert(z80.hl().value() == 0x97bc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb98() throws {
    loadRam(location: 0x0000, data:[0xcb,0x98])
    loadRam(location: 0x5d5e, data:[0xa4])
    z80.af().ld(value: 0x3400)
    z80.bc().ld(value: 0xb61c)
    z80.de().ld(value: 0x771d)
    z80.hl().ld(value: 0x5d5e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3400)
    XCTAssert(z80.bc().value() == 0xb61c)
    XCTAssert(z80.de().value() == 0x771d)
    XCTAssert(z80.hl().value() == 0x5d5e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb99() throws {
    loadRam(location: 0x0000, data:[0xcb,0x99])
    loadRam(location: 0x8bec, data:[0x0b])
    z80.af().ld(value: 0x5100)
    z80.bc().ld(value: 0x65be)
    z80.de().ld(value: 0x1359)
    z80.hl().ld(value: 0x8bec)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5100)
    XCTAssert(z80.bc().value() == 0x65b6)
    XCTAssert(z80.de().value() == 0x1359)
    XCTAssert(z80.hl().value() == 0x8bec)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9a])
    loadRam(location: 0xdcb2, data:[0x09])
    z80.af().ld(value: 0x6400)
    z80.bc().ld(value: 0x976d)
    z80.de().ld(value: 0x4c25)
    z80.hl().ld(value: 0xdcb2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6400)
    XCTAssert(z80.bc().value() == 0x976d)
    XCTAssert(z80.de().value() == 0x4425)
    XCTAssert(z80.hl().value() == 0xdcb2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9b])
    loadRam(location: 0x2bd6, data:[0xd3])
    z80.af().ld(value: 0xa100)
    z80.bc().ld(value: 0xb58a)
    z80.de().ld(value: 0xd264)
    z80.hl().ld(value: 0x2bd6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa100)
    XCTAssert(z80.bc().value() == 0xb58a)
    XCTAssert(z80.de().value() == 0xd264)
    XCTAssert(z80.hl().value() == 0x2bd6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9c])
    loadRam(location: 0xc7a0, data:[0x75])
    z80.af().ld(value: 0xd800)
    z80.bc().ld(value: 0x63d6)
    z80.de().ld(value: 0xac7b)
    z80.hl().ld(value: 0xc7a0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd800)
    XCTAssert(z80.bc().value() == 0x63d6)
    XCTAssert(z80.de().value() == 0xac7b)
    XCTAssert(z80.hl().value() == 0xc7a0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9d])
    loadRam(location: 0x0800, data:[0xcd])
    z80.af().ld(value: 0x0d00)
    z80.bc().ld(value: 0xd840)
    z80.de().ld(value: 0x0810)
    z80.hl().ld(value: 0x0800)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0d00)
    XCTAssert(z80.bc().value() == 0xd840)
    XCTAssert(z80.de().value() == 0x810)
    XCTAssert(z80.hl().value() == 0x800)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9e])
    loadRam(location: 0x3a65, data:[0x2a])
    z80.af().ld(value: 0x3b00)
    z80.bc().ld(value: 0xebbf)
    z80.de().ld(value: 0x9434)
    z80.hl().ld(value: 0x3a65)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3b00)
    XCTAssert(z80.bc().value() == 0xebbf)
    XCTAssert(z80.de().value() == 0x9434)
    XCTAssert(z80.hl().value() == 0x3a65)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x3a65) == 0x22)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb9f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x9f])
    loadRam(location: 0x72f6, data:[0x72])
    z80.af().ld(value: 0xb200)
    z80.bc().ld(value: 0xd1de)
    z80.de().ld(value: 0xf991)
    z80.hl().ld(value: 0x72f6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb200)
    XCTAssert(z80.bc().value() == 0xd1de)
    XCTAssert(z80.de().value() == 0xf991)
    XCTAssert(z80.hl().value() == 0x72f6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa0])
    loadRam(location: 0xc80d, data:[0xc0])
    z80.af().ld(value: 0xfa00)
    z80.bc().ld(value: 0xd669)
    z80.de().ld(value: 0x71e1)
    z80.hl().ld(value: 0xc80d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xfa00)
    XCTAssert(z80.bc().value() == 0xc669)
    XCTAssert(z80.de().value() == 0x71e1)
    XCTAssert(z80.hl().value() == 0xc80d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa1])
    loadRam(location: 0xd0ba, data:[0xbd])
    z80.af().ld(value: 0x8200)
    z80.bc().ld(value: 0x75e4)
    z80.de().ld(value: 0xa0de)
    z80.hl().ld(value: 0xd0ba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8200)
    XCTAssert(z80.bc().value() == 0x75e4)
    XCTAssert(z80.de().value() == 0xa0de)
    XCTAssert(z80.hl().value() == 0xd0ba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa2])
    loadRam(location: 0x6fc0, data:[0x61])
    z80.af().ld(value: 0xdd00)
    z80.bc().ld(value: 0x2b0d)
    z80.de().ld(value: 0x5554)
    z80.hl().ld(value: 0x6fc0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xdd00)
    XCTAssert(z80.bc().value() == 0x2b0d)
    XCTAssert(z80.de().value() == 0x4554)
    XCTAssert(z80.hl().value() == 0x6fc0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa3])
    loadRam(location: 0x6666, data:[0x8e])
    z80.af().ld(value: 0x2200)
    z80.bc().ld(value: 0x2f0d)
    z80.de().ld(value: 0x4d2c)
    z80.hl().ld(value: 0x6666)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2200)
    XCTAssert(z80.bc().value() == 0x2f0d)
    XCTAssert(z80.de().value() == 0x4d2c)
    XCTAssert(z80.hl().value() == 0x6666)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa4])
    loadRam(location: 0x8bb1, data:[0xbb])
    z80.af().ld(value: 0xd600)
    z80.bc().ld(value: 0xd8ed)
    z80.de().ld(value: 0x9cd4)
    z80.hl().ld(value: 0x8bb1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd600)
    XCTAssert(z80.bc().value() == 0xd8ed)
    XCTAssert(z80.de().value() == 0x9cd4)
    XCTAssert(z80.hl().value() == 0x8bb1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa5])
    loadRam(location: 0x88ca, data:[0x4f])
    z80.af().ld(value: 0xb400)
    z80.bc().ld(value: 0xb393)
    z80.de().ld(value: 0x3e42)
    z80.hl().ld(value: 0x88ca)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb400)
    XCTAssert(z80.bc().value() == 0xb393)
    XCTAssert(z80.de().value() == 0x3e42)
    XCTAssert(z80.hl().value() == 0x88ca)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa6])
    loadRam(location: 0xe70d, data:[0x27])
    z80.af().ld(value: 0x0a00)
    z80.bc().ld(value: 0x4c34)
    z80.de().ld(value: 0xf5a7)
    z80.hl().ld(value: 0xe70d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0a00)
    XCTAssert(z80.bc().value() == 0x4c34)
    XCTAssert(z80.de().value() == 0xf5a7)
    XCTAssert(z80.hl().value() == 0xe70d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa7])
    loadRam(location: 0xc77b, data:[0xff])
    z80.af().ld(value: 0x4500)
    z80.bc().ld(value: 0xaf61)
    z80.de().ld(value: 0x569a)
    z80.hl().ld(value: 0xc77b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x4500)
    XCTAssert(z80.bc().value() == 0xaf61)
    XCTAssert(z80.de().value() == 0x569a)
    XCTAssert(z80.hl().value() == 0xc77b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa8])
    loadRam(location: 0xc9e7, data:[0x46])
    z80.af().ld(value: 0x6400)
    z80.bc().ld(value: 0xf269)
    z80.de().ld(value: 0xbae4)
    z80.hl().ld(value: 0xc9e7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6400)
    XCTAssert(z80.bc().value() == 0xd269)
    XCTAssert(z80.de().value() == 0xbae4)
    XCTAssert(z80.hl().value() == 0xc9e7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcba9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xa9])
    loadRam(location: 0xce0b, data:[0x39])
    z80.af().ld(value: 0xe400)
    z80.bc().ld(value: 0x7ad4)
    z80.de().ld(value: 0xbf0a)
    z80.hl().ld(value: 0xce0b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe400)
    XCTAssert(z80.bc().value() == 0x7ad4)
    XCTAssert(z80.de().value() == 0xbf0a)
    XCTAssert(z80.hl().value() == 0xce0b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbaa() throws {
    loadRam(location: 0x0000, data:[0xcb,0xaa])
    loadRam(location: 0xfed5, data:[0xb0])
    z80.af().ld(value: 0xcd00)
    z80.bc().ld(value: 0xd249)
    z80.de().ld(value: 0x4159)
    z80.hl().ld(value: 0xfed5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xcd00)
    XCTAssert(z80.bc().value() == 0xd249)
    XCTAssert(z80.de().value() == 0x4159)
    XCTAssert(z80.hl().value() == 0xfed5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbab() throws {
    loadRam(location: 0x0000, data:[0xcb,0xab])
    loadRam(location: 0x0812, data:[0xf2])
    z80.af().ld(value: 0xac00)
    z80.bc().ld(value: 0x939a)
    z80.de().ld(value: 0x5d9b)
    z80.hl().ld(value: 0x0812)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xac00)
    XCTAssert(z80.bc().value() == 0x939a)
    XCTAssert(z80.de().value() == 0x5d9b)
    XCTAssert(z80.hl().value() == 0x812)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbac() throws {
    loadRam(location: 0x0000, data:[0xcb,0xac])
    loadRam(location: 0xffaa, data:[0x09])
    z80.af().ld(value: 0x2400)
    z80.bc().ld(value: 0x8a7d)
    z80.de().ld(value: 0x2cac)
    z80.hl().ld(value: 0xffaa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2400)
    XCTAssert(z80.bc().value() == 0x8a7d)
    XCTAssert(z80.de().value() == 0x2cac)
    XCTAssert(z80.hl().value() == 0xdfaa)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbad() throws {
    loadRam(location: 0x0000, data:[0xcb,0xad])
    loadRam(location: 0xae15, data:[0x30])
    z80.af().ld(value: 0x6f00)
    z80.bc().ld(value: 0x5ffb)
    z80.de().ld(value: 0x2360)
    z80.hl().ld(value: 0xae15)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6f00)
    XCTAssert(z80.bc().value() == 0x5ffb)
    XCTAssert(z80.de().value() == 0x2360)
    XCTAssert(z80.hl().value() == 0xae15)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbae() throws {
    loadRam(location: 0x0000, data:[0xcb,0xae])
    loadRam(location: 0x190e, data:[0x66])
    z80.af().ld(value: 0x5a00)
    z80.bc().ld(value: 0xaa17)
    z80.de().ld(value: 0x12f3)
    z80.hl().ld(value: 0x190e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5a00)
    XCTAssert(z80.bc().value() == 0xaa17)
    XCTAssert(z80.de().value() == 0x12f3)
    XCTAssert(z80.hl().value() == 0x190e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x190e) == 0x46)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbaf() throws {
    loadRam(location: 0x0000, data:[0xcb,0xaf])
    loadRam(location: 0x5877, data:[0x62])
    z80.af().ld(value: 0xfc00)
    z80.bc().ld(value: 0xbb3f)
    z80.de().ld(value: 0x8bb6)
    z80.hl().ld(value: 0x5877)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xdc00)
    XCTAssert(z80.bc().value() == 0xbb3f)
    XCTAssert(z80.de().value() == 0x8bb6)
    XCTAssert(z80.hl().value() == 0x5877)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb0])
    loadRam(location: 0xc3ba, data:[0x4c])
    z80.af().ld(value: 0xb900)
    z80.bc().ld(value: 0x7a79)
    z80.de().ld(value: 0x1aaa)
    z80.hl().ld(value: 0xc3ba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb900)
    XCTAssert(z80.bc().value() == 0x3a79)
    XCTAssert(z80.de().value() == 0x1aaa)
    XCTAssert(z80.hl().value() == 0xc3ba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb1])
    loadRam(location: 0x1190, data:[0xe3])
    z80.af().ld(value: 0x4900)
    z80.bc().ld(value: 0x63e4)
    z80.de().ld(value: 0xa544)
    z80.hl().ld(value: 0x1190)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x4900)
    XCTAssert(z80.bc().value() == 0x63a4)
    XCTAssert(z80.de().value() == 0xa544)
    XCTAssert(z80.hl().value() == 0x1190)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb2])
    loadRam(location: 0x6ff5, data:[0x04])
    z80.af().ld(value: 0x4d00)
    z80.bc().ld(value: 0x2b03)
    z80.de().ld(value: 0x6b23)
    z80.hl().ld(value: 0x6ff5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x4d00)
    XCTAssert(z80.bc().value() == 0x2b03)
    XCTAssert(z80.de().value() == 0x2b23)
    XCTAssert(z80.hl().value() == 0x6ff5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb3])
    loadRam(location: 0x5cb1, data:[0x43])
    z80.af().ld(value: 0x8700)
    z80.bc().ld(value: 0x857a)
    z80.de().ld(value: 0xe98b)
    z80.hl().ld(value: 0x5cb1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8700)
    XCTAssert(z80.bc().value() == 0x857a)
    XCTAssert(z80.de().value() == 0xe98b)
    XCTAssert(z80.hl().value() == 0x5cb1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb4])
    loadRam(location: 0xe1bb, data:[0x78])
    z80.af().ld(value: 0x2b00)
    z80.bc().ld(value: 0xb73e)
    z80.de().ld(value: 0x79c9)
    z80.hl().ld(value: 0xe1bb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2b00)
    XCTAssert(z80.bc().value() == 0xb73e)
    XCTAssert(z80.de().value() == 0x79c9)
    XCTAssert(z80.hl().value() == 0xa1bb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb5])
    loadRam(location: 0x4bba, data:[0x70])
    z80.af().ld(value: 0x9b00)
    z80.bc().ld(value: 0xd879)
    z80.de().ld(value: 0x2ec9)
    z80.hl().ld(value: 0x4bba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9b00)
    XCTAssert(z80.bc().value() == 0xd879)
    XCTAssert(z80.de().value() == 0x2ec9)
    XCTAssert(z80.hl().value() == 0x4bba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb6])
    loadRam(location: 0x4fab, data:[0xa5])
    z80.af().ld(value: 0x8600)
    z80.bc().ld(value: 0x89bf)
    z80.de().ld(value: 0xde4a)
    z80.hl().ld(value: 0x4fab)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8600)
    XCTAssert(z80.bc().value() == 0x89bf)
    XCTAssert(z80.de().value() == 0xde4a)
    XCTAssert(z80.hl().value() == 0x4fab)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb7])
    loadRam(location: 0xd4a2, data:[0xf2])
    z80.af().ld(value: 0x2200)
    z80.bc().ld(value: 0xfb8a)
    z80.de().ld(value: 0x3d6e)
    z80.hl().ld(value: 0xd4a2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2200)
    XCTAssert(z80.bc().value() == 0xfb8a)
    XCTAssert(z80.de().value() == 0x3d6e)
    XCTAssert(z80.hl().value() == 0xd4a2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb8])
    loadRam(location: 0xd249, data:[0xc4])
    z80.af().ld(value: 0xd000)
    z80.bc().ld(value: 0x37c6)
    z80.de().ld(value: 0x225a)
    z80.hl().ld(value: 0xd249)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd000)
    XCTAssert(z80.bc().value() == 0x37c6)
    XCTAssert(z80.de().value() == 0x225a)
    XCTAssert(z80.hl().value() == 0xd249)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbb9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xb9])
    loadRam(location: 0x5dee, data:[0xcc])
    z80.af().ld(value: 0xa500)
    z80.bc().ld(value: 0x1b4a)
    z80.de().ld(value: 0xd584)
    z80.hl().ld(value: 0x5dee)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa500)
    XCTAssert(z80.bc().value() == 0x1b4a)
    XCTAssert(z80.de().value() == 0xd584)
    XCTAssert(z80.hl().value() == 0x5dee)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbba() throws {
    loadRam(location: 0x0000, data:[0xcb,0xba])
    loadRam(location: 0x34c9, data:[0xbc])
    z80.af().ld(value: 0x6300)
    z80.bc().ld(value: 0xa5fe)
    z80.de().ld(value: 0xf42b)
    z80.hl().ld(value: 0x34c9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6300)
    XCTAssert(z80.bc().value() == 0xa5fe)
    XCTAssert(z80.de().value() == 0x742b)
    XCTAssert(z80.hl().value() == 0x34c9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbbb() throws {
    loadRam(location: 0x0000, data:[0xcb,0xbb])
    loadRam(location: 0xcb30, data:[0xf4])
    z80.af().ld(value: 0x1200)
    z80.bc().ld(value: 0xf661)
    z80.de().ld(value: 0xaa4f)
    z80.hl().ld(value: 0xcb30)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1200)
    XCTAssert(z80.bc().value() == 0xf661)
    XCTAssert(z80.de().value() == 0xaa4f)
    XCTAssert(z80.hl().value() == 0xcb30)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbbc() throws {
    loadRam(location: 0x0000, data:[0xcb,0xbc])
    loadRam(location: 0x7b6e, data:[0x45])
    z80.af().ld(value: 0x9800)
    z80.bc().ld(value: 0xadc3)
    z80.de().ld(value: 0x0b29)
    z80.hl().ld(value: 0x7b6e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9800)
    XCTAssert(z80.bc().value() == 0xadc3)
    XCTAssert(z80.de().value() == 0x0b29)
    XCTAssert(z80.hl().value() == 0x7b6e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbbd() throws {
    loadRam(location: 0x0000, data:[0xcb,0xbd])
    loadRam(location: 0x10b8, data:[0x35])
    z80.af().ld(value: 0xd600)
    z80.bc().ld(value: 0xa6e1)
    z80.de().ld(value: 0x8813)
    z80.hl().ld(value: 0x10b8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd600)
    XCTAssert(z80.bc().value() == 0xa6e1)
    XCTAssert(z80.de().value() == 0x8813)
    XCTAssert(z80.hl().value() == 0x1038)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbbe() throws {
    loadRam(location: 0x0000, data:[0xcb,0xbe])
    loadRam(location: 0x77d5, data:[0xea])
    z80.af().ld(value: 0xca00)
    z80.bc().ld(value: 0xff64)
    z80.de().ld(value: 0x1218)
    z80.hl().ld(value: 0x77d5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xca00)
    XCTAssert(z80.bc().value() == 0xff64)
    XCTAssert(z80.de().value() == 0x1218)
    XCTAssert(z80.hl().value() == 0x77d5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x77d5) == 0x6a)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbbf() throws {
    loadRam(location: 0x0000, data:[0xcb,0xbf])
    loadRam(location: 0x15de, data:[0x1d])
    z80.af().ld(value: 0x6800)
    z80.bc().ld(value: 0x4845)
    z80.de().ld(value: 0x690a)
    z80.hl().ld(value: 0x15de)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6800)
    XCTAssert(z80.bc().value() == 0x4845)
    XCTAssert(z80.de().value() == 0x690a)
    XCTAssert(z80.hl().value() == 0x15de)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc0])
    loadRam(location: 0xb3a1, data:[0x5c])
    z80.af().ld(value: 0xe300)
    z80.bc().ld(value: 0xef71)
    z80.de().ld(value: 0xbffb)
    z80.hl().ld(value: 0xb3a1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe300)
    XCTAssert(z80.bc().value() == 0xef71)
    XCTAssert(z80.de().value() == 0xbffb)
    XCTAssert(z80.hl().value() == 0xb3a1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc1])
    loadRam(location: 0x3343, data:[0xaa])
    z80.af().ld(value: 0x3200)
    z80.bc().ld(value: 0x32a1)
    z80.de().ld(value: 0x59ab)
    z80.hl().ld(value: 0x3343)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3200)
    XCTAssert(z80.bc().value() == 0x32a1)
    XCTAssert(z80.de().value() == 0x59ab)
    XCTAssert(z80.hl().value() == 0x3343)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc2])
    loadRam(location: 0xe1f3, data:[0x14])
    z80.af().ld(value: 0xc700)
    z80.bc().ld(value: 0xb159)
    z80.de().ld(value: 0xc023)
    z80.hl().ld(value: 0xe1f3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc700)
    XCTAssert(z80.bc().value() == 0xb159)
    XCTAssert(z80.de().value() == 0xc123)
    XCTAssert(z80.hl().value() == 0xe1f3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc3])
    loadRam(location: 0x8f3a, data:[0x81])
    z80.af().ld(value: 0x0400)
    z80.bc().ld(value: 0xb463)
    z80.de().ld(value: 0xc211)
    z80.hl().ld(value: 0x8f3a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x400)
    XCTAssert(z80.bc().value() == 0xb463)
    XCTAssert(z80.de().value() == 0xc211)
    XCTAssert(z80.hl().value() == 0x8f3a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc4])
    loadRam(location: 0x5876, data:[0x9d])
    z80.af().ld(value: 0x7e00)
    z80.bc().ld(value: 0x545a)
    z80.de().ld(value: 0x6ecf)
    z80.hl().ld(value: 0x5876)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7e00)
    XCTAssert(z80.bc().value() == 0x545a)
    XCTAssert(z80.de().value() == 0x6ecf)
    XCTAssert(z80.hl().value() == 0x5976)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc5])
    loadRam(location: 0x4107, data:[0xcc])
    z80.af().ld(value: 0x4000)
    z80.bc().ld(value: 0xc617)
    z80.de().ld(value: 0x079c)
    z80.hl().ld(value: 0x4107)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x4000)
    XCTAssert(z80.bc().value() == 0xc617)
    XCTAssert(z80.de().value() == 0x079c)
    XCTAssert(z80.hl().value() == 0x4107)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc6])
    loadRam(location: 0xf0be, data:[0x9c])
    z80.af().ld(value: 0xb800)
    z80.bc().ld(value: 0x0373)
    z80.de().ld(value: 0xb807)
    z80.hl().ld(value: 0xf0be)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb800)
    XCTAssert(z80.bc().value() == 0x373)
    XCTAssert(z80.de().value() == 0xb807)
    XCTAssert(z80.hl().value() == 0xf0be)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0xf0be) == 0x9d)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc7])
    loadRam(location: 0x583f, data:[0x58])
    z80.af().ld(value: 0x7700)
    z80.bc().ld(value: 0x3681)
    z80.de().ld(value: 0x9b55)
    z80.hl().ld(value: 0x583f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7700)
    XCTAssert(z80.bc().value() == 0x3681)
    XCTAssert(z80.de().value() == 0x9b55)
    XCTAssert(z80.hl().value() == 0x583f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc8])
    loadRam(location: 0x7cf3, data:[0x75])
    z80.af().ld(value: 0x7d00)
    z80.bc().ld(value: 0xa772)
    z80.de().ld(value: 0x8682)
    z80.hl().ld(value: 0x7cf3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7d00)
    XCTAssert(z80.bc().value() == 0xa772)
    XCTAssert(z80.de().value() == 0x8682)
    XCTAssert(z80.hl().value() == 0x7cf3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbc9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xc9])
    loadRam(location: 0x72db, data:[0x87])
    z80.af().ld(value: 0x0b00)
    z80.bc().ld(value: 0x67ee)
    z80.de().ld(value: 0x30e0)
    z80.hl().ld(value: 0x72db)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0b00)
    XCTAssert(z80.bc().value() == 0x67ee)
    XCTAssert(z80.de().value() == 0x30e0)
    XCTAssert(z80.hl().value() == 0x72db)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbca() throws {
    loadRam(location: 0x0000, data:[0xcb,0xca])
    loadRam(location: 0xfbc7, data:[0x1a])
    z80.af().ld(value: 0x9c00)
    z80.bc().ld(value: 0x9517)
    z80.de().ld(value: 0xcfbb)
    z80.hl().ld(value: 0xfbc7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9c00)
    XCTAssert(z80.bc().value() == 0x9517)
    XCTAssert(z80.de().value() == 0xcfbb)
    XCTAssert(z80.hl().value() == 0xfbc7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbcb() throws {
    loadRam(location: 0x0000, data:[0xcb,0xcb])
    loadRam(location: 0xf70d, data:[0xa1])
    z80.af().ld(value: 0xe800)
    z80.bc().ld(value: 0x0f3d)
    z80.de().ld(value: 0x336f)
    z80.hl().ld(value: 0xf70d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe800)
    XCTAssert(z80.bc().value() == 0x0f3d)
    XCTAssert(z80.de().value() == 0x336f)
    XCTAssert(z80.hl().value() == 0xf70d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbcc() throws {
    loadRam(location: 0x0000, data:[0xcb,0xcc])
    loadRam(location: 0x18fd, data:[0xfe])
    z80.af().ld(value: 0xfb00)
    z80.bc().ld(value: 0x7981)
    z80.de().ld(value: 0x0bbb)
    z80.hl().ld(value: 0x18fd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xfb00)
    XCTAssert(z80.bc().value() == 0x7981)
    XCTAssert(z80.de().value() == 0x0bbb)
    XCTAssert(z80.hl().value() == 0x1afd)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbcd() throws {
    loadRam(location: 0x0000, data:[0xcb,0xcd])
    loadRam(location: 0x2602, data:[0x2d])
    z80.af().ld(value: 0x5500)
    z80.bc().ld(value: 0x5e78)
    z80.de().ld(value: 0xbf34)
    z80.hl().ld(value: 0x2602)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5500)
    XCTAssert(z80.bc().value() == 0x5e78)
    XCTAssert(z80.de().value() == 0xbf34)
    XCTAssert(z80.hl().value() == 0x2602)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbce() throws {
    loadRam(location: 0x0000, data:[0xcb,0xce])
    loadRam(location: 0x8ec6, data:[0xbf])
    z80.af().ld(value: 0xd500)
    z80.bc().ld(value: 0xa111)
    z80.de().ld(value: 0xcb2a)
    z80.hl().ld(value: 0x8ec6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd500)
    XCTAssert(z80.bc().value() == 0xa111)
    XCTAssert(z80.de().value() == 0xcb2a)
    XCTAssert(z80.hl().value() == 0x8ec6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbcf() throws {
    loadRam(location: 0x0000, data:[0xcb,0xcf])
    loadRam(location: 0x98a0, data:[0xd4])
    z80.af().ld(value: 0xa200)
    z80.bc().ld(value: 0x6baf)
    z80.de().ld(value: 0x98b2)
    z80.hl().ld(value: 0x98a0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa200)
    XCTAssert(z80.bc().value() == 0x6baf)
    XCTAssert(z80.de().value() == 0x98b2)
    XCTAssert(z80.hl().value() == 0x98a0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd0])
    loadRam(location: 0x1724, data:[0x30])
    z80.af().ld(value: 0x2300)
    z80.bc().ld(value: 0x7bcb)
    z80.de().ld(value: 0x02e7)
    z80.hl().ld(value: 0x1724)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2300)
    XCTAssert(z80.bc().value() == 0x7fcb)
    XCTAssert(z80.de().value() == 0x02e7)
    XCTAssert(z80.hl().value() == 0x1724)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd1])
    loadRam(location: 0x47f4, data:[0xc7])
    z80.af().ld(value: 0x5300)
    z80.bc().ld(value: 0x581f)
    z80.de().ld(value: 0xb775)
    z80.hl().ld(value: 0x47f4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5300)
    XCTAssert(z80.bc().value() == 0x581f)
    XCTAssert(z80.de().value() == 0xb775)
    XCTAssert(z80.hl().value() == 0x47f4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd2])
    loadRam(location: 0x7528, data:[0x4f])
    z80.af().ld(value: 0x6900)
    z80.bc().ld(value: 0xc147)
    z80.de().ld(value: 0xb79c)
    z80.hl().ld(value: 0x7528)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6900)
    XCTAssert(z80.bc().value() == 0xc147)
    XCTAssert(z80.de().value() == 0xb79c)
    XCTAssert(z80.hl().value() == 0x7528)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd3])
    loadRam(location: 0x5fba, data:[0x3a])
    z80.af().ld(value: 0xae00)
    z80.bc().ld(value: 0xbbc4)
    z80.de().ld(value: 0xce52)
    z80.hl().ld(value: 0x5fba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xae00)
    XCTAssert(z80.bc().value() == 0xbbc4)
    XCTAssert(z80.de().value() == 0xce56)
    XCTAssert(z80.hl().value() == 0x5fba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd4])
    loadRam(location: 0xbf2e, data:[0x71])
    z80.af().ld(value: 0xd800)
    z80.bc().ld(value: 0x6e1e)
    z80.de().ld(value: 0xaf6f)
    z80.hl().ld(value: 0xbf2e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd800)
    XCTAssert(z80.bc().value() == 0x6e1e)
    XCTAssert(z80.de().value() == 0xaf6f)
    XCTAssert(z80.hl().value() == 0xbf2e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd5])
    loadRam(location: 0x8a77, data:[0x52])
    z80.af().ld(value: 0x8400)
    z80.bc().ld(value: 0xa19a)
    z80.de().ld(value: 0xd2fd)
    z80.hl().ld(value: 0x8a77)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8400)
    XCTAssert(z80.bc().value() == 0xa19a)
    XCTAssert(z80.de().value() == 0xd2fd)
    XCTAssert(z80.hl().value() == 0x8a77)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd6])
    loadRam(location: 0x6029, data:[0xb7])
    z80.af().ld(value: 0xa900)
    z80.bc().ld(value: 0xf5f3)
    z80.de().ld(value: 0x2180)
    z80.hl().ld(value: 0x6029)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa900)
    XCTAssert(z80.bc().value() == 0xf5f3)
    XCTAssert(z80.de().value() == 0x2180)
    XCTAssert(z80.hl().value() == 0x6029)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd7])
    loadRam(location: 0x290a, data:[0x42])
    z80.af().ld(value: 0xb100)
    z80.bc().ld(value: 0xc008)
    z80.de().ld(value: 0x8425)
    z80.hl().ld(value: 0x290a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb500)
    XCTAssert(z80.bc().value() == 0xc008)
    XCTAssert(z80.de().value() == 0x8425)
    XCTAssert(z80.hl().value() == 0x290a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd8])
    loadRam(location: 0x6d7e, data:[0x6e])
    z80.af().ld(value: 0x8b00)
    z80.bc().ld(value: 0x09c4)
    z80.de().ld(value: 0xddf3)
    z80.hl().ld(value: 0x6d7e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8b00)
    XCTAssert(z80.bc().value() == 0x09c4)
    XCTAssert(z80.de().value() == 0xddf3)
    XCTAssert(z80.hl().value() == 0x6d7e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbd9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xd9])
    loadRam(location: 0xefc6, data:[0x5b])
    z80.af().ld(value: 0x3e00)
    z80.bc().ld(value: 0x3e36)
    z80.de().ld(value: 0x30ec)
    z80.hl().ld(value: 0xefc6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3e00)
    XCTAssert(z80.bc().value() == 0x3e3e)
    XCTAssert(z80.de().value() == 0x30ec)
    XCTAssert(z80.hl().value() == 0xefc6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbda() throws {
    loadRam(location: 0x0000, data:[0xcb,0xda])
    loadRam(location: 0x1c87, data:[0xb9])
    z80.af().ld(value: 0xd000)
    z80.bc().ld(value: 0x3e8f)
    z80.de().ld(value: 0x28fe)
    z80.hl().ld(value: 0x1c87)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd000)
    XCTAssert(z80.bc().value() == 0x3e8f)
    XCTAssert(z80.de().value() == 0x28fe)
    XCTAssert(z80.hl().value() == 0x1c87)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbdb() throws {
    loadRam(location: 0x0000, data:[0xcb,0xdb])
    loadRam(location: 0xbc48, data:[0xef])
    z80.af().ld(value: 0x1200)
    z80.bc().ld(value: 0x977a)
    z80.de().ld(value: 0x8c49)
    z80.hl().ld(value: 0xbc48)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1200)
    XCTAssert(z80.bc().value() == 0x977a)
    XCTAssert(z80.de().value() == 0x8c49)
    XCTAssert(z80.hl().value() == 0xbc48)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbdc() throws {
    loadRam(location: 0x0000, data:[0xcb,0xdc])
    loadRam(location: 0xb125, data:[0x0e])
    z80.af().ld(value: 0x8d00)
    z80.bc().ld(value: 0x05de)
    z80.de().ld(value: 0xf8d3)
    z80.hl().ld(value: 0xb125)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8d00)
    XCTAssert(z80.bc().value() == 0x05de)
    XCTAssert(z80.de().value() == 0xf8d3)
    XCTAssert(z80.hl().value() == 0xb925)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbdd() throws {
    loadRam(location: 0x0000, data:[0xcb,0xdd])
    loadRam(location: 0x5b9f, data:[0x94])
    z80.af().ld(value: 0xc300)
    z80.bc().ld(value: 0x08a9)
    z80.de().ld(value: 0x2bc8)
    z80.hl().ld(value: 0x5b9f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc300)
    XCTAssert(z80.bc().value() == 0x08a9)
    XCTAssert(z80.de().value() == 0x2bc8)
    XCTAssert(z80.hl().value() == 0x5b9f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbde() throws {
    loadRam(location: 0x0000, data:[0xcb,0xde])
    loadRam(location: 0xba03, data:[0x93])
    z80.af().ld(value: 0x1900)
    z80.bc().ld(value: 0x900f)
    z80.de().ld(value: 0xd572)
    z80.hl().ld(value: 0xba03)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1900)
    XCTAssert(z80.bc().value() == 0x900f)
    XCTAssert(z80.de().value() == 0xd572)
    XCTAssert(z80.hl().value() == 0xba03)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0xba03) == 0x9b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbdf() throws {
    loadRam(location: 0x0000, data:[0xcb,0xdf])
    loadRam(location: 0x0fa1, data:[0xc5])
    z80.af().ld(value: 0x6700)
    z80.bc().ld(value: 0x2745)
    z80.de().ld(value: 0x7e3d)
    z80.hl().ld(value: 0x0fa1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6f00)
    XCTAssert(z80.bc().value() == 0x2745)
    XCTAssert(z80.de().value() == 0x7e3d)
    XCTAssert(z80.hl().value() == 0x0fa1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe0])
    loadRam(location: 0x3744, data:[0x54])
    z80.af().ld(value: 0x3e00)
    z80.bc().ld(value: 0xd633)
    z80.de().ld(value: 0x9897)
    z80.hl().ld(value: 0x3744)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3e00)
    XCTAssert(z80.bc().value() == 0xd633)
    XCTAssert(z80.de().value() == 0x9897)
    XCTAssert(z80.hl().value() == 0x3744)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe1])
    loadRam(location: 0x5334, data:[0x85])
    z80.af().ld(value: 0x7d00)
    z80.bc().ld(value: 0x50a6)
    z80.de().ld(value: 0x0136)
    z80.hl().ld(value: 0x5334)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7d00)
    XCTAssert(z80.bc().value() == 0x50b6)
    XCTAssert(z80.de().value() == 0x136)
    XCTAssert(z80.hl().value() == 0x5334)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe2])
    loadRam(location: 0x3a4c, data:[0x47])
    z80.af().ld(value: 0xd400)
    z80.bc().ld(value: 0x6b45)
    z80.de().ld(value: 0xa192)
    z80.hl().ld(value: 0x3a4c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd400)
    XCTAssert(z80.bc().value() == 0x6b45)
    XCTAssert(z80.de().value() == 0xb192)
    XCTAssert(z80.hl().value() == 0x3a4c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe3])
    loadRam(location: 0x2e78, data:[0x48])
    z80.af().ld(value: 0x3b00)
    z80.bc().ld(value: 0xd29c)
    z80.de().ld(value: 0x05e0)
    z80.hl().ld(value: 0x2e78)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3b00)
    XCTAssert(z80.bc().value() == 0xd29c)
    XCTAssert(z80.de().value() == 0x05f0)
    XCTAssert(z80.hl().value() == 0x2e78)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe4])
    loadRam(location: 0x0978, data:[0x84])
    z80.af().ld(value: 0x1e00)
    z80.bc().ld(value: 0x7d5e)
    z80.de().ld(value: 0x846d)
    z80.hl().ld(value: 0x0978)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1e00)
    XCTAssert(z80.bc().value() == 0x7d5e)
    XCTAssert(z80.de().value() == 0x846d)
    XCTAssert(z80.hl().value() == 0x1978)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe5])
    loadRam(location: 0xb48f, data:[0xcf])
    z80.af().ld(value: 0xca00)
    z80.bc().ld(value: 0xdf0d)
    z80.de().ld(value: 0xd588)
    z80.hl().ld(value: 0xb48f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xca00)
    XCTAssert(z80.bc().value() == 0xdf0d)
    XCTAssert(z80.de().value() == 0xd588)
    XCTAssert(z80.hl().value() == 0xb49f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe6])
    loadRam(location: 0x9f9b, data:[0xf6])
    z80.af().ld(value: 0xb300)
    z80.bc().ld(value: 0x52c2)
    z80.de().ld(value: 0xdbfe)
    z80.hl().ld(value: 0x9f9b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb300)
    XCTAssert(z80.bc().value() == 0x52c2)
    XCTAssert(z80.de().value() == 0xdbfe)
    XCTAssert(z80.hl().value() == 0x9f9b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe7])
    loadRam(location: 0xf2e0, data:[0xcf])
    z80.af().ld(value: 0x8e00)
    z80.bc().ld(value: 0xcf02)
    z80.de().ld(value: 0x67ef)
    z80.hl().ld(value: 0xf2e0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9e00)
    XCTAssert(z80.bc().value() == 0xcf02)
    XCTAssert(z80.de().value() == 0x67ef)
    XCTAssert(z80.hl().value() == 0xf2e0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe8])
    loadRam(location: 0x4a05, data:[0xe6])
    z80.af().ld(value: 0x7100)
    z80.bc().ld(value: 0xbb18)
    z80.de().ld(value: 0x66ec)
    z80.hl().ld(value: 0x4a05)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7100)
    XCTAssert(z80.bc().value() == 0xbb18)
    XCTAssert(z80.de().value() == 0x66ec)
    XCTAssert(z80.hl().value() == 0x4a05)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbe9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xe9])
    loadRam(location: 0xa4d0, data:[0xb2])
    z80.af().ld(value: 0x5700)
    z80.bc().ld(value: 0x2897)
    z80.de().ld(value: 0x8f2f)
    z80.hl().ld(value: 0xa4d0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5700)
    XCTAssert(z80.bc().value() == 0x28b7)
    XCTAssert(z80.de().value() == 0x8f2f)
    XCTAssert(z80.hl().value() == 0xa4d0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbea() throws {
    loadRam(location: 0x0000, data:[0xcb,0xea])
    loadRam(location: 0xf32a, data:[0x9c])
    z80.af().ld(value: 0xec00)
    z80.bc().ld(value: 0x304a)
    z80.de().ld(value: 0x60a1)
    z80.hl().ld(value: 0xf32a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xec00)
    XCTAssert(z80.bc().value() == 0x304a)
    XCTAssert(z80.de().value() == 0x60a1)
    XCTAssert(z80.hl().value() == 0xf32a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbeb() throws {
    loadRam(location: 0x0000, data:[0xcb,0xeb])
    loadRam(location: 0x1a1a, data:[0x21])
    z80.af().ld(value: 0xf000)
    z80.bc().ld(value: 0x532b)
    z80.de().ld(value: 0xa1be)
    z80.hl().ld(value: 0x1a1a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf000)
    XCTAssert(z80.bc().value() == 0x532b)
    XCTAssert(z80.de().value() == 0xa1be)
    XCTAssert(z80.hl().value() == 0x1a1a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbec() throws {
    loadRam(location: 0x0000, data:[0xcb,0xec])
    loadRam(location: 0xba08, data:[0x82])
    z80.af().ld(value: 0xf200)
    z80.bc().ld(value: 0xf0f3)
    z80.de().ld(value: 0xa816)
    z80.hl().ld(value: 0xba08)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf200)
    XCTAssert(z80.bc().value() == 0xf0f3)
    XCTAssert(z80.de().value() == 0xa816)
    XCTAssert(z80.hl().value() == 0xba08)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbed() throws {
    loadRam(location: 0x0000, data:[0xcb,0xed])
    loadRam(location: 0x2dec, data:[0xcb])
    z80.af().ld(value: 0x1300)
    z80.bc().ld(value: 0x5127)
    z80.de().ld(value: 0xadab)
    z80.hl().ld(value: 0x2dec)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1300)
    XCTAssert(z80.bc().value() == 0x5127)
    XCTAssert(z80.de().value() == 0xadab)
    XCTAssert(z80.hl().value() == 0x2dec)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbee() throws {
    loadRam(location: 0x0000, data:[0xcb,0xee])
    loadRam(location: 0xe90d, data:[0xf1])
    z80.af().ld(value: 0x9000)
    z80.bc().ld(value: 0xb273)
    z80.de().ld(value: 0x50ae)
    z80.hl().ld(value: 0xe90d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9000)
    XCTAssert(z80.bc().value() == 0xb273)
    XCTAssert(z80.de().value() == 0x50ae)
    XCTAssert(z80.hl().value() == 0xe90d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbef() throws {
    loadRam(location: 0x0000, data:[0xcb,0xef])
    loadRam(location: 0x2c39, data:[0xc8])
    z80.af().ld(value: 0x2500)
    z80.bc().ld(value: 0x4281)
    z80.de().ld(value: 0xf0d4)
    z80.hl().ld(value: 0x2c39)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2500)
    XCTAssert(z80.bc().value() == 0x4281)
    XCTAssert(z80.de().value() == 0xf0d4)
    XCTAssert(z80.hl().value() == 0x2c39)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf0() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf0])
    loadRam(location: 0x6ff5, data:[0xf6])
    z80.af().ld(value: 0xfb00)
    z80.bc().ld(value: 0x5802)
    z80.de().ld(value: 0x0c27)
    z80.hl().ld(value: 0x6ff5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xfb00)
    XCTAssert(z80.bc().value() == 0x5802)
    XCTAssert(z80.de().value() == 0x0c27)
    XCTAssert(z80.hl().value() == 0x6ff5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf1() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf1])
    loadRam(location: 0x5e1c, data:[0x37])
    z80.af().ld(value: 0x5500)
    z80.bc().ld(value: 0xa103)
    z80.de().ld(value: 0x3ff5)
    z80.hl().ld(value: 0x5e1c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5500)
    XCTAssert(z80.bc().value() == 0xa143)
    XCTAssert(z80.de().value() == 0x3ff5)
    XCTAssert(z80.hl().value() == 0x5e1c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf2() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf2])
    loadRam(location: 0x9819, data:[0xe4])
    z80.af().ld(value: 0xf000)
    z80.bc().ld(value: 0x625a)
    z80.de().ld(value: 0xaf82)
    z80.hl().ld(value: 0x9819)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf000)
    XCTAssert(z80.bc().value() == 0x625a)
    XCTAssert(z80.de().value() == 0xef82)
    XCTAssert(z80.hl().value() == 0x9819)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf3() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf3])
    loadRam(location: 0x263f, data:[0xa1])
    z80.af().ld(value: 0x8600)
    z80.bc().ld(value: 0xd7bd)
    z80.de().ld(value: 0x5d86)
    z80.hl().ld(value: 0x263f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8600)
    XCTAssert(z80.bc().value() == 0xd7bd)
    XCTAssert(z80.de().value() == 0x5dc6)
    XCTAssert(z80.hl().value() == 0x263f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf4() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf4])
    loadRam(location: 0x75d9, data:[0x3f])
    z80.af().ld(value: 0x9400)
    z80.bc().ld(value: 0x0243)
    z80.de().ld(value: 0x9ec1)
    z80.hl().ld(value: 0x75d9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9400)
    XCTAssert(z80.bc().value() == 0x243)
    XCTAssert(z80.de().value() == 0x9ec1)
    XCTAssert(z80.hl().value() == 0x75d9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf5() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf5])
    loadRam(location: 0x47e6, data:[0xce])
    z80.af().ld(value: 0xce00)
    z80.bc().ld(value: 0x2d42)
    z80.de().ld(value: 0x5e6a)
    z80.hl().ld(value: 0x47e6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xce00)
    XCTAssert(z80.bc().value() == 0x2d42)
    XCTAssert(z80.de().value() == 0x5e6a)
    XCTAssert(z80.hl().value() == 0x47e6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf6() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf6])
    loadRam(location: 0xa9bc, data:[0xb1])
    z80.af().ld(value: 0x7b00)
    z80.bc().ld(value: 0xc2d7)
    z80.de().ld(value: 0x4492)
    z80.hl().ld(value: 0xa9bc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7b00)
    XCTAssert(z80.bc().value() == 0xc2d7)
    XCTAssert(z80.de().value() == 0x4492)
    XCTAssert(z80.hl().value() == 0xa9bc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0xa9bc) == 0xf1)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf7() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf7])
    loadRam(location: 0x188c, data:[0x6c])
    z80.af().ld(value: 0x6d00)
    z80.bc().ld(value: 0xabaf)
    z80.de().ld(value: 0x5b5d)
    z80.hl().ld(value: 0x188c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6d00)
    XCTAssert(z80.bc().value() == 0xabaf)
    XCTAssert(z80.de().value() == 0x5b5d)
    XCTAssert(z80.hl().value() == 0x188c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf8() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf8])
    loadRam(location: 0xd2b0, data:[0xcb])
    z80.af().ld(value: 0xc600)
    z80.bc().ld(value: 0xb812)
    z80.de().ld(value: 0xa037)
    z80.hl().ld(value: 0xd2b0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc600)
    XCTAssert(z80.bc().value() == 0xb812)
    XCTAssert(z80.de().value() == 0xa037)
    XCTAssert(z80.hl().value() == 0xd2b0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbf9() throws {
    loadRam(location: 0x0000, data:[0xcb,0xf9])
    loadRam(location: 0x0730, data:[0xae])
    z80.af().ld(value: 0xef00)
    z80.bc().ld(value: 0xc5f2)
    z80.de().ld(value: 0x77a8)
    z80.hl().ld(value: 0x0730)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xef00)
    XCTAssert(z80.bc().value() == 0xc5f2)
    XCTAssert(z80.de().value() == 0x77a8)
    XCTAssert(z80.hl().value() == 0x730)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbfa() throws {
    loadRam(location: 0x0000, data:[0xcb,0xfa])
    loadRam(location: 0xed03, data:[0x27])
    z80.af().ld(value: 0x8700)
    z80.bc().ld(value: 0x1581)
    z80.de().ld(value: 0x63e3)
    z80.hl().ld(value: 0xed03)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8700)
    XCTAssert(z80.bc().value() == 0x1581)
    XCTAssert(z80.de().value() == 0xe3e3)
    XCTAssert(z80.hl().value() == 0xed03)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbfb() throws {
    loadRam(location: 0x0000, data:[0xcb,0xfb])
    loadRam(location: 0xd1ae, data:[0xf2])
    z80.af().ld(value: 0xa300)
    z80.bc().ld(value: 0x7d27)
    z80.de().ld(value: 0x97c3)
    z80.hl().ld(value: 0xd1ae)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa300)
    XCTAssert(z80.bc().value() == 0x7d27)
    XCTAssert(z80.de().value() == 0x97c3)
    XCTAssert(z80.hl().value() == 0xd1ae)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbfc() throws {
    loadRam(location: 0x0000, data:[0xcb,0xfc])
    loadRam(location: 0x500f, data:[0x94])
    z80.af().ld(value: 0xec00)
    z80.bc().ld(value: 0x060a)
    z80.de().ld(value: 0x3ef6)
    z80.hl().ld(value: 0x500f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xec00)
    XCTAssert(z80.bc().value() == 0x060a)
    XCTAssert(z80.de().value() == 0x3ef6)
    XCTAssert(z80.hl().value() == 0xd00f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbfd() throws {
    loadRam(location: 0x0000, data:[0xcb,0xfd])
    loadRam(location: 0x28c5, data:[0xab])
    z80.af().ld(value: 0x1100)
    z80.bc().ld(value: 0x231a)
    z80.de().ld(value: 0x8563)
    z80.hl().ld(value: 0x28c5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x1100)
    XCTAssert(z80.bc().value() == 0x231a)
    XCTAssert(z80.de().value() == 0x8563)
    XCTAssert(z80.hl().value() == 0x28c5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbfe() throws {
    loadRam(location: 0x0000, data:[0xcb,0xfe])
    loadRam(location: 0x3a24, data:[0xc3])
    z80.af().ld(value: 0x5300)
    z80.bc().ld(value: 0x4948)
    z80.de().ld(value: 0x89dd)
    z80.hl().ld(value: 0x3a24)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5300)
    XCTAssert(z80.bc().value() == 0x4948)
    XCTAssert(z80.de().value() == 0x89dd)
    XCTAssert(z80.hl().value() == 0x3a24)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcbff() throws {
    loadRam(location: 0x0000, data:[0xcb,0xff])
    loadRam(location: 0xe3f2, data:[0x25])
    z80.af().ld(value: 0x7900)
    z80.bc().ld(value: 0x799b)
    z80.de().ld(value: 0x6cf7)
    z80.hl().ld(value: 0xe3f2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf900)
    XCTAssert(z80.bc().value() == 0x799b)
    XCTAssert(z80.de().value() == 0x6cf7)
    XCTAssert(z80.hl().value() == 0xe3f2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

}
