//
//  allTestsP_DDCB00to7f.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//
import XCTest

class allTestsP_DDCB00to7f: BaseTest {
    func testddcb00() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0d,0x00])
    loadRam(location: 0x1dae, data:[0xa1])
    z80.af().ld(value: 0x3c65)
    z80.bc().ld(value: 0xf0e4)
    z80.de().ld(value: 0x09d1)
    z80.hl().ld(value: 0x646b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1da1)
    z80.iy().ld(value: 0xf08f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3c01)
    XCTAssert(z80.bc().value() == 0x43e4)
    XCTAssert(z80.de().value() == 0x09d1)
    XCTAssert(z80.hl().value() == 0x646b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1da1)
    XCTAssert(z80.iy().value() == 0xf08f)
    XCTAssert(z80.fetchRam(location: 0x1dae) == 0x43)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb01() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb7,0x01])
    loadRam(location: 0x28b4, data:[0xe3])
    z80.af().ld(value: 0xf68f)
    z80.bc().ld(value: 0xe33b)
    z80.de().ld(value: 0x2d4a)
    z80.hl().ld(value: 0x7725)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x28fd)
    z80.iy().ld(value: 0xf31b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf681)
    XCTAssert(z80.bc().value() == 0xe3c7)
    XCTAssert(z80.de().value() == 0x2d4a)
    XCTAssert(z80.hl().value() == 0x7725)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x28fd)
    XCTAssert(z80.iy().value() == 0xf31b)
    XCTAssert(z80.fetchRam(location: 0x28b4) == 0xc7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb02() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x91,0x02])
    loadRam(location: 0xc727, data:[0x8d])
    z80.af().ld(value: 0xe20c)
    z80.bc().ld(value: 0x836e)
    z80.de().ld(value: 0x513a)
    z80.hl().ld(value: 0xf840)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc796)
    z80.iy().ld(value: 0xae9b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe20d)
    XCTAssert(z80.bc().value() == 0x836e)
    XCTAssert(z80.de().value() == 0x1b3a)
    XCTAssert(z80.hl().value() == 0xf840)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc796)
    XCTAssert(z80.iy().value() == 0xae9b)
    XCTAssert(z80.fetchRam(location: 0xc727) == 0x1b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb03() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x48,0x03])
    loadRam(location: 0x0466, data:[0x78])
    z80.af().ld(value: 0x6224)
    z80.bc().ld(value: 0x3571)
    z80.de().ld(value: 0xc519)
    z80.hl().ld(value: 0x48dc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x041e)
    z80.iy().ld(value: 0xc07b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x62a4)
    XCTAssert(z80.bc().value() == 0x3571)
    XCTAssert(z80.de().value() == 0xc5f0)
    XCTAssert(z80.hl().value() == 0x48dc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x041e)
    XCTAssert(z80.iy().value() == 0xc07b)
    XCTAssert(z80.fetchRam(location: 0x0466) == 0xf0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb04() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x48,0x04])
    loadRam(location: 0x5991, data:[0x68])
    z80.af().ld(value: 0xb310)
    z80.bc().ld(value: 0xbfc4)
    z80.de().ld(value: 0x64af)
    z80.hl().ld(value: 0xd622)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5949)
    z80.iy().ld(value: 0xa989)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb380)
    XCTAssert(z80.bc().value() == 0xbfc4)
    XCTAssert(z80.de().value() == 0x64af)
    XCTAssert(z80.hl().value() == 0xd022)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5949)
    XCTAssert(z80.iy().value() == 0xa989)
    XCTAssert(z80.fetchRam(location: 0x5991) == 0xd0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb05() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xff,0x05])
    loadRam(location: 0x0076, data:[0x95])
    z80.af().ld(value: 0x4954)
    z80.bc().ld(value: 0xbb04)
    z80.de().ld(value: 0x56ec)
    z80.hl().ld(value: 0x9d58)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0077)
    z80.iy().ld(value: 0x1349)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x492d)
    XCTAssert(z80.bc().value() == 0xbb04)
    XCTAssert(z80.de().value() == 0x56ec)
    XCTAssert(z80.hl().value() == 0x9d2b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x77)
    XCTAssert(z80.iy().value() == 0x1349)
    XCTAssert(z80.fetchRam(location: 0x0076) == 0x2b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb06() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x07,0x06])
    loadRam(location: 0x5428, data:[0x97])
    z80.af().ld(value: 0x0cf4)
    z80.bc().ld(value: 0xf636)
    z80.de().ld(value: 0x90a6)
    z80.hl().ld(value: 0x6117)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5421)
    z80.iy().ld(value: 0x90ee)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x0c29)
    XCTAssert(z80.bc().value() == 0xf636)
    XCTAssert(z80.de().value() == 0x90a6)
    XCTAssert(z80.hl().value() == 0x6117)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5421)
    XCTAssert(z80.iy().value() == 0x90ee)
    XCTAssert(z80.fetchRam(location: 0x5428) == 0x2f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb07() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x42,0x07])
    loadRam(location: 0x9845, data:[0xae])
    z80.af().ld(value: 0x6f4d)
    z80.bc().ld(value: 0x9ca3)
    z80.de().ld(value: 0xbdf6)
    z80.hl().ld(value: 0xed50)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9803)
    z80.iy().ld(value: 0x55f9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5d09)
    XCTAssert(z80.bc().value() == 0x9ca3)
    XCTAssert(z80.de().value() == 0xbdf6)
    XCTAssert(z80.hl().value() == 0xed50)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9803)
    XCTAssert(z80.iy().value() == 0x55f9)
    XCTAssert(z80.fetchRam(location: 0x9845) == 0x5d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb08() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0a,0x08])
    loadRam(location: 0xef4a, data:[0xda])
    z80.af().ld(value: 0x02f4)
    z80.bc().ld(value: 0x1c66)
    z80.de().ld(value: 0x6023)
    z80.hl().ld(value: 0xae06)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xef40)
    z80.iy().ld(value: 0xb006)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x228)
    XCTAssert(z80.bc().value() == 0x6d66)
    XCTAssert(z80.de().value() == 0x6023)
    XCTAssert(z80.hl().value() == 0xae06)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xef40)
    XCTAssert(z80.iy().value() == 0xb006)
    XCTAssert(z80.fetchRam(location: 0xef4a) == 0x6d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb09() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3b,0x09])
    loadRam(location: 0x9d46, data:[0x6f])
    z80.af().ld(value: 0x9825)
    z80.bc().ld(value: 0x9258)
    z80.de().ld(value: 0x54d5)
    z80.hl().ld(value: 0x5e1e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9d0b)
    z80.iy().ld(value: 0x6e58)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x98a5)
    XCTAssert(z80.bc().value() == 0x92b7)
    XCTAssert(z80.de().value() == 0x54d5)
    XCTAssert(z80.hl().value() == 0x5e1e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9d0b)
    XCTAssert(z80.iy().value() == 0x6e58)
    XCTAssert(z80.fetchRam(location: 0x9d46) == 0xb7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x83,0x0a])
    loadRam(location: 0x1f37, data:[0x78])
    z80.af().ld(value: 0xd2dd)
    z80.bc().ld(value: 0x6aac)
    z80.de().ld(value: 0xe789)
    z80.hl().ld(value: 0x9293)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1fb4)
    z80.iy().ld(value: 0x2498)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd22c)
    XCTAssert(z80.bc().value() == 0x6aac)
    XCTAssert(z80.de().value() == 0x3c89)
    XCTAssert(z80.hl().value() == 0x9293)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1fb4)
    XCTAssert(z80.iy().value() == 0x2498)
    XCTAssert(z80.fetchRam(location: 0x1f37) == 0x3c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xfa,0x0b])
    loadRam(location: 0xcd03, data:[0x92])
    z80.af().ld(value: 0xb82c)
    z80.bc().ld(value: 0xb284)
    z80.de().ld(value: 0x23f8)
    z80.hl().ld(value: 0x7e7d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcd09)
    z80.iy().ld(value: 0x6a03)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb808)
    XCTAssert(z80.bc().value() == 0xb284)
    XCTAssert(z80.de().value() == 0x2349)
    XCTAssert(z80.hl().value() == 0x7e7d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xcd09)
    XCTAssert(z80.iy().value() == 0x6a03)
    XCTAssert(z80.fetchRam(location: 0xcd03) == 0x49)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x79,0x0c])
    loadRam(location: 0xbfe4, data:[0x0d])
    z80.af().ld(value: 0xdf8b)
    z80.bc().ld(value: 0xb6cc)
    z80.de().ld(value: 0xee8d)
    z80.hl().ld(value: 0x855a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbf6b)
    z80.iy().ld(value: 0x9b7d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdf81)
    XCTAssert(z80.bc().value() == 0xb6cc)
    XCTAssert(z80.de().value() == 0xee8d)
    XCTAssert(z80.hl().value() == 0x865a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbf6b)
    XCTAssert(z80.iy().value() == 0x9b7d)
    XCTAssert(z80.fetchRam(location: 0xbfe4) == 0x86)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe4,0x0d])
    loadRam(location: 0x88a1, data:[0x1f])
    z80.af().ld(value: 0xbae3)
    z80.bc().ld(value: 0xceec)
    z80.de().ld(value: 0xbbaa)
    z80.hl().ld(value: 0xb65e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x88bd)
    z80.iy().ld(value: 0x503e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xba89)
    XCTAssert(z80.bc().value() == 0xceec)
    XCTAssert(z80.de().value() == 0xbbaa)
    XCTAssert(z80.hl().value() == 0xb68f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x88bd)
    XCTAssert(z80.iy().value() == 0x503e)
    XCTAssert(z80.fetchRam(location: 0x88a1) == 0x8f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc6,0x0e])
    loadRam(location: 0xfd0f, data:[0xad])
    z80.af().ld(value: 0x1c36)
    z80.bc().ld(value: 0x890b)
    z80.de().ld(value: 0x7830)
    z80.hl().ld(value: 0x060c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfd49)
    z80.iy().ld(value: 0x5d07)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1c81)
    XCTAssert(z80.bc().value() == 0x890b)
    XCTAssert(z80.de().value() == 0x7830)
    XCTAssert(z80.hl().value() == 0x060c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfd49)
    XCTAssert(z80.iy().value() == 0x5d07)
    XCTAssert(z80.fetchRam(location: 0xfd0f) == 0xd6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb0f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x57,0x0f])
    loadRam(location: 0x749e, data:[0xf8])
    z80.af().ld(value: 0xf5a7)
    z80.bc().ld(value: 0xfad4)
    z80.de().ld(value: 0xfa4b)
    z80.hl().ld(value: 0x9c53)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7447)
    z80.iy().ld(value: 0x2267)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7c28)
    XCTAssert(z80.bc().value() == 0xfad4)
    XCTAssert(z80.de().value() == 0xfa4b)
    XCTAssert(z80.hl().value() == 0x9c53)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7447)
    XCTAssert(z80.iy().value() == 0x2267)
    XCTAssert(z80.fetchRam(location: 0x749e) == 0x7c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb10() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4f,0x10])
    loadRam(location: 0xbbf1, data:[0x45])
    z80.af().ld(value: 0xf3af)
    z80.bc().ld(value: 0xba1f)
    z80.de().ld(value: 0x5387)
    z80.hl().ld(value: 0x926e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbba2)
    z80.iy().ld(value: 0xca47)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf38c)
    XCTAssert(z80.bc().value() == 0x8b1f)
    XCTAssert(z80.de().value() == 0x5387)
    XCTAssert(z80.hl().value() == 0x926e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbba2)
    XCTAssert(z80.iy().value() == 0xca47)
    XCTAssert(z80.fetchRam(location: 0xbbf1) == 0x8b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb11() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xeb,0x11])
    loadRam(location: 0x17f4, data:[0xd9])
    z80.af().ld(value: 0x2a69)
    z80.bc().ld(value: 0xd604)
    z80.de().ld(value: 0xa9aa)
    z80.hl().ld(value: 0x5b52)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1809)
    z80.iy().ld(value: 0xd275)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2aa1)
    XCTAssert(z80.bc().value() == 0xd6b3)
    XCTAssert(z80.de().value() == 0xa9aa)
    XCTAssert(z80.hl().value() == 0x5b52)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1809)
    XCTAssert(z80.iy().value() == 0xd275)
    XCTAssert(z80.fetchRam(location: 0x17f4) == 0xb3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb12() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa6,0x12])
    loadRam(location: 0xc0a1, data:[0xe2])
    z80.af().ld(value: 0x9287)
    z80.bc().ld(value: 0xc479)
    z80.de().ld(value: 0x26d1)
    z80.hl().ld(value: 0x10ce)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc0fb)
    z80.iy().ld(value: 0x2777)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9285)
    XCTAssert(z80.bc().value() == 0xc479)
    XCTAssert(z80.de().value() == 0xc5d1)
    XCTAssert(z80.hl().value() == 0x10ce)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc0fb)
    XCTAssert(z80.iy().value() == 0x2777)
    XCTAssert(z80.fetchRam(location: 0xc0a1) == 0xc5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb13() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xff,0x13])
    loadRam(location: 0x5ac3, data:[0xa7])
    z80.af().ld(value: 0xa507)
    z80.bc().ld(value: 0x580a)
    z80.de().ld(value: 0xa48f)
    z80.hl().ld(value: 0x11cd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5ac4)
    z80.iy().ld(value: 0xccc7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa509)
    XCTAssert(z80.bc().value() == 0x580a)
    XCTAssert(z80.de().value() == 0xa44f)
    XCTAssert(z80.hl().value() == 0x11cd)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5ac4)
    XCTAssert(z80.iy().value() == 0xccc7)
    XCTAssert(z80.fetchRam(location: 0x5ac3) == 0x4f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb14() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdd,0x14])
    loadRam(location: 0x0954, data:[0x85])
    z80.af().ld(value: 0x294b)
    z80.bc().ld(value: 0x5b89)
    z80.de().ld(value: 0x8467)
    z80.hl().ld(value: 0x0430)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0977)
    z80.iy().ld(value: 0xc4e8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2909)
    XCTAssert(z80.bc().value() == 0x5b89)
    XCTAssert(z80.de().value() == 0x8467)
    XCTAssert(z80.hl().value() == 0x0b30)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x977)
    XCTAssert(z80.iy().value() == 0xc4e8)
    XCTAssert(z80.fetchRam(location: 0x0954) == 0x0b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb15() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x07,0x15])
    loadRam(location: 0xedf0, data:[0x0e])
    z80.af().ld(value: 0x1fd1)
    z80.bc().ld(value: 0x6d53)
    z80.de().ld(value: 0x5b7c)
    z80.hl().ld(value: 0xa134)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xede9)
    z80.iy().ld(value: 0xa85c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1f0c)
    XCTAssert(z80.bc().value() == 0x6d53)
    XCTAssert(z80.de().value() == 0x5b7c)
    XCTAssert(z80.hl().value() == 0xa11d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xede9)
    XCTAssert(z80.iy().value() == 0xa85c)
    XCTAssert(z80.fetchRam(location: 0xedf0) == 0x1d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb16() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x45,0x16])
    loadRam(location: 0x1703, data:[0x5b])
    z80.af().ld(value: 0xda70)
    z80.bc().ld(value: 0xa1e4)
    z80.de().ld(value: 0x00b0)
    z80.hl().ld(value: 0x92c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x16be)
    z80.iy().ld(value: 0x2c95)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdaa0)
    XCTAssert(z80.bc().value() == 0xa1e4)
    XCTAssert(z80.de().value() == 0x00b0)
    XCTAssert(z80.hl().value() == 0x92c8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x16be)
    XCTAssert(z80.iy().value() == 0x2c95)
    XCTAssert(z80.fetchRam(location: 0x1703) == 0xb6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb17() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x1c,0x17])
    loadRam(location: 0xb8e5, data:[0x7e])
    z80.af().ld(value: 0x3300)
    z80.bc().ld(value: 0xcbd1)
    z80.de().ld(value: 0x4e1a)
    z80.hl().ld(value: 0xcd27)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb8c9)
    z80.iy().ld(value: 0xe6d4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfcac)
    XCTAssert(z80.bc().value() == 0xcbd1)
    XCTAssert(z80.de().value() == 0x4e1a)
    XCTAssert(z80.hl().value() == 0xcd27)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb8c9)
    XCTAssert(z80.iy().value() == 0xe6d4)
    XCTAssert(z80.fetchRam(location: 0xb8e5) == 0xfc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb18() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0e,0x18])
    loadRam(location: 0xa197, data:[0x90])
    z80.af().ld(value: 0xd980)
    z80.bc().ld(value: 0x4eb5)
    z80.de().ld(value: 0x9cf9)
    z80.hl().ld(value: 0xb9f1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa189)
    z80.iy().ld(value: 0xbd7c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd90c)
    XCTAssert(z80.bc().value() == 0x48b5)
    XCTAssert(z80.de().value() == 0x9cf9)
    XCTAssert(z80.hl().value() == 0xb9f1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa189)
    XCTAssert(z80.iy().value() == 0xbd7c)
    XCTAssert(z80.fetchRam(location: 0xa197) == 0x48)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb19() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa3,0x19])
    loadRam(location: 0xf08a, data:[0x37])
    z80.af().ld(value: 0x23b7)
    z80.bc().ld(value: 0x595a)
    z80.de().ld(value: 0xa756)
    z80.hl().ld(value: 0xcf2e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf0e7)
    z80.iy().ld(value: 0x26e4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2389)
    XCTAssert(z80.bc().value() == 0x599b)
    XCTAssert(z80.de().value() == 0xa756)
    XCTAssert(z80.hl().value() == 0xcf2e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf0e7)
    XCTAssert(z80.iy().value() == 0x26e4)
    XCTAssert(z80.fetchRam(location: 0xf08a) == 0x9b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xac,0x1a])
    loadRam(location: 0xde0d, data:[0xcc])
    z80.af().ld(value: 0x8b52)
    z80.bc().ld(value: 0x7e45)
    z80.de().ld(value: 0xbd0f)
    z80.hl().ld(value: 0x37a6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xde61)
    z80.iy().ld(value: 0x9cd9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8b24)
    XCTAssert(z80.bc().value() == 0x7e45)
    XCTAssert(z80.de().value() == 0x660f)
    XCTAssert(z80.hl().value() == 0x37a6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xde61)
    XCTAssert(z80.iy().value() == 0x9cd9)
    XCTAssert(z80.fetchRam(location: 0xde0d) == 0x66)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x05,0x1b])
    loadRam(location: 0xb7c8, data:[0x91])
    z80.af().ld(value: 0x5c79)
    z80.bc().ld(value: 0x1414)
    z80.de().ld(value: 0x811c)
    z80.hl().ld(value: 0x5881)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb7c3)
    z80.iy().ld(value: 0xd14f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5c89)
    XCTAssert(z80.bc().value() == 0x1414)
    XCTAssert(z80.de().value() == 0x81c8)
    XCTAssert(z80.hl().value() == 0x5881)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb7c3)
    XCTAssert(z80.iy().value() == 0xd14f)
    XCTAssert(z80.fetchRam(location: 0xb7c8) == 0xc8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xff,0x1c])
    loadRam(location: 0xfef8, data:[0x61])
    z80.af().ld(value: 0xfafc)
    z80.bc().ld(value: 0x6277)
    z80.de().ld(value: 0x8b67)
    z80.hl().ld(value: 0xd423)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfef9)
    z80.iy().ld(value: 0x4a66)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfa25)
    XCTAssert(z80.bc().value() == 0x6277)
    XCTAssert(z80.de().value() == 0x8b67)
    XCTAssert(z80.hl().value() == 0x3023)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfef9)
    XCTAssert(z80.iy().value() == 0x4a66)
    XCTAssert(z80.fetchRam(location: 0xfef8) == 0x30)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3a,0x1d])
    loadRam(location: 0x5b9d, data:[0xf3])
    z80.af().ld(value: 0x76a5)
    z80.bc().ld(value: 0x324e)
    z80.de().ld(value: 0xe641)
    z80.hl().ld(value: 0x58f9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5b63)
    z80.iy().ld(value: 0xe18b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x76ad)
    XCTAssert(z80.bc().value() == 0x324e)
    XCTAssert(z80.de().value() == 0xe641)
    XCTAssert(z80.hl().value() == 0x58f9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5b63)
    XCTAssert(z80.iy().value() == 0xe18b)
    XCTAssert(z80.fetchRam(location: 0x5b9d) == 0xf9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xce,0x1e])
    loadRam(location: 0x7582, data:[0x91])
    z80.af().ld(value: 0xc5d9)
    z80.bc().ld(value: 0xcd58)
    z80.de().ld(value: 0x8967)
    z80.hl().ld(value: 0xf074)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x75b4)
    z80.iy().ld(value: 0x693a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc589)
    XCTAssert(z80.bc().value() == 0xcd58)
    XCTAssert(z80.de().value() == 0x8967)
    XCTAssert(z80.hl().value() == 0xf074)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x75b4)
    XCTAssert(z80.iy().value() == 0x693a)
    XCTAssert(z80.fetchRam(location: 0x7582) == 0xc8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb1f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa8,0x1f])
    loadRam(location: 0x1d43, data:[0xb4])
    z80.af().ld(value: 0xd28f)
    z80.bc().ld(value: 0x7f6d)
    z80.de().ld(value: 0x2058)
    z80.hl().ld(value: 0x63e3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1d9b)
    z80.iy().ld(value: 0xbaba)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xda88)
    XCTAssert(z80.bc().value() == 0x7f6d)
    XCTAssert(z80.de().value() == 0x2058)
    XCTAssert(z80.hl().value() == 0x63e3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1d9b)
    XCTAssert(z80.iy().value() == 0xbaba)
    XCTAssert(z80.fetchRam(location: 0x1d43) == 0xda)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb20() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe8,0x20])
    loadRam(location: 0xdc21, data:[0x0e])
    z80.af().ld(value: 0x4ce5)
    z80.bc().ld(value: 0x739e)
    z80.de().ld(value: 0xdc6c)
    z80.hl().ld(value: 0x18f4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdc39)
    z80.iy().ld(value: 0x8b0c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4c08)
    XCTAssert(z80.bc().value() == 0x1c9e)
    XCTAssert(z80.de().value() == 0xdc6c)
    XCTAssert(z80.hl().value() == 0x18f4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdc39)
    XCTAssert(z80.iy().value() == 0x8b0c)
    XCTAssert(z80.fetchRam(location: 0xdc21) == 0x1c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb21() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9e,0x21])
    loadRam(location: 0x3432, data:[0xf7])
    z80.af().ld(value: 0xd29d)
    z80.bc().ld(value: 0x66dd)
    z80.de().ld(value: 0x23ef)
    z80.hl().ld(value: 0x9096)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3494)
    z80.iy().ld(value: 0xb6c3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd2ad)
    XCTAssert(z80.bc().value() == 0x66ee)
    XCTAssert(z80.de().value() == 0x23ef)
    XCTAssert(z80.hl().value() == 0x9096)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3494)
    XCTAssert(z80.iy().value() == 0xb6c3)
    XCTAssert(z80.fetchRam(location: 0x3432) == 0xee)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb22() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x43,0x22])
    loadRam(location: 0xbd82, data:[0x9f])
    z80.af().ld(value: 0xfb5d)
    z80.bc().ld(value: 0xe0d0)
    z80.de().ld(value: 0x7c02)
    z80.hl().ld(value: 0xb4b7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbd3f)
    z80.iy().ld(value: 0x385b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xfb29)
    XCTAssert(z80.bc().value() == 0xe0d0)
    XCTAssert(z80.de().value() == 0x3e02)
    XCTAssert(z80.hl().value() == 0xb4b7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbd3f)
    XCTAssert(z80.iy().value() == 0x385b)
    XCTAssert(z80.fetchRam(location: 0xbd82) == 0x3e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb23() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc1,0x23])
    loadRam(location: 0x229e, data:[0xe0])
    z80.af().ld(value: 0xc359)
    z80.bc().ld(value: 0x68b6)
    z80.de().ld(value: 0xda84)
    z80.hl().ld(value: 0xb990)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x22dd)
    z80.iy().ld(value: 0xbd27)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc385)
    XCTAssert(z80.bc().value() == 0x68b6)
    XCTAssert(z80.de().value() == 0xdac0)
    XCTAssert(z80.hl().value() == 0xb990)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x22dd)
    XCTAssert(z80.iy().value() == 0xbd27)
    XCTAssert(z80.fetchRam(location: 0x229e) == 0xc0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb24() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe8,0x24])
    loadRam(location: 0x31d9, data:[0xc3])
    z80.af().ld(value: 0xbaf5)
    z80.bc().ld(value: 0x7b0b)
    z80.de().ld(value: 0x560b)
    z80.hl().ld(value: 0x7c33)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x31f1)
    z80.iy().ld(value: 0xddbd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xba81)
    XCTAssert(z80.bc().value() == 0x7b0b)
    XCTAssert(z80.de().value() == 0x560b)
    XCTAssert(z80.hl().value() == 0x8633)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x31f1)
    XCTAssert(z80.iy().value() == 0xddbd)
    XCTAssert(z80.fetchRam(location: 0x31d9) == 0x86)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb25() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc1,0x25])
    loadRam(location: 0xcc24, data:[0xeb])
    z80.af().ld(value: 0x43bb)
    z80.bc().ld(value: 0xa21b)
    z80.de().ld(value: 0x2347)
    z80.hl().ld(value: 0xae4a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcc63)
    z80.iy().ld(value: 0xfc94)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4381)
    XCTAssert(z80.bc().value() == 0xa21b)
    XCTAssert(z80.de().value() == 0x2347)
    XCTAssert(z80.hl().value() == 0xaed6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xcc63)
    XCTAssert(z80.iy().value() == 0xfc94)
    XCTAssert(z80.fetchRam(location: 0xcc24) == 0xd6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb26() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf7,0x26])
    loadRam(location: 0x651f, data:[0x89])
    z80.af().ld(value: 0x2065)
    z80.bc().ld(value: 0xff37)
    z80.de().ld(value: 0xe41f)
    z80.hl().ld(value: 0x70e7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6528)
    z80.iy().ld(value: 0xa0d5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2005)
    XCTAssert(z80.bc().value() == 0xff37)
    XCTAssert(z80.de().value() == 0xe41f)
    XCTAssert(z80.hl().value() == 0x70e7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6528)
    XCTAssert(z80.iy().value() == 0xa0d5)
    XCTAssert(z80.fetchRam(location: 0x651f) == 0x12)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb27() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc3,0x27])
    loadRam(location: 0x1f2c, data:[0xac])
    z80.af().ld(value: 0xa806)
    z80.bc().ld(value: 0x5669)
    z80.de().ld(value: 0x1bee)
    z80.hl().ld(value: 0xf62c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1f69)
    z80.iy().ld(value: 0x3418)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5809)
    XCTAssert(z80.bc().value() == 0x5669)
    XCTAssert(z80.de().value() == 0x1bee)
    XCTAssert(z80.hl().value() == 0xf62c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1f69)
    XCTAssert(z80.iy().value() == 0x3418)
    XCTAssert(z80.fetchRam(location: 0x1f2c) == 0x58)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb28() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb6,0x28])
    loadRam(location: 0x9951, data:[0x24])
    z80.af().ld(value: 0x7afd)
    z80.bc().ld(value: 0x64b8)
    z80.de().ld(value: 0x51f7)
    z80.hl().ld(value: 0x7164)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x999b)
    z80.iy().ld(value: 0x8857)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7a04)
    XCTAssert(z80.bc().value() == 0x12b8)
    XCTAssert(z80.de().value() == 0x51f7)
    XCTAssert(z80.hl().value() == 0x7164)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x999b)
    XCTAssert(z80.iy().value() == 0x8857)
    XCTAssert(z80.fetchRam(location: 0x9951) == 0x12)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb29() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9c,0x29])
    loadRam(location: 0x2083, data:[0x82])
    z80.af().ld(value: 0x0404)
    z80.bc().ld(value: 0xb794)
    z80.de().ld(value: 0x323f)
    z80.hl().ld(value: 0xfd34)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x20e7)
    z80.iy().ld(value: 0xc753)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x480)
    XCTAssert(z80.bc().value() == 0xb7c1)
    XCTAssert(z80.de().value() == 0x323f)
    XCTAssert(z80.hl().value() == 0xfd34)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x20e7)
    XCTAssert(z80.iy().value() == 0xc753)
    XCTAssert(z80.fetchRam(location: 0x2083) == 0xc1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd8,0x2a])
    loadRam(location: 0x94dd, data:[0x7c])
    z80.af().ld(value: 0x4524)
    z80.bc().ld(value: 0xafde)
    z80.de().ld(value: 0x0c08)
    z80.hl().ld(value: 0x75d7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9505)
    z80.iy().ld(value: 0xb624)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4528)
    XCTAssert(z80.bc().value() == 0xafde)
    XCTAssert(z80.de().value() == 0x3e08)
    XCTAssert(z80.hl().value() == 0x75d7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9505)
    XCTAssert(z80.iy().value() == 0xb624)
    XCTAssert(z80.fetchRam(location: 0x94dd) == 0x3e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbd,0x2b])
    loadRam(location: 0xb441, data:[0x44])
    z80.af().ld(value: 0x8324)
    z80.bc().ld(value: 0xe290)
    z80.de().ld(value: 0x26be)
    z80.hl().ld(value: 0x7ddd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb484)
    z80.iy().ld(value: 0x571c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8324)
    XCTAssert(z80.bc().value() == 0xe290)
    XCTAssert(z80.de().value() == 0x2622)
    XCTAssert(z80.hl().value() == 0x7ddd)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb484)
    XCTAssert(z80.iy().value() == 0x571c)
    XCTAssert(z80.fetchRam(location: 0xb441) == 0x22)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x2c,0x2c])
    loadRam(location: 0xfe54, data:[0x81])
    z80.af().ld(value: 0xc688)
    z80.bc().ld(value: 0x0c94)
    z80.de().ld(value: 0x6e4b)
    z80.hl().ld(value: 0x7dc7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe28)
    z80.iy().ld(value: 0xdc80)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc685)
    XCTAssert(z80.bc().value() == 0x0c94)
    XCTAssert(z80.de().value() == 0x6e4b)
    XCTAssert(z80.hl().value() == 0xc0c7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfe28)
    XCTAssert(z80.iy().value() == 0xdc80)
    XCTAssert(z80.fetchRam(location: 0xfe54) == 0xc0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9b,0x2d])
    loadRam(location: 0xb488, data:[0x44])
    z80.af().ld(value: 0xce28)
    z80.bc().ld(value: 0xd2ae)
    z80.de().ld(value: 0xc9be)
    z80.hl().ld(value: 0x4236)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb4ed)
    z80.iy().ld(value: 0x6de3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xce24)
    XCTAssert(z80.bc().value() == 0xd2ae)
    XCTAssert(z80.de().value() == 0xc9be)
    XCTAssert(z80.hl().value() == 0x4222)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb4ed)
    XCTAssert(z80.iy().value() == 0x6de3)
    XCTAssert(z80.fetchRam(location: 0xb488) == 0x22)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3d,0x2e])
    loadRam(location: 0x6a15, data:[0x05])
    z80.af().ld(value: 0x50b0)
    z80.bc().ld(value: 0xde74)
    z80.de().ld(value: 0xeca8)
    z80.hl().ld(value: 0x83ff)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x69d8)
    z80.iy().ld(value: 0x75c7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5001)
    XCTAssert(z80.bc().value() == 0xde74)
    XCTAssert(z80.de().value() == 0xeca8)
    XCTAssert(z80.hl().value() == 0x83ff)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x69d8)
    XCTAssert(z80.iy().value() == 0x75c7)
    XCTAssert(z80.fetchRam(location: 0x6a15) == 0x2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb2f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd3,0x2f])
    loadRam(location: 0x7a03, data:[0xf2])
    z80.af().ld(value: 0xaec6)
    z80.bc().ld(value: 0x759b)
    z80.de().ld(value: 0x3059)
    z80.hl().ld(value: 0x01b9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7a30)
    z80.iy().ld(value: 0xdd56)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf9ac)
    XCTAssert(z80.bc().value() == 0x759b)
    XCTAssert(z80.de().value() == 0x3059)
    XCTAssert(z80.hl().value() == 0x01b9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7a30)
    XCTAssert(z80.iy().value() == 0xdd56)
    XCTAssert(z80.fetchRam(location: 0x7a03) == 0xf9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb30() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdf,0x30])
    loadRam(location: 0xeec7, data:[0x32])
    z80.af().ld(value: 0x3c89)
    z80.bc().ld(value: 0x96ad)
    z80.de().ld(value: 0x9cc7)
    z80.hl().ld(value: 0xa68c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeee8)
    z80.iy().ld(value: 0x5a80)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3c24)
    XCTAssert(z80.bc().value() == 0x65ad)
    XCTAssert(z80.de().value() == 0x9cc7)
    XCTAssert(z80.hl().value() == 0xa68c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeee8)
    XCTAssert(z80.iy().value() == 0x5a80)
    XCTAssert(z80.fetchRam(location: 0xeec7) == 0x65)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb31() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x49,0x31])
    loadRam(location: 0xf276, data:[0xcd])
    z80.af().ld(value: 0xebf5)
    z80.bc().ld(value: 0x41e9)
    z80.de().ld(value: 0x929b)
    z80.hl().ld(value: 0x7d47)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf22d)
    z80.iy().ld(value: 0x8943)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xeb89)
    XCTAssert(z80.bc().value() == 0x419b)
    XCTAssert(z80.de().value() == 0x929b)
    XCTAssert(z80.hl().value() == 0x7d47)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf22d)
    XCTAssert(z80.iy().value() == 0x8943)
    XCTAssert(z80.fetchRam(location: 0xf276) == 0x9b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb32() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe0,0x32])
    loadRam(location: 0x577f, data:[0xe2])
    z80.af().ld(value: 0x9a1b)
    z80.bc().ld(value: 0xaa64)
    z80.de().ld(value: 0x4209)
    z80.hl().ld(value: 0x01ad)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x579f)
    z80.iy().ld(value: 0xec4c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9a85)
    XCTAssert(z80.bc().value() == 0xaa64)
    XCTAssert(z80.de().value() == 0xc509)
    XCTAssert(z80.hl().value() == 0x01ad)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x579f)
    XCTAssert(z80.iy().value() == 0xec4c)
    XCTAssert(z80.fetchRam(location: 0x577f) == 0xc5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb33() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc9,0x33])
    loadRam(location: 0xef75, data:[0x0b])
    z80.af().ld(value: 0xb8b1)
    z80.bc().ld(value: 0xb854)
    z80.de().ld(value: 0x524f)
    z80.hl().ld(value: 0x9599)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xefac)
    z80.iy().ld(value: 0xd9ec)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb804)
    XCTAssert(z80.bc().value() == 0xb854)
    XCTAssert(z80.de().value() == 0x5217)
    XCTAssert(z80.hl().value() == 0x9599)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xefac)
    XCTAssert(z80.iy().value() == 0xd9ec)
    XCTAssert(z80.fetchRam(location: 0xef75) == 0x17)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb34() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x49,0x34])
    loadRam(location: 0xab91, data:[0xef])
    z80.af().ld(value: 0xcd3c)
    z80.bc().ld(value: 0x4432)
    z80.de().ld(value: 0x20d4)
    z80.hl().ld(value: 0x0b3e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xab48)
    z80.iy().ld(value: 0xc95f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcd89)
    XCTAssert(z80.bc().value() == 0x4432)
    XCTAssert(z80.de().value() == 0x20d4)
    XCTAssert(z80.hl().value() == 0xdf3e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xab48)
    XCTAssert(z80.iy().value() == 0xc95f)
    XCTAssert(z80.fetchRam(location: 0xab91) == 0xdf)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb35() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb9,0x35])
    loadRam(location: 0xead3, data:[0x8f])
    z80.af().ld(value: 0xdeb1)
    z80.bc().ld(value: 0xc6fc)
    z80.de().ld(value: 0x696d)
    z80.hl().ld(value: 0x150d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeb1a)
    z80.iy().ld(value: 0x4a12)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xde09)
    XCTAssert(z80.bc().value() == 0xc6fc)
    XCTAssert(z80.de().value() == 0x696d)
    XCTAssert(z80.hl().value() == 0x151f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeb1a)
    XCTAssert(z80.iy().value() == 0x4a12)
    XCTAssert(z80.fetchRam(location: 0xead3) == 0x1f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb36() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb4,0x36])
    loadRam(location: 0x12e2, data:[0x02])
    z80.af().ld(value: 0x3d81)
    z80.bc().ld(value: 0x443b)
    z80.de().ld(value: 0xff21)
    z80.hl().ld(value: 0x63e3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x132e)
    z80.iy().ld(value: 0xfb39)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3d04)
    XCTAssert(z80.bc().value() == 0x443b)
    XCTAssert(z80.de().value() == 0xff21)
    XCTAssert(z80.hl().value() == 0x63e3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x132e)
    XCTAssert(z80.iy().value() == 0xfb39)
    XCTAssert(z80.fetchRam(location: 0x12e2) == 0x5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb37() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc6,0x37])
    loadRam(location: 0x503d, data:[0x3d])
    z80.af().ld(value: 0x72d9)
    z80.bc().ld(value: 0xbfc9)
    z80.de().ld(value: 0xa69a)
    z80.hl().ld(value: 0xec0b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5077)
    z80.iy().ld(value: 0x4e3e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7b2c)
    XCTAssert(z80.bc().value() == 0xbfc9)
    XCTAssert(z80.de().value() == 0xa69a)
    XCTAssert(z80.hl().value() == 0xec0b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5077)
    XCTAssert(z80.iy().value() == 0x4e3e)
    XCTAssert(z80.fetchRam(location: 0x503d) == 0x7b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb38() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x8e,0x38])
    loadRam(location: 0xf623, data:[0x5e])
    z80.af().ld(value: 0x3c64)
    z80.bc().ld(value: 0xb1ee)
    z80.de().ld(value: 0x38e1)
    z80.hl().ld(value: 0xae9f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf695)
    z80.iy().ld(value: 0x44b3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3c28)
    XCTAssert(z80.bc().value() == 0x2fee)
    XCTAssert(z80.de().value() == 0x38e1)
    XCTAssert(z80.hl().value() == 0xae9f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf695)
    XCTAssert(z80.iy().value() == 0x44b3)
    XCTAssert(z80.fetchRam(location: 0xf623) == 0x2f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb39() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdc,0x39])
    loadRam(location: 0xa871, data:[0x83])
    z80.af().ld(value: 0x05d6)
    z80.bc().ld(value: 0x9aad)
    z80.de().ld(value: 0xa2db)
    z80.hl().ld(value: 0xdf75)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa895)
    z80.iy().ld(value: 0xe243)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x505)
    XCTAssert(z80.bc().value() == 0x9a41)
    XCTAssert(z80.de().value() == 0xa2db)
    XCTAssert(z80.hl().value() == 0xdf75)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa895)
    XCTAssert(z80.iy().value() == 0xe243)
    XCTAssert(z80.fetchRam(location: 0xa871) == 0x41)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0d,0x3a])
    loadRam(location: 0x259e, data:[0x89])
    z80.af().ld(value: 0x0e22)
    z80.bc().ld(value: 0x0b9f)
    z80.de().ld(value: 0x873b)
    z80.hl().ld(value: 0xc01d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2591)
    z80.iy().ld(value: 0x49c3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x0e05)
    XCTAssert(z80.bc().value() == 0x0b9f)
    XCTAssert(z80.de().value() == 0x443b)
    XCTAssert(z80.hl().value() == 0xc01d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2591)
    XCTAssert(z80.iy().value() == 0x49c3)
    XCTAssert(z80.fetchRam(location: 0x259e) == 0x44)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x20,0x3b])
    loadRam(location: 0x700d, data:[0xa9])
    z80.af().ld(value: 0x1bd9)
    z80.bc().ld(value: 0xc795)
    z80.de().ld(value: 0xd8ae)
    z80.hl().ld(value: 0x7ccf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6fed)
    z80.iy().ld(value: 0x09dc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1b01)
    XCTAssert(z80.bc().value() == 0xc795)
    XCTAssert(z80.de().value() == 0xd854)
    XCTAssert(z80.hl().value() == 0x7ccf)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6fed)
    XCTAssert(z80.iy().value() == 0x09dc)
    XCTAssert(z80.fetchRam(location: 0x700d) == 0x54)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe1,0x3c])
    loadRam(location: 0xf51c, data:[0xd0])
    z80.af().ld(value: 0xb651)
    z80.bc().ld(value: 0xbdf7)
    z80.de().ld(value: 0xfca3)
    z80.hl().ld(value: 0x7529)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf53b)
    z80.iy().ld(value: 0x018b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb628)
    XCTAssert(z80.bc().value() == 0xbdf7)
    XCTAssert(z80.de().value() == 0xfca3)
    XCTAssert(z80.hl().value() == 0x6829)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf53b)
    XCTAssert(z80.iy().value() == 0x018b)
    XCTAssert(z80.fetchRam(location: 0xf51c) == 0x68)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbe,0x3d])
    loadRam(location: 0x02de, data:[0x58])
    z80.af().ld(value: 0x2a2d)
    z80.bc().ld(value: 0x6e6e)
    z80.de().ld(value: 0xcfbd)
    z80.hl().ld(value: 0x1db5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0320)
    z80.iy().ld(value: 0x6ab0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2a28)
    XCTAssert(z80.bc().value() == 0x6e6e)
    XCTAssert(z80.de().value() == 0xcfbd)
    XCTAssert(z80.hl().value() == 0x1d2c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x320)
    XCTAssert(z80.iy().value() == 0x6ab0)
    XCTAssert(z80.fetchRam(location: 0x02de) == 0x2c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x0a,0x3e])
    loadRam(location: 0x7854, data:[0x5d])
    z80.af().ld(value: 0x39b8)
    z80.bc().ld(value: 0xb26e)
    z80.de().ld(value: 0xb670)
    z80.hl().ld(value: 0xb8a2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x784a)
    z80.iy().ld(value: 0x7840)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x392d)
    XCTAssert(z80.bc().value() == 0xb26e)
    XCTAssert(z80.de().value() == 0xb670)
    XCTAssert(z80.hl().value() == 0xb8a2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x784a)
    XCTAssert(z80.iy().value() == 0x7840)
    XCTAssert(z80.fetchRam(location: 0x7854) == 0x2e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb3f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x31,0x3f])
    loadRam(location: 0x34b9, data:[0x04])
    z80.af().ld(value: 0x2a17)
    z80.bc().ld(value: 0x429d)
    z80.de().ld(value: 0xd8c0)
    z80.hl().ld(value: 0xe069)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3488)
    z80.iy().ld(value: 0x7150)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x200)
    XCTAssert(z80.bc().value() == 0x429d)
    XCTAssert(z80.de().value() == 0xd8c0)
    XCTAssert(z80.hl().value() == 0xe069)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3488)
    XCTAssert(z80.iy().value() == 0x7150)
    XCTAssert(z80.fetchRam(location: 0x34b9) == 0x2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb40() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbd,0x40])
    loadRam(location: 0x8bbe, data:[0xe7])
    z80.af().ld(value: 0x119b)
    z80.bc().ld(value: 0xf6ba)
    z80.de().ld(value: 0x079e)
    z80.hl().ld(value: 0x0e41)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8c01)
    z80.iy().ld(value: 0xcd21)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1119)
    XCTAssert(z80.bc().value() == 0xf6ba)
    XCTAssert(z80.de().value() == 0x079e)
    XCTAssert(z80.hl().value() == 0x0e41)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8c01)
    XCTAssert(z80.iy().value() == 0xcd21)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb41() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x52,0x41])
    loadRam(location: 0xce21, data:[0x75])
    z80.af().ld(value: 0x22b3)
    z80.bc().ld(value: 0xc4b0)
    z80.de().ld(value: 0x575b)
    z80.hl().ld(value: 0x66b4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcdcf)
    z80.iy().ld(value: 0xa25c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2219)
    XCTAssert(z80.bc().value() == 0xc4b0)
    XCTAssert(z80.de().value() == 0x575b)
    XCTAssert(z80.hl().value() == 0x66b4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xcdcf)
    XCTAssert(z80.iy().value() == 0xa25c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb42() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x1e,0x42])
    loadRam(location: 0xf058, data:[0x90])
    z80.af().ld(value: 0xaf5e)
    z80.bc().ld(value: 0x7720)
    z80.de().ld(value: 0xaa95)
    z80.hl().ld(value: 0x3b0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf03a)
    z80.iy().ld(value: 0x856a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaf74)
    XCTAssert(z80.bc().value() == 0x7720)
    XCTAssert(z80.de().value() == 0xaa95)
    XCTAssert(z80.hl().value() == 0x3b0a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf03a)
    XCTAssert(z80.iy().value() == 0x856a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb43() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbc,0x43])
    loadRam(location: 0xe872, data:[0x6b])
    z80.af().ld(value: 0x7fa6)
    z80.bc().ld(value: 0xb699)
    z80.de().ld(value: 0x5e71)
    z80.hl().ld(value: 0x1827)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe8b6)
    z80.iy().ld(value: 0x96a8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7f38)
    XCTAssert(z80.bc().value() == 0xb699)
    XCTAssert(z80.de().value() == 0x5e71)
    XCTAssert(z80.hl().value() == 0x1827)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe8b6)
    XCTAssert(z80.iy().value() == 0x96a8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb44() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe8,0x44])
    loadRam(location: 0xedf2, data:[0x62])
    z80.af().ld(value: 0x5faa)
    z80.bc().ld(value: 0xde05)
    z80.de().ld(value: 0x12fd)
    z80.hl().ld(value: 0xf73b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xee0a)
    z80.iy().ld(value: 0x6634)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5f7c)
    XCTAssert(z80.bc().value() == 0xde05)
    XCTAssert(z80.de().value() == 0x12fd)
    XCTAssert(z80.hl().value() == 0xf73b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xee0a)
    XCTAssert(z80.iy().value() == 0x6634)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb45() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x02,0x45])
    loadRam(location: 0xa2c0, data:[0x55])
    z80.af().ld(value: 0xeac7)
    z80.bc().ld(value: 0x699c)
    z80.de().ld(value: 0x47d3)
    z80.hl().ld(value: 0x89c3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa2be)
    z80.iy().ld(value: 0xd81e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xea31)
    XCTAssert(z80.bc().value() == 0x699c)
    XCTAssert(z80.de().value() == 0x47d3)
    XCTAssert(z80.hl().value() == 0x89c3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa2be)
    XCTAssert(z80.iy().value() == 0xd81e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb46() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe2,0x46])
    loadRam(location: 0xa381, data:[0xd5])
    z80.af().ld(value: 0x60de)
    z80.bc().ld(value: 0xac1d)
    z80.de().ld(value: 0x4173)
    z80.hl().ld(value: 0xf92a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa39f)
    z80.iy().ld(value: 0x12e5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6030)
    XCTAssert(z80.bc().value() == 0xac1d)
    XCTAssert(z80.de().value() == 0x4173)
    XCTAssert(z80.hl().value() == 0xf92a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa39f)
    XCTAssert(z80.iy().value() == 0x12e5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb47() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7a,0x47])
    loadRam(location: 0x52a1, data:[0x6a])
    z80.af().ld(value: 0x1b1a)
    z80.bc().ld(value: 0xf7c0)
    z80.de().ld(value: 0x22f6)
    z80.hl().ld(value: 0x5253)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5227)
    z80.iy().ld(value: 0x919d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1b54)
    XCTAssert(z80.bc().value() == 0xf7c0)
    XCTAssert(z80.de().value() == 0x22f6)
    XCTAssert(z80.hl().value() == 0x5253)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5227)
    XCTAssert(z80.iy().value() == 0x919d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb48() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x13,0x48])
    loadRam(location: 0x2759, data:[0xa8])
    z80.af().ld(value: 0x721a)
    z80.bc().ld(value: 0x4509)
    z80.de().ld(value: 0xd68f)
    z80.hl().ld(value: 0x3b3d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2746)
    z80.iy().ld(value: 0x7f97)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7274)
    XCTAssert(z80.bc().value() == 0x4509)
    XCTAssert(z80.de().value() == 0xd68f)
    XCTAssert(z80.hl().value() == 0x3b3d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2746)
    XCTAssert(z80.iy().value() == 0x7f97)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb49() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x94,0x49])
    loadRam(location: 0x415a, data:[0x26])
    z80.af().ld(value: 0x7fe9)
    z80.bc().ld(value: 0xda22)
    z80.de().ld(value: 0xea9c)
    z80.hl().ld(value: 0xf480)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x41c6)
    z80.iy().ld(value: 0x75a9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7f11)
    XCTAssert(z80.bc().value() == 0xda22)
    XCTAssert(z80.de().value() == 0xea9c)
    XCTAssert(z80.hl().value() == 0xf480)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x41c6)
    XCTAssert(z80.iy().value() == 0x75a9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3b,0x4a])
    loadRam(location: 0xc026, data:[0xb5])
    z80.af().ld(value: 0xf16d)
    z80.bc().ld(value: 0xe6c3)
    z80.de().ld(value: 0x5a42)
    z80.hl().ld(value: 0x8b21)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xbfeb)
    z80.iy().ld(value: 0xe383)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf155)
    XCTAssert(z80.bc().value() == 0xe6c3)
    XCTAssert(z80.de().value() == 0x5a42)
    XCTAssert(z80.hl().value() == 0x8b21)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbfeb)
    XCTAssert(z80.iy().value() == 0xe383)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb0,0x4b])
    loadRam(location: 0xc1e9, data:[0x18])
    z80.af().ld(value: 0x1050)
    z80.bc().ld(value: 0x880a)
    z80.de().ld(value: 0x52b2)
    z80.hl().ld(value: 0xfb1b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc239)
    z80.iy().ld(value: 0x6b40)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1054)
    XCTAssert(z80.bc().value() == 0x880a)
    XCTAssert(z80.de().value() == 0x52b2)
    XCTAssert(z80.hl().value() == 0xfb1b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc239)
    XCTAssert(z80.iy().value() == 0x6b40)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x97,0x4c])
    loadRam(location: 0x86e3, data:[0x63])
    z80.af().ld(value: 0x0538)
    z80.bc().ld(value: 0xbc63)
    z80.de().ld(value: 0xf081)
    z80.hl().ld(value: 0x0a55)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x874c)
    z80.iy().ld(value: 0x80a3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x510)
    XCTAssert(z80.bc().value() == 0xbc63)
    XCTAssert(z80.de().value() == 0xf081)
    XCTAssert(z80.hl().value() == 0x0a55)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x874c)
    XCTAssert(z80.iy().value() == 0x80a3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x15,0x4d])
    loadRam(location: 0x7d3f, data:[0x60])
    z80.af().ld(value: 0x7f8c)
    z80.bc().ld(value: 0x32b4)
    z80.de().ld(value: 0x03d5)
    z80.hl().ld(value: 0xef66)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7d2a)
    z80.iy().ld(value: 0x03bc)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7f7c)
    XCTAssert(z80.bc().value() == 0x32b4)
    XCTAssert(z80.de().value() == 0x03d5)
    XCTAssert(z80.hl().value() == 0xef66)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7d2a)
    XCTAssert(z80.iy().value() == 0x03bc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb0,0x4e])
    loadRam(location: 0xea8e, data:[0x3b])
    z80.af().ld(value: 0x7c67)
    z80.bc().ld(value: 0xfa92)
    z80.de().ld(value: 0xb4d0)
    z80.hl().ld(value: 0x9f23)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeade)
    z80.iy().ld(value: 0x1785)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7c39)
    XCTAssert(z80.bc().value() == 0xfa92)
    XCTAssert(z80.de().value() == 0xb4d0)
    XCTAssert(z80.hl().value() == 0x9f23)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeade)
    XCTAssert(z80.iy().value() == 0x1785)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb4f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x8b,0x4f])
    loadRam(location: 0x884b, data:[0x4c])
    z80.af().ld(value: 0x725c)
    z80.bc().ld(value: 0x257b)
    z80.de().ld(value: 0xdb73)
    z80.hl().ld(value: 0x2478)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x88c0)
    z80.iy().ld(value: 0xf151)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x725c)
    XCTAssert(z80.bc().value() == 0x257b)
    XCTAssert(z80.de().value() == 0xdb73)
    XCTAssert(z80.hl().value() == 0x2478)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x88c0)
    XCTAssert(z80.iy().value() == 0xf151)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb50() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x12,0x50])
    loadRam(location: 0xdb04, data:[0x00])
    z80.af().ld(value: 0x35f4)
    z80.bc().ld(value: 0x8e51)
    z80.de().ld(value: 0x406c)
    z80.hl().ld(value: 0x2e3c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdaf2)
    z80.iy().ld(value: 0x413c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x355c)
    XCTAssert(z80.bc().value() == 0x8e51)
    XCTAssert(z80.de().value() == 0x406c)
    XCTAssert(z80.hl().value() == 0x2e3c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdaf2)
    XCTAssert(z80.iy().value() == 0x413c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb51() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x18,0x51])
    loadRam(location: 0x84ca, data:[0x1c])
    z80.af().ld(value: 0xa630)
    z80.bc().ld(value: 0xba85)
    z80.de().ld(value: 0xc88c)
    z80.hl().ld(value: 0xe86c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x84b2)
    z80.iy().ld(value: 0xcd8e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa610)
    XCTAssert(z80.bc().value() == 0xba85)
    XCTAssert(z80.de().value() == 0xc88c)
    XCTAssert(z80.hl().value() == 0xe86c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x84b2)
    XCTAssert(z80.iy().value() == 0xcd8e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb52() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x42,0x52])
    loadRam(location: 0x6198, data:[0x53])
    z80.af().ld(value: 0xcb88)
    z80.bc().ld(value: 0x1220)
    z80.de().ld(value: 0x1103)
    z80.hl().ld(value: 0xa868)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6156)
    z80.iy().ld(value: 0xcfac)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcb74)
    XCTAssert(z80.bc().value() == 0x1220)
    XCTAssert(z80.de().value() == 0x1103)
    XCTAssert(z80.hl().value() == 0xa868)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6156)
    XCTAssert(z80.iy().value() == 0xcfac)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb53() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe3,0x53])
    loadRam(location: 0xae28, data:[0xd6])
    z80.af().ld(value: 0x5eb3)
    z80.bc().ld(value: 0x569e)
    z80.de().ld(value: 0xf76d)
    z80.hl().ld(value: 0x88c6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xae45)
    z80.iy().ld(value: 0x623e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5e39)
    XCTAssert(z80.bc().value() == 0x569e)
    XCTAssert(z80.de().value() == 0xf76d)
    XCTAssert(z80.hl().value() == 0x88c6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xae45)
    XCTAssert(z80.iy().value() == 0x623e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb54() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7d,0x54])
    loadRam(location: 0xf052, data:[0x5d])
    z80.af().ld(value: 0xc3c9)
    z80.bc().ld(value: 0x76fe)
    z80.de().ld(value: 0xf1ff)
    z80.hl().ld(value: 0x416e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xefd5)
    z80.iy().ld(value: 0x7576)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc331)
    XCTAssert(z80.bc().value() == 0x76fe)
    XCTAssert(z80.de().value() == 0xf1ff)
    XCTAssert(z80.hl().value() == 0x416e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xefd5)
    XCTAssert(z80.iy().value() == 0x7576)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb55() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x88,0x55])
    loadRam(location: 0xf2da, data:[0x03])
    z80.af().ld(value: 0x7068)
    z80.bc().ld(value: 0xdcd0)
    z80.de().ld(value: 0x8345)
    z80.hl().ld(value: 0xd498)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf352)
    z80.iy().ld(value: 0xa88b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7074)
    XCTAssert(z80.bc().value() == 0xdcd0)
    XCTAssert(z80.de().value() == 0x8345)
    XCTAssert(z80.hl().value() == 0xd498)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf352)
    XCTAssert(z80.iy().value() == 0xa88b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb56() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x57,0x56])
    loadRam(location: 0x6d87, data:[0x61])
    z80.af().ld(value: 0x9128)
    z80.bc().ld(value: 0x2cb8)
    z80.de().ld(value: 0x571c)
    z80.hl().ld(value: 0xf4fd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6d30)
    z80.iy().ld(value: 0xaec2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x917c)
    XCTAssert(z80.bc().value() == 0x2cb8)
    XCTAssert(z80.de().value() == 0x571c)
    XCTAssert(z80.hl().value() == 0xf4fd)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6d30)
    XCTAssert(z80.iy().value() == 0xaec2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb57() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x06,0x57])
    loadRam(location: 0x5839, data:[0x1d])
    z80.af().ld(value: 0x3ca7)
    z80.bc().ld(value: 0x541a)
    z80.de().ld(value: 0x027c)
    z80.hl().ld(value: 0xc0b4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5833)
    z80.iy().ld(value: 0x160a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3c19)
    XCTAssert(z80.bc().value() == 0x541a)
    XCTAssert(z80.de().value() == 0x027c)
    XCTAssert(z80.hl().value() == 0xc0b4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5833)
    XCTAssert(z80.iy().value() == 0x160a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb58() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x83,0x58])
    loadRam(location: 0x69c9, data:[0x0f])
    z80.af().ld(value: 0xc650)
    z80.bc().ld(value: 0xe1a8)
    z80.de().ld(value: 0x9d6c)
    z80.hl().ld(value: 0xbec3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6a46)
    z80.iy().ld(value: 0xb66c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc638)
    XCTAssert(z80.bc().value() == 0xe1a8)
    XCTAssert(z80.de().value() == 0x9d6c)
    XCTAssert(z80.hl().value() == 0xbec3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6a46)
    XCTAssert(z80.iy().value() == 0xb66c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb59() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdb,0x59])
    loadRam(location: 0x9170, data:[0x10])
    z80.af().ld(value: 0xad07)
    z80.bc().ld(value: 0x9bda)
    z80.de().ld(value: 0xb7ee)
    z80.hl().ld(value: 0x63c4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9195)
    z80.iy().ld(value: 0x9703)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xad55)
    XCTAssert(z80.bc().value() == 0x9bda)
    XCTAssert(z80.de().value() == 0xb7ee)
    XCTAssert(z80.hl().value() == 0x63c4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9195)
    XCTAssert(z80.iy().value() == 0x9703)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd1,0x5a])
    loadRam(location: 0x0db1, data:[0xbe])
    z80.af().ld(value: 0x80c0)
    z80.bc().ld(value: 0x5105)
    z80.de().ld(value: 0x36b0)
    z80.hl().ld(value: 0xa37c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0de0)
    z80.iy().ld(value: 0xce7f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8018)
    XCTAssert(z80.bc().value() == 0x5105)
    XCTAssert(z80.de().value() == 0x36b0)
    XCTAssert(z80.hl().value() == 0xa37c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0de0)
    XCTAssert(z80.iy().value() == 0xce7f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd5,0x5b])
    loadRam(location: 0x6282, data:[0x67])
    z80.af().ld(value: 0x2a8d)
    z80.bc().ld(value: 0x083d)
    z80.de().ld(value: 0x1409)
    z80.hl().ld(value: 0x06ba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x62ad)
    z80.iy().ld(value: 0xbaff)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2a75)
    XCTAssert(z80.bc().value() == 0x083d)
    XCTAssert(z80.de().value() == 0x1409)
    XCTAssert(z80.hl().value() == 0x06ba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x62ad)
    XCTAssert(z80.iy().value() == 0xbaff)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x5c,0x5c])
    loadRam(location: 0x9e22, data:[0xc9])
    z80.af().ld(value: 0x4ca4)
    z80.bc().ld(value: 0xe502)
    z80.de().ld(value: 0xd23c)
    z80.hl().ld(value: 0x6da8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9dc6)
    z80.iy().ld(value: 0x6f04)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4c18)
    XCTAssert(z80.bc().value() == 0xe502)
    XCTAssert(z80.de().value() == 0xd23c)
    XCTAssert(z80.hl().value() == 0x6da8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9dc6)
    XCTAssert(z80.iy().value() == 0x6f04)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xff,0x5d])
    loadRam(location: 0xd192, data:[0x0d])
    z80.af().ld(value: 0x7e39)
    z80.bc().ld(value: 0x511b)
    z80.de().ld(value: 0x3cfa)
    z80.hl().ld(value: 0x60d3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd193)
    z80.iy().ld(value: 0x3fe9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7e11)
    XCTAssert(z80.bc().value() == 0x511b)
    XCTAssert(z80.de().value() == 0x3cfa)
    XCTAssert(z80.hl().value() == 0x60d3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd193)
    XCTAssert(z80.iy().value() == 0x3fe9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x62,0x5e])
    loadRam(location: 0xed76, data:[0xa7])
    z80.af().ld(value: 0xcef1)
    z80.bc().ld(value: 0x0235)
    z80.de().ld(value: 0xe2b1)
    z80.hl().ld(value: 0x7a4c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xed14)
    z80.iy().ld(value: 0xd0d6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xce7d)
    XCTAssert(z80.bc().value() == 0x235)
    XCTAssert(z80.de().value() == 0xe2b1)
    XCTAssert(z80.hl().value() == 0x7a4c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xed14)
    XCTAssert(z80.iy().value() == 0xd0d6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb5f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3f,0x5f])
    loadRam(location: 0xdf85, data:[0x9e])
    z80.af().ld(value: 0x094f)
    z80.bc().ld(value: 0x20a8)
    z80.de().ld(value: 0x52e1)
    z80.hl().ld(value: 0xd783)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdf46)
    z80.iy().ld(value: 0xda41)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x919)
    XCTAssert(z80.bc().value() == 0x20a8)
    XCTAssert(z80.de().value() == 0x52e1)
    XCTAssert(z80.hl().value() == 0xd783)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdf46)
    XCTAssert(z80.iy().value() == 0xda41)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb60() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x65,0x60])
    loadRam(location: 0x3307, data:[0x2e])
    z80.af().ld(value: 0x42ce)
    z80.bc().ld(value: 0x0713)
    z80.de().ld(value: 0xdc90)
    z80.hl().ld(value: 0x2c89)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x32a2)
    z80.iy().ld(value: 0xc4d4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4274)
    XCTAssert(z80.bc().value() == 0x713)
    XCTAssert(z80.de().value() == 0xdc90)
    XCTAssert(z80.hl().value() == 0x2c89)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x32a2)
    XCTAssert(z80.iy().value() == 0xc4d4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb61() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xa8,0x61])
    loadRam(location: 0x3673, data:[0xbc])
    z80.af().ld(value: 0x1b36)
    z80.bc().ld(value: 0x1403)
    z80.de().ld(value: 0x8b9b)
    z80.hl().ld(value: 0xc221)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x36cb)
    z80.iy().ld(value: 0x93d4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1b30)
    XCTAssert(z80.bc().value() == 0x1403)
    XCTAssert(z80.de().value() == 0x8b9b)
    XCTAssert(z80.hl().value() == 0xc221)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x36cb)
    XCTAssert(z80.iy().value() == 0x93d4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb62() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd9,0x62])
    loadRam(location: 0x0aa5, data:[0xea])
    z80.af().ld(value: 0x361b)
    z80.bc().ld(value: 0x4055)
    z80.de().ld(value: 0x650a)
    z80.hl().ld(value: 0x3f98)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0acc)
    z80.iy().ld(value: 0xa102)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x365d)
    XCTAssert(z80.bc().value() == 0x4055)
    XCTAssert(z80.de().value() == 0x650a)
    XCTAssert(z80.hl().value() == 0x3f98)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0acc)
    XCTAssert(z80.iy().value() == 0xa102)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb63() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x79,0x63])
    loadRam(location: 0xe6f2, data:[0x83])
    z80.af().ld(value: 0x6548)
    z80.bc().ld(value: 0x08df)
    z80.de().ld(value: 0x3ceb)
    z80.hl().ld(value: 0x6d24)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe679)
    z80.iy().ld(value: 0xf98e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6574)
    XCTAssert(z80.bc().value() == 0x08df)
    XCTAssert(z80.de().value() == 0x3ceb)
    XCTAssert(z80.hl().value() == 0x6d24)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe679)
    XCTAssert(z80.iy().value() == 0xf98e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb64() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x71,0x64])
    loadRam(location: 0xed6c, data:[0x52])
    z80.af().ld(value: 0x3c22)
    z80.bc().ld(value: 0xe2a7)
    z80.de().ld(value: 0x6da9)
    z80.hl().ld(value: 0xc346)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xecfb)
    z80.iy().ld(value: 0x85b6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3c38)
    XCTAssert(z80.bc().value() == 0xe2a7)
    XCTAssert(z80.de().value() == 0x6da9)
    XCTAssert(z80.hl().value() == 0xc346)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xecfb)
    XCTAssert(z80.iy().value() == 0x85b6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb65() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x67,0x65])
    loadRam(location: 0x77e0, data:[0xf5])
    z80.af().ld(value: 0x09bd)
    z80.bc().ld(value: 0x0abb)
    z80.de().ld(value: 0x3afa)
    z80.hl().ld(value: 0x91f5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7779)
    z80.iy().ld(value: 0xaef5)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x931)
    XCTAssert(z80.bc().value() == 0x0abb)
    XCTAssert(z80.de().value() == 0x3afa)
    XCTAssert(z80.hl().value() == 0x91f5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7779)
    XCTAssert(z80.iy().value() == 0xaef5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb66() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x63,0x66])
    loadRam(location: 0xee78, data:[0x70])
    z80.af().ld(value: 0xccbc)
    z80.bc().ld(value: 0xd301)
    z80.de().ld(value: 0x9b66)
    z80.hl().ld(value: 0x40fb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xee15)
    z80.iy().ld(value: 0x0d23)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcc38)
    XCTAssert(z80.bc().value() == 0xd301)
    XCTAssert(z80.de().value() == 0x9b66)
    XCTAssert(z80.hl().value() == 0x40fb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xee15)
    XCTAssert(z80.iy().value() == 0x0d23)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb67() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xd7,0x67])
    loadRam(location: 0xee78, data:[0x06])
    z80.af().ld(value: 0xeccb)
    z80.bc().ld(value: 0x342f)
    z80.de().ld(value: 0xbe3e)
    z80.hl().ld(value: 0xa79b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xeea1)
    z80.iy().ld(value: 0xdfae)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xec7d)
    XCTAssert(z80.bc().value() == 0x342f)
    XCTAssert(z80.de().value() == 0xbe3e)
    XCTAssert(z80.hl().value() == 0xa79b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xeea1)
    XCTAssert(z80.iy().value() == 0xdfae)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb68() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb1,0x68])
    loadRam(location: 0xe919, data:[0x20])
    z80.af().ld(value: 0x8e51)
    z80.bc().ld(value: 0x0063)
    z80.de().ld(value: 0x49ad)
    z80.hl().ld(value: 0xb7d4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe968)
    z80.iy().ld(value: 0x864e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8e39)
    XCTAssert(z80.bc().value() == 0x63)
    XCTAssert(z80.de().value() == 0x49ad)
    XCTAssert(z80.hl().value() == 0xb7d4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe968)
    XCTAssert(z80.iy().value() == 0x864e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb69() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xe8,0x69])
    loadRam(location: 0x33dc, data:[0x4f])
    z80.af().ld(value: 0x9f11)
    z80.bc().ld(value: 0x42b5)
    z80.de().ld(value: 0x74fe)
    z80.hl().ld(value: 0x1116)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x33f4)
    z80.iy().ld(value: 0x46c2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9f75)
    XCTAssert(z80.bc().value() == 0x42b5)
    XCTAssert(z80.de().value() == 0x74fe)
    XCTAssert(z80.hl().value() == 0x1116)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x33f4)
    XCTAssert(z80.iy().value() == 0x46c2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x33,0x6a])
    loadRam(location: 0x86e9, data:[0x1c])
    z80.af().ld(value: 0x4632)
    z80.bc().ld(value: 0x0bd8)
    z80.de().ld(value: 0x0018)
    z80.hl().ld(value: 0x1ac3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x86b6)
    z80.iy().ld(value: 0x1dd2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4654)
    XCTAssert(z80.bc().value() == 0x0bd8)
    XCTAssert(z80.de().value() == 0x18)
    XCTAssert(z80.hl().value() == 0x1ac3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x86b6)
    XCTAssert(z80.iy().value() == 0x1dd2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x11,0x6b])
    loadRam(location: 0x188c, data:[0xbc])
    z80.af().ld(value: 0x7a76)
    z80.bc().ld(value: 0xf79f)
    z80.de().ld(value: 0xa78e)
    z80.hl().ld(value: 0xf867)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x187b)
    z80.iy().ld(value: 0x0023)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7a18)
    XCTAssert(z80.bc().value() == 0xf79f)
    XCTAssert(z80.de().value() == 0xa78e)
    XCTAssert(z80.hl().value() == 0xf867)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x187b)
    XCTAssert(z80.iy().value() == 0x23)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x5e,0x6c])
    loadRam(location: 0x3e7f, data:[0x2a])
    z80.af().ld(value: 0xdd91)
    z80.bc().ld(value: 0x1f1e)
    z80.de().ld(value: 0xc1e1)
    z80.hl().ld(value: 0x0ea7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3e21)
    z80.iy().ld(value: 0xf544)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdd39)
    XCTAssert(z80.bc().value() == 0x1f1e)
    XCTAssert(z80.de().value() == 0xc1e1)
    XCTAssert(z80.hl().value() == 0x0ea7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3e21)
    XCTAssert(z80.iy().value() == 0xf544)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xdd,0x6d])
    loadRam(location: 0xe2f1, data:[0x41])
    z80.af().ld(value: 0xdebf)
    z80.bc().ld(value: 0x9ae4)
    z80.de().ld(value: 0xfd24)
    z80.hl().ld(value: 0xb3c2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe314)
    z80.iy().ld(value: 0xad84)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xde75)
    XCTAssert(z80.bc().value() == 0x9ae4)
    XCTAssert(z80.de().value() == 0xfd24)
    XCTAssert(z80.hl().value() == 0xb3c2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xe314)
    XCTAssert(z80.iy().value() == 0xad84)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb2,0x6e])
    loadRam(location: 0x3038, data:[0x3f])
    z80.af().ld(value: 0xca75)
    z80.bc().ld(value: 0x9f16)
    z80.de().ld(value: 0xc700)
    z80.hl().ld(value: 0x1dce)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3086)
    z80.iy().ld(value: 0xd68e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xca31)
    XCTAssert(z80.bc().value() == 0x9f16)
    XCTAssert(z80.de().value() == 0xc700)
    XCTAssert(z80.hl().value() == 0x1dce)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3086)
    XCTAssert(z80.iy().value() == 0xd68e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb6f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xbe,0x6f])
    loadRam(location: 0xfbd9, data:[0x56])
    z80.af().ld(value: 0xd4cd)
    z80.bc().ld(value: 0x0b39)
    z80.de().ld(value: 0x3e2e)
    z80.hl().ld(value: 0xc06e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfc1b)
    z80.iy().ld(value: 0xd592)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd47d)
    XCTAssert(z80.bc().value() == 0x0b39)
    XCTAssert(z80.de().value() == 0x3e2e)
    XCTAssert(z80.hl().value() == 0xc06e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfc1b)
    XCTAssert(z80.iy().value() == 0xd592)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb70() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xb5,0x70])
    loadRam(location: 0x03e1, data:[0x74])
    z80.af().ld(value: 0xf901)
    z80.bc().ld(value: 0x09b8)
    z80.de().ld(value: 0x43f8)
    z80.hl().ld(value: 0x2a76)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x042c)
    z80.iy().ld(value: 0x7f2d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xf911)
    XCTAssert(z80.bc().value() == 0x09b8)
    XCTAssert(z80.de().value() == 0x43f8)
    XCTAssert(z80.hl().value() == 0x2a76)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x042c)
    XCTAssert(z80.iy().value() == 0x7f2d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb71() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xf7,0x71])
    loadRam(location: 0x1b2a, data:[0x08])
    z80.af().ld(value: 0xac78)
    z80.bc().ld(value: 0x36ad)
    z80.de().ld(value: 0x34cb)
    z80.hl().ld(value: 0xf950)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1b33)
    z80.iy().ld(value: 0xaa23)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xac5c)
    XCTAssert(z80.bc().value() == 0x36ad)
    XCTAssert(z80.de().value() == 0x34cb)
    XCTAssert(z80.hl().value() == 0xf950)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1b33)
    XCTAssert(z80.iy().value() == 0xaa23)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb72() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x22,0x72])
    loadRam(location: 0xce47, data:[0x08])
    z80.af().ld(value: 0xb1b3)
    z80.bc().ld(value: 0xf1e4)
    z80.de().ld(value: 0x9984)
    z80.hl().ld(value: 0xc7fb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xce25)
    z80.iy().ld(value: 0xc5b6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb15d)
    XCTAssert(z80.bc().value() == 0xf1e4)
    XCTAssert(z80.de().value() == 0x9984)
    XCTAssert(z80.hl().value() == 0xc7fb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xce25)
    XCTAssert(z80.iy().value() == 0xc5b6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb73() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x12,0x73])
    loadRam(location: 0x6454, data:[0x3c])
    z80.af().ld(value: 0x21ba)
    z80.bc().ld(value: 0x592d)
    z80.de().ld(value: 0xf406)
    z80.hl().ld(value: 0xe21f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6442)
    z80.iy().ld(value: 0xcf58)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2174)
    XCTAssert(z80.bc().value() == 0x592d)
    XCTAssert(z80.de().value() == 0xf406)
    XCTAssert(z80.hl().value() == 0xe21f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6442)
    XCTAssert(z80.iy().value() == 0xcf58)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb74() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x08,0x74])
    loadRam(location: 0x7dc9, data:[0xbe])
    z80.af().ld(value: 0x6642)
    z80.bc().ld(value: 0x64c1)
    z80.de().ld(value: 0xdbe5)
    z80.hl().ld(value: 0xeb48)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7dc1)
    z80.iy().ld(value: 0xc1fb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x667c)
    XCTAssert(z80.bc().value() == 0x64c1)
    XCTAssert(z80.de().value() == 0xdbe5)
    XCTAssert(z80.hl().value() == 0xeb48)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7dc1)
    XCTAssert(z80.iy().value() == 0xc1fb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb75() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x5b,0x75])
    loadRam(location: 0x6108, data:[0xcf])
    z80.af().ld(value: 0x8778)
    z80.bc().ld(value: 0x580e)
    z80.de().ld(value: 0x00dd)
    z80.hl().ld(value: 0xf4c6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x60ad)
    z80.iy().ld(value: 0x9b60)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8730)
    XCTAssert(z80.bc().value() == 0x580e)
    XCTAssert(z80.de().value() == 0x00dd)
    XCTAssert(z80.hl().value() == 0xf4c6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x60ad)
    XCTAssert(z80.iy().value() == 0x9b60)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb76() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x73,0x76])
    loadRam(location: 0x7efd, data:[0x1e])
    z80.af().ld(value: 0x65b8)
    z80.bc().ld(value: 0x5cc2)
    z80.de().ld(value: 0x3058)
    z80.hl().ld(value: 0xe258)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7e8a)
    z80.iy().ld(value: 0xb296)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x657c)
    XCTAssert(z80.bc().value() == 0x5cc2)
    XCTAssert(z80.de().value() == 0x3058)
    XCTAssert(z80.hl().value() == 0xe258)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7e8a)
    XCTAssert(z80.iy().value() == 0xb296)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb77() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x7f,0x77])
    loadRam(location: 0x05b6, data:[0x97])
    z80.af().ld(value: 0xe3a8)
    z80.bc().ld(value: 0x47a0)
    z80.de().ld(value: 0xc510)
    z80.hl().ld(value: 0xcf0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0537)
    z80.iy().ld(value: 0xb242)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe354)
    XCTAssert(z80.bc().value() == 0x47a0)
    XCTAssert(z80.de().value() == 0xc510)
    XCTAssert(z80.hl().value() == 0xcf0a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x537)
    XCTAssert(z80.iy().value() == 0xb242)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb78() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x70,0x78])
    loadRam(location: 0x9407, data:[0x76])
    z80.af().ld(value: 0x424f)
    z80.bc().ld(value: 0x24f6)
    z80.de().ld(value: 0x1632)
    z80.hl().ld(value: 0x8a4f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9397)
    z80.iy().ld(value: 0x846c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4255)
    XCTAssert(z80.bc().value() == 0x24f6)
    XCTAssert(z80.de().value() == 0x1632)
    XCTAssert(z80.hl().value() == 0x8a4f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9397)
    XCTAssert(z80.iy().value() == 0x846c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb79() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0xc3,0x79])
    loadRam(location: 0x41a1, data:[0xb8])
    z80.af().ld(value: 0xe6a0)
    z80.bc().ld(value: 0xeeaa)
    z80.de().ld(value: 0x41f7)
    z80.hl().ld(value: 0x5da2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x41de)
    z80.iy().ld(value: 0x4189)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe690)
    XCTAssert(z80.bc().value() == 0xeeaa)
    XCTAssert(z80.de().value() == 0x41f7)
    XCTAssert(z80.hl().value() == 0x5da2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x41de)
    XCTAssert(z80.iy().value() == 0x4189)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7a() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x3f,0x7a])
    loadRam(location: 0x0ae8, data:[0xeb])
    z80.af().ld(value: 0xcabf)
    z80.bc().ld(value: 0x56aa)
    z80.de().ld(value: 0x6a06)
    z80.hl().ld(value: 0x6cd7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0aa9)
    z80.iy().ld(value: 0x9812)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xca99)
    XCTAssert(z80.bc().value() == 0x56aa)
    XCTAssert(z80.de().value() == 0x6a06)
    XCTAssert(z80.hl().value() == 0x6cd7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0aa9)
    XCTAssert(z80.iy().value() == 0x9812)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7b() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x88,0x7b])
    loadRam(location: 0x4fc8, data:[0x22])
    z80.af().ld(value: 0xae3f)
    z80.bc().ld(value: 0x0227)
    z80.de().ld(value: 0x721f)
    z80.hl().ld(value: 0x52a1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5040)
    z80.iy().ld(value: 0xb98a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xae5d)
    XCTAssert(z80.bc().value() == 0x227)
    XCTAssert(z80.de().value() == 0x721f)
    XCTAssert(z80.hl().value() == 0x52a1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5040)
    XCTAssert(z80.iy().value() == 0xb98a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7c() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x9e,0x7c])
    loadRam(location: 0x6821, data:[0x3a])
    z80.af().ld(value: 0x8a80)
    z80.bc().ld(value: 0xa2f1)
    z80.de().ld(value: 0x239a)
    z80.hl().ld(value: 0xd5cc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6883)
    z80.iy().ld(value: 0xb050)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8a7c)
    XCTAssert(z80.bc().value() == 0xa2f1)
    XCTAssert(z80.de().value() == 0x239a)
    XCTAssert(z80.hl().value() == 0xd5cc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6883)
    XCTAssert(z80.iy().value() == 0xb050)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7d() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x29,0x7d])
    loadRam(location: 0xb04a, data:[0x2c])
    z80.af().ld(value: 0xc37f)
    z80.bc().ld(value: 0xcf33)
    z80.de().ld(value: 0x1010)
    z80.hl().ld(value: 0x98e6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb021)
    z80.iy().ld(value: 0x0356)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc375)
    XCTAssert(z80.bc().value() == 0xcf33)
    XCTAssert(z80.de().value() == 0x1010)
    XCTAssert(z80.hl().value() == 0x98e6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb021)
    XCTAssert(z80.iy().value() == 0x356)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7e() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x4f,0x7e])
    loadRam(location: 0xcf3f, data:[0xf2])
    z80.af().ld(value: 0x9a25)
    z80.bc().ld(value: 0x2f6e)
    z80.de().ld(value: 0x0d0d)
    z80.hl().ld(value: 0xa83f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcef0)
    z80.iy().ld(value: 0x8c15)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9a99)
    XCTAssert(z80.bc().value() == 0x2f6e)
    XCTAssert(z80.de().value() == 0x0d0d)
    XCTAssert(z80.hl().value() == 0xa83f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xcef0)
    XCTAssert(z80.iy().value() == 0x8c15)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testddcb7f() throws {
    loadRam(location: 0x0000, data:[0xdd,0xcb,0x75,0x7f])
    loadRam(location: 0x5f37, data:[0xa2])
    z80.af().ld(value: 0x53b9)
    z80.bc().ld(value: 0x1f4e)
    z80.de().ld(value: 0x4837)
    z80.hl().ld(value: 0x21b6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5ec2)
    z80.iy().ld(value: 0x80c3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5399)
    XCTAssert(z80.bc().value() == 0x1f4e)
    XCTAssert(z80.de().value() == 0x4837)
    XCTAssert(z80.hl().value() == 0x21b6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5ec2)
    XCTAssert(z80.iy().value() == 0x80c3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

}
