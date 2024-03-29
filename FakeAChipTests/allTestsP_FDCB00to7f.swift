//
//  allTestsP_FDCB00to77.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_FDCB00to7f: BaseTest {



    func testfdcb00() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0b,0x00])
    loadRam(location: 0x2781, data:[0x50])
    z80.af().ld(value: 0x85ac)
    z80.bc().ld(value: 0x46d0)
    z80.de().ld(value: 0xa135)
    z80.hl().ld(value: 0x20c5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb8de)
    z80.iy().ld(value: 0x2776)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x85a4)
    XCTAssert(z80.bc().value() == 0xa0d0)
    XCTAssert(z80.de().value() == 0xa135)
    XCTAssert(z80.hl().value() == 0x20c5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb8de)
    XCTAssert(z80.iy().value() == 0x2776)
    XCTAssert(z80.fetchRam(location: 0x2781) == 0xa0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb01() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc8,0x01])
    loadRam(location: 0x5bfd, data:[0xcb])
    z80.af().ld(value: 0x577c)
    z80.bc().ld(value: 0x2b76)
    z80.de().ld(value: 0x3576)
    z80.hl().ld(value: 0x280a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xae22)
    z80.iy().ld(value: 0x5c35)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5781)
    XCTAssert(z80.bc().value() == 0x2b97)
    XCTAssert(z80.de().value() == 0x3576)
    XCTAssert(z80.hl().value() == 0x280a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xae22)
    XCTAssert(z80.iy().value() == 0x5c35)
    XCTAssert(z80.fetchRam(location: 0x5bfd) == 0x97)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb02() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x14,0x02])
    loadRam(location: 0x3e06, data:[0x58])
    z80.af().ld(value: 0xdc23)
    z80.bc().ld(value: 0x2b37)
    z80.de().ld(value: 0x83c8)
    z80.hl().ld(value: 0x5dd9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb2d2)
    z80.iy().ld(value: 0x3df2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdca0)
    XCTAssert(z80.bc().value() == 0x2b37)
    XCTAssert(z80.de().value() == 0xb0c8)
    XCTAssert(z80.hl().value() == 0x5dd9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb2d2)
    XCTAssert(z80.iy().value() == 0x3df2)
    XCTAssert(z80.fetchRam(location: 0x3e06) == 0xb0)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb03() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3a,0x03])
    loadRam(location: 0x5821, data:[0x1a])
    z80.af().ld(value: 0x57ee)
    z80.bc().ld(value: 0xc179)
    z80.de().ld(value: 0xb2b6)
    z80.hl().ld(value: 0x7058)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3f2e)
    z80.iy().ld(value: 0x57e7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5720)
    XCTAssert(z80.bc().value() == 0xc179)
    XCTAssert(z80.de().value() == 0xb234)
    XCTAssert(z80.hl().value() == 0x7058)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3f2e)
    XCTAssert(z80.iy().value() == 0x57e7)
    XCTAssert(z80.fetchRam(location: 0x5821) == 0x34)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb04() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x67,0x04])
    loadRam(location: 0x50d8, data:[0x92])
    z80.af().ld(value: 0xed18)
    z80.bc().ld(value: 0x3f03)
    z80.de().ld(value: 0x3327)
    z80.hl().ld(value: 0xf35a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcbf2)
    z80.iy().ld(value: 0x5071)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xed21)
    XCTAssert(z80.bc().value() == 0x3f03)
    XCTAssert(z80.de().value() == 0x3327)
    XCTAssert(z80.hl().value() == 0x255a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcbf2)
    XCTAssert(z80.iy().value() == 0x5071)
    XCTAssert(z80.fetchRam(location: 0x50d8) == 0x25)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb05() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1e,0x05])
    loadRam(location: 0xb279, data:[0x66])
    z80.af().ld(value: 0x7a39)
    z80.bc().ld(value: 0x0858)
    z80.de().ld(value: 0xdb6c)
    z80.hl().ld(value: 0xdbe0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x157a)
    z80.iy().ld(value: 0xb25b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7a8c)
    XCTAssert(z80.bc().value() == 0x0858)
    XCTAssert(z80.de().value() == 0xdb6c)
    XCTAssert(z80.hl().value() == 0xdbcc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x157a)
    XCTAssert(z80.iy().value() == 0xb25b)
    XCTAssert(z80.fetchRam(location: 0xb279) == 0xcc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb06() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x72,0x06])
    loadRam(location: 0xff99, data:[0xf1])
    z80.af().ld(value: 0xf285)
    z80.bc().ld(value: 0x89a2)
    z80.de().ld(value: 0xe78f)
    z80.hl().ld(value: 0xef74)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x140d)
    z80.iy().ld(value: 0xff27)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf2a1)
    XCTAssert(z80.bc().value() == 0x89a2)
    XCTAssert(z80.de().value() == 0xe78f)
    XCTAssert(z80.hl().value() == 0xef74)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x140d)
    XCTAssert(z80.iy().value() == 0xff27)
    XCTAssert(z80.fetchRam(location: 0xff99) == 0xe3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb07() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x24,0x07])
    loadRam(location: 0x080f, data:[0xae])
    z80.af().ld(value: 0x8cce)
    z80.bc().ld(value: 0xf3a7)
    z80.de().ld(value: 0x3a6e)
    z80.hl().ld(value: 0x8f0a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8423)
    z80.iy().ld(value: 0x07eb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5d09)
    XCTAssert(z80.bc().value() == 0xf3a7)
    XCTAssert(z80.de().value() == 0x3a6e)
    XCTAssert(z80.hl().value() == 0x8f0a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8423)
    XCTAssert(z80.iy().value() == 0x07eb)
    XCTAssert(z80.fetchRam(location: 0x080f) == 0x5d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb08() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x25,0x08])
    loadRam(location: 0x615c, data:[0x83])
    z80.af().ld(value: 0xa611)
    z80.bc().ld(value: 0xe8ec)
    z80.de().ld(value: 0xc958)
    z80.hl().ld(value: 0x7bda)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x194d)
    z80.iy().ld(value: 0x6137)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xa681)
    XCTAssert(z80.bc().value() == 0xc1ec)
    XCTAssert(z80.de().value() == 0xc958)
    XCTAssert(z80.hl().value() == 0x7bda)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x194d)
    XCTAssert(z80.iy().value() == 0x6137)
    XCTAssert(z80.fetchRam(location: 0x615c) == 0xc1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb09() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa0,0x09])
    loadRam(location: 0x197a, data:[0x27])
    z80.af().ld(value: 0x54b1)
    z80.bc().ld(value: 0xfa1a)
    z80.de().ld(value: 0x84e8)
    z80.hl().ld(value: 0x4fa5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1ad3)
    z80.iy().ld(value: 0x19da)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5485)
    XCTAssert(z80.bc().value() == 0xfa93)
    XCTAssert(z80.de().value() == 0x84e8)
    XCTAssert(z80.hl().value() == 0x4fa5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1ad3)
    XCTAssert(z80.iy().value() == 0x19da)
    XCTAssert(z80.fetchRam(location: 0x197a) == 0x93)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe1,0x0a])
    loadRam(location: 0xeed7, data:[0x19])
    z80.af().ld(value: 0xb3ef)
    z80.bc().ld(value: 0xa2bb)
    z80.de().ld(value: 0xe5d6)
    z80.hl().ld(value: 0x9617)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf946)
    z80.iy().ld(value: 0xeef6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb389)
    XCTAssert(z80.bc().value() == 0xa2bb)
    XCTAssert(z80.de().value() == 0x8cd6)
    XCTAssert(z80.hl().value() == 0x9617)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf946)
    XCTAssert(z80.iy().value() == 0xeef6)
    XCTAssert(z80.fetchRam(location: 0xeed7) == 0x8c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0c,0x0b])
    loadRam(location: 0xc69b, data:[0xf2])
    z80.af().ld(value: 0xae10)
    z80.bc().ld(value: 0x8c4e)
    z80.de().ld(value: 0xe159)
    z80.hl().ld(value: 0x1c54)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe108)
    z80.iy().ld(value: 0xc68f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xae28)
    XCTAssert(z80.bc().value() == 0x8c4e)
    XCTAssert(z80.de().value() == 0xe179)
    XCTAssert(z80.hl().value() == 0x1c54)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe108)
    XCTAssert(z80.iy().value() == 0xc68f)
    XCTAssert(z80.fetchRam(location: 0xc69b) == 0x79)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd7,0x0c])
    loadRam(location: 0x8c74, data:[0xae])
    z80.af().ld(value: 0x8719)
    z80.bc().ld(value: 0x6b16)
    z80.de().ld(value: 0x4c3b)
    z80.hl().ld(value: 0x180a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x175a)
    z80.iy().ld(value: 0x8c9d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8700)
    XCTAssert(z80.bc().value() == 0x6b16)
    XCTAssert(z80.de().value() == 0x4c3b)
    XCTAssert(z80.hl().value() == 0x570a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x175a)
    XCTAssert(z80.iy().value() == 0x8c9d)
    XCTAssert(z80.fetchRam(location: 0x8c74) == 0x57)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x11,0x0d])
    loadRam(location: 0xfe3e, data:[0x1b])
    z80.af().ld(value: 0x1204)
    z80.bc().ld(value: 0xe0cb)
    z80.de().ld(value: 0x3ab1)
    z80.hl().ld(value: 0x2416)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1de4)
    z80.iy().ld(value: 0xfe2d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x128d)
    XCTAssert(z80.bc().value() == 0xe0cb)
    XCTAssert(z80.de().value() == 0x3ab1)
    XCTAssert(z80.hl().value() == 0x248d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1de4)
    XCTAssert(z80.iy().value() == 0xfe2d)
    XCTAssert(z80.fetchRam(location: 0xfe3e) == 0x8d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0c,0x0e])
    loadRam(location: 0xf22f, data:[0xf7])
    z80.af().ld(value: 0x8da4)
    z80.bc().ld(value: 0x8f91)
    z80.de().ld(value: 0xfc5a)
    z80.hl().ld(value: 0x5e2c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb2f2)
    z80.iy().ld(value: 0xf223)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8da9)
    XCTAssert(z80.bc().value() == 0x8f91)
    XCTAssert(z80.de().value() == 0xfc5a)
    XCTAssert(z80.hl().value() == 0x5e2c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb2f2)
    XCTAssert(z80.iy().value() == 0xf223)
    XCTAssert(z80.fetchRam(location: 0xf22f) == 0xfb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb0f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x15,0x0f])
    loadRam(location: 0xce4d, data:[0x44])
    z80.af().ld(value: 0xfbb0)
    z80.bc().ld(value: 0x2ac9)
    z80.de().ld(value: 0xec6b)
    z80.hl().ld(value: 0x6511)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc93a)
    z80.iy().ld(value: 0xce38)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2224)
    XCTAssert(z80.bc().value() == 0x2ac9)
    XCTAssert(z80.de().value() == 0xec6b)
    XCTAssert(z80.hl().value() == 0x6511)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc93a)
    XCTAssert(z80.iy().value() == 0xce38)
    XCTAssert(z80.fetchRam(location: 0xce4d) == 0x22)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb10() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7a,0x10])
    loadRam(location: 0x431c, data:[0x1c])
    z80.af().ld(value: 0x259d)
    z80.bc().ld(value: 0x3852)
    z80.de().ld(value: 0x590d)
    z80.hl().ld(value: 0xac66)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x144f)
    z80.iy().ld(value: 0x42a2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x252c)
    XCTAssert(z80.bc().value() == 0x3952)
    XCTAssert(z80.de().value() == 0x590d)
    XCTAssert(z80.hl().value() == 0xac66)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x144f)
    XCTAssert(z80.iy().value() == 0x42a2)
    XCTAssert(z80.fetchRam(location: 0x431c) == 0x39)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb11() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7b,0x11])
    loadRam(location: 0x9d0b, data:[0x5e])
    z80.af().ld(value: 0xbc60)
    z80.bc().ld(value: 0x61c1)
    z80.de().ld(value: 0xf5f8)
    z80.hl().ld(value: 0xaf24)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4019)
    z80.iy().ld(value: 0x9c90)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbca8)
    XCTAssert(z80.bc().value() == 0x61bc)
    XCTAssert(z80.de().value() == 0xf5f8)
    XCTAssert(z80.hl().value() == 0xaf24)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4019)
    XCTAssert(z80.iy().value() == 0x9c90)
    XCTAssert(z80.fetchRam(location: 0x9d0b) == 0xbc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb12() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x61,0x12])
    loadRam(location: 0x8598, data:[0xa7])
    z80.af().ld(value: 0x4e45)
    z80.bc().ld(value: 0x3a25)
    z80.de().ld(value: 0x3417)
    z80.hl().ld(value: 0xbcc7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0d7e)
    z80.iy().ld(value: 0x8537)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4e09)
    XCTAssert(z80.bc().value() == 0x3a25)
    XCTAssert(z80.de().value() == 0x4f17)
    XCTAssert(z80.hl().value() == 0xbcc7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0d7e)
    XCTAssert(z80.iy().value() == 0x8537)
    XCTAssert(z80.fetchRam(location: 0x8598) == 0x4f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb13() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xb3,0x13])
    loadRam(location: 0xe74b, data:[0xb3])
    z80.af().ld(value: 0xb224)
    z80.bc().ld(value: 0xb79b)
    z80.de().ld(value: 0x84f1)
    z80.hl().ld(value: 0xff7d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x414c)
    z80.iy().ld(value: 0xe798)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb225)
    XCTAssert(z80.bc().value() == 0xb79b)
    XCTAssert(z80.de().value() == 0x8466)
    XCTAssert(z80.hl().value() == 0xff7d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x414c)
    XCTAssert(z80.iy().value() == 0xe798)
    XCTAssert(z80.fetchRam(location: 0xe74b) == 0x66)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb14() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc4,0x14])
    loadRam(location: 0xd900, data:[0x06])
    z80.af().ld(value: 0xabbb)
    z80.bc().ld(value: 0x451a)
    z80.de().ld(value: 0xfc65)
    z80.hl().ld(value: 0x14a1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0f4d)
    z80.iy().ld(value: 0xd93c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xab08)
    XCTAssert(z80.bc().value() == 0x451a)
    XCTAssert(z80.de().value() == 0xfc65)
    XCTAssert(z80.hl().value() == 0x0da1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0f4d)
    XCTAssert(z80.iy().value() == 0xd93c)
    XCTAssert(z80.fetchRam(location: 0xd900) == 0x0d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb15() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x17,0x15])
    loadRam(location: 0x2d92, data:[0x12])
    z80.af().ld(value: 0x2864)
    z80.bc().ld(value: 0x9532)
    z80.de().ld(value: 0x8631)
    z80.hl().ld(value: 0x751c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe327)
    z80.iy().ld(value: 0x2d7b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2824)
    XCTAssert(z80.bc().value() == 0x9532)
    XCTAssert(z80.de().value() == 0x8631)
    XCTAssert(z80.hl().value() == 0x7524)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe327)
    XCTAssert(z80.iy().value() == 0x2d7b)
    XCTAssert(z80.fetchRam(location: 0x2d92) == 0x24)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb16() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x23,0x16])
    loadRam(location: 0xf0d7, data:[0x89])
    z80.af().ld(value: 0x0c3c)
    z80.bc().ld(value: 0xdcd7)
    z80.de().ld(value: 0xadcc)
    z80.hl().ld(value: 0x196d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x87e2)
    z80.iy().ld(value: 0xf0b4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0c05)
    XCTAssert(z80.bc().value() == 0xdcd7)
    XCTAssert(z80.de().value() == 0xadcc)
    XCTAssert(z80.hl().value() == 0x196d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x87e2)
    XCTAssert(z80.iy().value() == 0xf0b4)
    XCTAssert(z80.fetchRam(location: 0xf0d7) == 0x12)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb17() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8a,0x17])
    loadRam(location: 0x1f9d, data:[0xb8])
    z80.af().ld(value: 0xaf5b)
    z80.bc().ld(value: 0xd016)
    z80.de().ld(value: 0x066e)
    z80.hl().ld(value: 0x6638)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5e92)
    z80.iy().ld(value: 0x2013)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7125)
    XCTAssert(z80.bc().value() == 0xd016)
    XCTAssert(z80.de().value() == 0x066e)
    XCTAssert(z80.hl().value() == 0x6638)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5e92)
    XCTAssert(z80.iy().value() == 0x2013)
    XCTAssert(z80.fetchRam(location: 0x1f9d) == 0x71)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb18() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc0,0x18])
    loadRam(location: 0x31d6, data:[0xfa])
    z80.af().ld(value: 0x23f3)
    z80.bc().ld(value: 0x4517)
    z80.de().ld(value: 0x16e0)
    z80.hl().ld(value: 0x6894)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb908)
    z80.iy().ld(value: 0x3216)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x23a8)
    XCTAssert(z80.bc().value() == 0xfd17)
    XCTAssert(z80.de().value() == 0x16e0)
    XCTAssert(z80.hl().value() == 0x6894)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb908)
    XCTAssert(z80.iy().value() == 0x3216)
    XCTAssert(z80.fetchRam(location: 0x31d6) == 0xfd)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb19() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa2,0x19])
    loadRam(location: 0x4cd0, data:[0x4b])
    z80.af().ld(value: 0x11ed)
    z80.bc().ld(value: 0xc2b8)
    z80.de().ld(value: 0xa9f3)
    z80.hl().ld(value: 0x2014)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6db0)
    z80.iy().ld(value: 0x4d2e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x11a5)
    XCTAssert(z80.bc().value() == 0xc2a5)
    XCTAssert(z80.de().value() == 0xa9f3)
    XCTAssert(z80.hl().value() == 0x2014)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6db0)
    XCTAssert(z80.iy().value() == 0x4d2e)
    XCTAssert(z80.fetchRam(location: 0x4cd0) == 0xa5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x78,0x1a])
    loadRam(location: 0x414b, data:[0x44])
    z80.af().ld(value: 0xbc5c)
    z80.bc().ld(value: 0x6168)
    z80.de().ld(value: 0xe541)
    z80.hl().ld(value: 0xb630)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0207)
    z80.iy().ld(value: 0x40d3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbc24)
    XCTAssert(z80.bc().value() == 0x6168)
    XCTAssert(z80.de().value() == 0x2241)
    XCTAssert(z80.hl().value() == 0xb630)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0207)
    XCTAssert(z80.iy().value() == 0x40d3)
    XCTAssert(z80.fetchRam(location: 0x414b) == 0x22)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x16,0x1b])
    loadRam(location: 0x71c6, data:[0xb8])
    z80.af().ld(value: 0x7a28)
    z80.bc().ld(value: 0x1286)
    z80.de().ld(value: 0xfe50)
    z80.hl().ld(value: 0xc42d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe290)
    z80.iy().ld(value: 0x71b0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7a0c)
    XCTAssert(z80.bc().value() == 0x1286)
    XCTAssert(z80.de().value() == 0xfe5c)
    XCTAssert(z80.hl().value() == 0xc42d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe290)
    XCTAssert(z80.iy().value() == 0x71b0)
    XCTAssert(z80.fetchRam(location: 0x71c6) == 0x5c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x86,0x1c])
    loadRam(location: 0xdee8, data:[0x8f])
    z80.af().ld(value: 0x932b)
    z80.bc().ld(value: 0x097b)
    z80.de().ld(value: 0x6928)
    z80.hl().ld(value: 0x83a3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xff2d)
    z80.iy().ld(value: 0xdf62)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9381)
    XCTAssert(z80.bc().value() == 0x097b)
    XCTAssert(z80.de().value() == 0x6928)
    XCTAssert(z80.hl().value() == 0xc7a3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xff2d)
    XCTAssert(z80.iy().value() == 0xdf62)
    XCTAssert(z80.fetchRam(location: 0xdee8) == 0xc7)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x27,0x1d])
    loadRam(location: 0xd68e, data:[0xb7])
    z80.af().ld(value: 0x97b1)
    z80.bc().ld(value: 0x2b30)
    z80.de().ld(value: 0x2645)
    z80.hl().ld(value: 0x04ef)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x186a)
    z80.iy().ld(value: 0xd667)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x978d)
    XCTAssert(z80.bc().value() == 0x2b30)
    XCTAssert(z80.de().value() == 0x2645)
    XCTAssert(z80.hl().value() == 0x04db)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x186a)
    XCTAssert(z80.iy().value() == 0xd667)
    XCTAssert(z80.fetchRam(location: 0xd68e) == 0xdb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3a,0x1e])
    loadRam(location: 0xda72, data:[0x25])
    z80.af().ld(value: 0x2f39)
    z80.bc().ld(value: 0x2470)
    z80.de().ld(value: 0xb521)
    z80.hl().ld(value: 0x6ca3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1066)
    z80.iy().ld(value: 0xda38)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2f81)
    XCTAssert(z80.bc().value() == 0x2470)
    XCTAssert(z80.de().value() == 0xb521)
    XCTAssert(z80.hl().value() == 0x6ca3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1066)
    XCTAssert(z80.iy().value() == 0xda38)
    XCTAssert(z80.fetchRam(location: 0xda72) == 0x92)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb1f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7b,0x1f])
    loadRam(location: 0x2110, data:[0x04])
    z80.af().ld(value: 0x4cdd)
    z80.bc().ld(value: 0x49a3)
    z80.de().ld(value: 0xda18)
    z80.hl().ld(value: 0x3afd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa4f1)
    z80.iy().ld(value: 0x2095)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8284)
    XCTAssert(z80.bc().value() == 0x49a3)
    XCTAssert(z80.de().value() == 0xda18)
    XCTAssert(z80.hl().value() == 0x3afd)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa4f1)
    XCTAssert(z80.iy().value() == 0x2095)
    XCTAssert(z80.fetchRam(location: 0x2110) == 0x82)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb20() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7a,0x20])
    loadRam(location: 0xda9f, data:[0x89])
    z80.af().ld(value: 0x3d74)
    z80.bc().ld(value: 0x3a8f)
    z80.de().ld(value: 0x206f)
    z80.hl().ld(value: 0x8894)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xddab)
    z80.iy().ld(value: 0xda25)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3d05)
    XCTAssert(z80.bc().value() == 0x128f)
    XCTAssert(z80.de().value() == 0x206f)
    XCTAssert(z80.hl().value() == 0x8894)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xddab)
    XCTAssert(z80.iy().value() == 0xda25)
    XCTAssert(z80.fetchRam(location: 0xda9f) == 0x12)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb21() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7b,0x21])
    loadRam(location: 0xdeb1, data:[0x23])
    z80.af().ld(value: 0x1674)
    z80.bc().ld(value: 0x6025)
    z80.de().ld(value: 0x641a)
    z80.hl().ld(value: 0x6598)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x473b)
    z80.iy().ld(value: 0xde36)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1600)
    XCTAssert(z80.bc().value() == 0x6046)
    XCTAssert(z80.de().value() == 0x641a)
    XCTAssert(z80.hl().value() == 0x6598)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x473b)
    XCTAssert(z80.iy().value() == 0xde36)
    XCTAssert(z80.fetchRam(location: 0xdeb1) == 0x46)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb22() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9a,0x22])
    loadRam(location: 0x88c0, data:[0xd4])
    z80.af().ld(value: 0xada9)
    z80.bc().ld(value: 0xefb2)
    z80.de().ld(value: 0x6f03)
    z80.hl().ld(value: 0xe732)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc11d)
    z80.iy().ld(value: 0x8926)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xada9)
    XCTAssert(z80.bc().value() == 0xefb2)
    XCTAssert(z80.de().value() == 0xa803)
    XCTAssert(z80.hl().value() == 0xe732)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc11d)
    XCTAssert(z80.iy().value() == 0x8926)
    XCTAssert(z80.fetchRam(location: 0x88c0) == 0xa8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb23() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf5,0x23])
    loadRam(location: 0x524a, data:[0x65])
    z80.af().ld(value: 0x21e9)
    z80.bc().ld(value: 0xd678)
    z80.de().ld(value: 0xa71b)
    z80.hl().ld(value: 0x25d7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4ca8)
    z80.iy().ld(value: 0x5255)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x218c)
    XCTAssert(z80.bc().value() == 0xd678)
    XCTAssert(z80.de().value() == 0xa7ca)
    XCTAssert(z80.hl().value() == 0x25d7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4ca8)
    XCTAssert(z80.iy().value() == 0x5255)
    XCTAssert(z80.fetchRam(location: 0x524a) == 0xca)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb24() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xb4,0x24])
    loadRam(location: 0xafb2, data:[0x7e])
    z80.af().ld(value: 0x1c51)
    z80.bc().ld(value: 0xda3e)
    z80.de().ld(value: 0xcc7c)
    z80.hl().ld(value: 0xcb19)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x572c)
    z80.iy().ld(value: 0xaffe)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1cac)
    XCTAssert(z80.bc().value() == 0xda3e)
    XCTAssert(z80.de().value() == 0xcc7c)
    XCTAssert(z80.hl().value() == 0xfc19)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x572c)
    XCTAssert(z80.iy().value() == 0xaffe)
    XCTAssert(z80.fetchRam(location: 0xafb2) == 0xfc)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb25() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa6,0x25])
    loadRam(location: 0x238f, data:[0x26])
    z80.af().ld(value: 0x954e)
    z80.bc().ld(value: 0x097c)
    z80.de().ld(value: 0xa341)
    z80.hl().ld(value: 0x89e0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x435d)
    z80.iy().ld(value: 0x23e9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9508)
    XCTAssert(z80.bc().value() == 0x097c)
    XCTAssert(z80.de().value() == 0xa341)
    XCTAssert(z80.hl().value() == 0x894c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x435d)
    XCTAssert(z80.iy().value() == 0x23e9)
    XCTAssert(z80.fetchRam(location: 0x238f) == 0x4c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb26() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbd,0x26])
    loadRam(location: 0xd4a1, data:[0xbf])
    z80.af().ld(value: 0x5844)
    z80.bc().ld(value: 0x0e19)
    z80.de().ld(value: 0xd277)
    z80.hl().ld(value: 0xbf7f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6504)
    z80.iy().ld(value: 0xd4e4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x582d)
    XCTAssert(z80.bc().value() == 0x0e19)
    XCTAssert(z80.de().value() == 0xd277)
    XCTAssert(z80.hl().value() == 0xbf7f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6504)
    XCTAssert(z80.iy().value() == 0xd4e4)
    XCTAssert(z80.fetchRam(location: 0xd4a1) == 0x7e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb27() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x59,0x27])
    loadRam(location: 0x8d9b, data:[0xa7])
    z80.af().ld(value: 0x8e0d)
    z80.bc().ld(value: 0x8c06)
    z80.de().ld(value: 0x2c4c)
    z80.hl().ld(value: 0xd7c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9239)
    z80.iy().ld(value: 0x8d42)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4e0d)
    XCTAssert(z80.bc().value() == 0x8c06)
    XCTAssert(z80.de().value() == 0x2c4c)
    XCTAssert(z80.hl().value() == 0xd7c8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9239)
    XCTAssert(z80.iy().value() == 0x8d42)
    XCTAssert(z80.fetchRam(location: 0x8d9b) == 0x4e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb28() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x83,0x28])
    loadRam(location: 0xaac6, data:[0x5d])
    z80.af().ld(value: 0x4122)
    z80.bc().ld(value: 0xaf9b)
    z80.de().ld(value: 0x7745)
    z80.hl().ld(value: 0x76f5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa1bb)
    z80.iy().ld(value: 0xab43)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x412d)
    XCTAssert(z80.bc().value() == 0x2e9b)
    XCTAssert(z80.de().value() == 0x7745)
    XCTAssert(z80.hl().value() == 0x76f5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa1bb)
    XCTAssert(z80.iy().value() == 0xab43)
    XCTAssert(z80.fetchRam(location: 0xaac6) == 0x2e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb29() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7d,0x29])
    loadRam(location: 0x03c0, data:[0x84])
    z80.af().ld(value: 0x0b21)
    z80.bc().ld(value: 0xaffd)
    z80.de().ld(value: 0xfea6)
    z80.hl().ld(value: 0x9478)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x32bb)
    z80.iy().ld(value: 0x0343)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0b80)
    XCTAssert(z80.bc().value() == 0xafc2)
    XCTAssert(z80.de().value() == 0xfea6)
    XCTAssert(z80.hl().value() == 0x9478)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x32bb)
    XCTAssert(z80.iy().value() == 0x0343)
    XCTAssert(z80.fetchRam(location: 0x03c0) == 0xc2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf9,0x2a])
    loadRam(location: 0xabe0, data:[0xdd])
    z80.af().ld(value: 0xf236)
    z80.bc().ld(value: 0x8c31)
    z80.de().ld(value: 0x5932)
    z80.hl().ld(value: 0x7feb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7db7)
    z80.iy().ld(value: 0xabe7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf2ad)
    XCTAssert(z80.bc().value() == 0x8c31)
    XCTAssert(z80.de().value() == 0xee32)
    XCTAssert(z80.hl().value() == 0x7feb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7db7)
    XCTAssert(z80.iy().value() == 0xabe7)
    XCTAssert(z80.fetchRam(location: 0xabe0) == 0xee)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x4b,0x2b])
    loadRam(location: 0x4adf, data:[0x49])
    z80.af().ld(value: 0x2450)
    z80.bc().ld(value: 0x6945)
    z80.de().ld(value: 0xdcfc)
    z80.hl().ld(value: 0xd643)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5be1)
    z80.iy().ld(value: 0x4a94)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2425)
    XCTAssert(z80.bc().value() == 0x6945)
    XCTAssert(z80.de().value() == 0xdc24)
    XCTAssert(z80.hl().value() == 0xd643)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5be1)
    XCTAssert(z80.iy().value() == 0x4a94)
    XCTAssert(z80.fetchRam(location: 0x4adf) == 0x24)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe6,0x2c])
    loadRam(location: 0xccb7, data:[0x3c])
    z80.af().ld(value: 0x117f)
    z80.bc().ld(value: 0xb32b)
    z80.de().ld(value: 0xe530)
    z80.hl().ld(value: 0x255a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2416)
    z80.iy().ld(value: 0xccd1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x110c)
    XCTAssert(z80.bc().value() == 0xb32b)
    XCTAssert(z80.de().value() == 0xe530)
    XCTAssert(z80.hl().value() == 0x1e5a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2416)
    XCTAssert(z80.iy().value() == 0xccd1)
    XCTAssert(z80.fetchRam(location: 0xccb7) == 0x1e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x5f,0x2d])
    loadRam(location: 0xe545, data:[0x78])
    z80.af().ld(value: 0xd0c3)
    z80.bc().ld(value: 0x344b)
    z80.de().ld(value: 0x1bb0)
    z80.hl().ld(value: 0x3eab)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe11)
    z80.iy().ld(value: 0xe4e6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd02c)
    XCTAssert(z80.bc().value() == 0x344b)
    XCTAssert(z80.de().value() == 0x1bb0)
    XCTAssert(z80.hl().value() == 0x3e3c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfe11)
    XCTAssert(z80.iy().value() == 0xe4e6)
    XCTAssert(z80.fetchRam(location: 0xe545) == 0x3c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x06,0x2e])
    loadRam(location: 0x4303, data:[0xad])
    z80.af().ld(value: 0xf4ee)
    z80.bc().ld(value: 0xb832)
    z80.de().ld(value: 0x4b7f)
    z80.hl().ld(value: 0xe2b7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9386)
    z80.iy().ld(value: 0x42fd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf481)
    XCTAssert(z80.bc().value() == 0xb832)
    XCTAssert(z80.de().value() == 0x4b7f)
    XCTAssert(z80.hl().value() == 0xe2b7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9386)
    XCTAssert(z80.iy().value() == 0x42fd)
    XCTAssert(z80.fetchRam(location: 0x4303) == 0xd6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb2f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x29,0x2f])
    loadRam(location: 0x16e1, data:[0x18])
    z80.af().ld(value: 0xff86)
    z80.bc().ld(value: 0xf2c2)
    z80.de().ld(value: 0x9f2f)
    z80.hl().ld(value: 0xc946)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5fe0)
    z80.iy().ld(value: 0x16b8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0c0c)
    XCTAssert(z80.bc().value() == 0xf2c2)
    XCTAssert(z80.de().value() == 0x9f2f)
    XCTAssert(z80.hl().value() == 0xc946)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5fe0)
    XCTAssert(z80.iy().value() == 0x16b8)
    XCTAssert(z80.fetchRam(location: 0x16e1) == 0x0c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb30() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1b,0x30])
    loadRam(location: 0xd661, data:[0xa5])
    z80.af().ld(value: 0xacf6)
    z80.bc().ld(value: 0xe832)
    z80.de().ld(value: 0xf9ed)
    z80.hl().ld(value: 0xcabc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfabd)
    z80.iy().ld(value: 0xd646)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xac0d)
    XCTAssert(z80.bc().value() == 0x4b32)
    XCTAssert(z80.de().value() == 0xf9ed)
    XCTAssert(z80.hl().value() == 0xcabc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfabd)
    XCTAssert(z80.iy().value() == 0xd646)
    XCTAssert(z80.fetchRam(location: 0xd661) == 0x4b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb31() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf0,0x31])
    loadRam(location: 0xbfd0, data:[0xf1])
    z80.af().ld(value: 0x2b96)
    z80.bc().ld(value: 0x5134)
    z80.de().ld(value: 0x83a7)
    z80.hl().ld(value: 0x7eee)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7750)
    z80.iy().ld(value: 0xbfe0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2ba1)
    XCTAssert(z80.bc().value() == 0x51e3)
    XCTAssert(z80.de().value() == 0x83a7)
    XCTAssert(z80.hl().value() == 0x7eee)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7750)
    XCTAssert(z80.iy().value() == 0xbfe0)
    XCTAssert(z80.fetchRam(location: 0xbfd0) == 0xe3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb32() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xc5,0x32])
    loadRam(location: 0x5aa3, data:[0x59])
    z80.af().ld(value: 0xb2bc)
    z80.bc().ld(value: 0xa4b1)
    z80.de().ld(value: 0xb685)
    z80.hl().ld(value: 0xf66e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xa9a1)
    z80.iy().ld(value: 0x5ade)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb2a0)
    XCTAssert(z80.bc().value() == 0xa4b1)
    XCTAssert(z80.de().value() == 0xb385)
    XCTAssert(z80.hl().value() == 0xf66e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xa9a1)
    XCTAssert(z80.iy().value() == 0x5ade)
    XCTAssert(z80.fetchRam(location: 0x5aa3) == 0xb3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb33() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7f,0x33])
    loadRam(location: 0x19e3, data:[0xda])
    z80.af().ld(value: 0x9c6d)
    z80.bc().ld(value: 0x2c90)
    z80.de().ld(value: 0xd0a9)
    z80.hl().ld(value: 0x2be3)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2691)
    z80.iy().ld(value: 0x1964)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9ca1)
    XCTAssert(z80.bc().value() == 0x2c90)
    XCTAssert(z80.de().value() == 0xd0b5)
    XCTAssert(z80.hl().value() == 0x2be3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2691)
    XCTAssert(z80.iy().value() == 0x1964)
    XCTAssert(z80.fetchRam(location: 0x19e3) == 0xb5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb34() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd2,0x34])
    loadRam(location: 0x5668, data:[0xd4])
    z80.af().ld(value: 0x6029)
    z80.bc().ld(value: 0xfbcd)
    z80.de().ld(value: 0x5348)
    z80.hl().ld(value: 0xf947)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5338)
    z80.iy().ld(value: 0x5696)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x60ad)
    XCTAssert(z80.bc().value() == 0xfbcd)
    XCTAssert(z80.de().value() == 0x5348)
    XCTAssert(z80.hl().value() == 0xa947)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5338)
    XCTAssert(z80.iy().value() == 0x5696)
    XCTAssert(z80.fetchRam(location: 0x5668) == 0xa9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb35() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x71,0x35])
    loadRam(location: 0x0169, data:[0x0b])
    z80.af().ld(value: 0x96a9)
    z80.bc().ld(value: 0x21c6)
    z80.de().ld(value: 0x4cb6)
    z80.hl().ld(value: 0xb40b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x673a)
    z80.iy().ld(value: 0x00f8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9604)
    XCTAssert(z80.bc().value() == 0x21c6)
    XCTAssert(z80.de().value() == 0x4cb6)
    XCTAssert(z80.hl().value() == 0xb417)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x673a)
    XCTAssert(z80.iy().value() == 0x00f8)
    XCTAssert(z80.fetchRam(location: 0x0169) == 0x17)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb36() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xda,0x36])
    loadRam(location: 0x1ab8, data:[0x3c])
    z80.af().ld(value: 0xdc6f)
    z80.bc().ld(value: 0x0892)
    z80.de().ld(value: 0x3cc7)
    z80.hl().ld(value: 0x1494)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8598)
    z80.iy().ld(value: 0x1ade)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdc28)
    XCTAssert(z80.bc().value() == 0x0892)
    XCTAssert(z80.de().value() == 0x3cc7)
    XCTAssert(z80.hl().value() == 0x1494)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8598)
    XCTAssert(z80.iy().value() == 0x1ade)
    XCTAssert(z80.fetchRam(location: 0x1ab8) == 0x79)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb37() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xcb,0x37])
    loadRam(location: 0xe7b7, data:[0x9f])
    z80.af().ld(value: 0xd2b3)
    z80.bc().ld(value: 0x4524)
    z80.de().ld(value: 0x208f)
    z80.hl().ld(value: 0x076f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xad10)
    z80.iy().ld(value: 0xe7ec)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3f2d)
    XCTAssert(z80.bc().value() == 0x4524)
    XCTAssert(z80.de().value() == 0x208f)
    XCTAssert(z80.hl().value() == 0x076f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xad10)
    XCTAssert(z80.iy().value() == 0xe7ec)
    XCTAssert(z80.fetchRam(location: 0xe7b7) == 0x3f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb38() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8e,0x38])
    loadRam(location: 0xd024, data:[0x0d])
    z80.af().ld(value: 0x4f07)
    z80.bc().ld(value: 0x0050)
    z80.de().ld(value: 0x40c6)
    z80.hl().ld(value: 0x4fb7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf37e)
    z80.iy().ld(value: 0xd096)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4f05)
    XCTAssert(z80.bc().value() == 0x0650)
    XCTAssert(z80.de().value() == 0x40c6)
    XCTAssert(z80.hl().value() == 0x4fb7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf37e)
    XCTAssert(z80.iy().value() == 0xd096)
    XCTAssert(z80.fetchRam(location: 0xd024) == 0x06)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb39() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7f,0x39])
    loadRam(location: 0xf4b2, data:[0xf5])
    z80.af().ld(value: 0xbcc2)
    z80.bc().ld(value: 0xf5b5)
    z80.de().ld(value: 0x8dee)
    z80.hl().ld(value: 0xe514)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x48bc)
    z80.iy().ld(value: 0xf433)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbc29)
    XCTAssert(z80.bc().value() == 0xf57a)
    XCTAssert(z80.de().value() == 0x8dee)
    XCTAssert(z80.hl().value() == 0xe514)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x48bc)
    XCTAssert(z80.iy().value() == 0xf433)
    XCTAssert(z80.fetchRam(location: 0xf4b2) == 0x7a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1d,0x3a])
    loadRam(location: 0xcb20, data:[0xa8])
    z80.af().ld(value: 0xd012)
    z80.bc().ld(value: 0x2ef5)
    z80.de().ld(value: 0x2910)
    z80.hl().ld(value: 0x9ca5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb155)
    z80.iy().ld(value: 0xcb03)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd000)
    XCTAssert(z80.bc().value() == 0x2ef5)
    XCTAssert(z80.de().value() == 0x5410)
    XCTAssert(z80.hl().value() == 0x9ca5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb155)
    XCTAssert(z80.iy().value() == 0xcb03)
    XCTAssert(z80.fetchRam(location: 0xcb20) == 0x54)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x05,0x3b])
    loadRam(location: 0xd268, data:[0xb2])
    z80.af().ld(value: 0x503d)
    z80.bc().ld(value: 0xa85b)
    z80.de().ld(value: 0xcfbb)
    z80.hl().ld(value: 0xde8c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9c5b)
    z80.iy().ld(value: 0xd263)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x500c)
    XCTAssert(z80.bc().value() == 0xa85b)
    XCTAssert(z80.de().value() == 0xcf59)
    XCTAssert(z80.hl().value() == 0xde8c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9c5b)
    XCTAssert(z80.iy().value() == 0xd263)
    XCTAssert(z80.fetchRam(location: 0xd268) == 0x59)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xae,0x3c])
    loadRam(location: 0xa7bd, data:[0x96])
    z80.af().ld(value: 0x97f0)
    z80.bc().ld(value: 0x4456)
    z80.de().ld(value: 0x0b52)
    z80.hl().ld(value: 0xfdad)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6d2a)
    z80.iy().ld(value: 0xa80f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x970c)
    XCTAssert(z80.bc().value() == 0x4456)
    XCTAssert(z80.de().value() == 0x0b52)
    XCTAssert(z80.hl().value() == 0x4bad)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6d2a)
    XCTAssert(z80.iy().value() == 0xa80f)
    XCTAssert(z80.fetchRam(location: 0xa7bd) == 0x4b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x13,0x3d])
    loadRam(location: 0xe53d, data:[0xfb])
    z80.af().ld(value: 0x7d44)
    z80.bc().ld(value: 0x9303)
    z80.de().ld(value: 0xe12b)
    z80.hl().ld(value: 0xbff6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4c0f)
    z80.iy().ld(value: 0xe52a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7d2d)
    XCTAssert(z80.bc().value() == 0x9303)
    XCTAssert(z80.de().value() == 0xe12b)
    XCTAssert(z80.hl().value() == 0xbf7d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4c0f)
    XCTAssert(z80.iy().value() == 0xe52a)
    XCTAssert(z80.fetchRam(location: 0xe53d) == 0x7d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2e,0x3e])
    loadRam(location: 0xb2ff, data:[0x50])
    z80.af().ld(value: 0x0d95)
    z80.bc().ld(value: 0x3e02)
    z80.de().ld(value: 0x8f74)
    z80.hl().ld(value: 0x0f82)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x85df)
    z80.iy().ld(value: 0xb2d1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0d2c)
    XCTAssert(z80.bc().value() == 0x3e02)
    XCTAssert(z80.de().value() == 0x8f74)
    XCTAssert(z80.hl().value() == 0x0f82)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x85df)
    XCTAssert(z80.iy().value() == 0xb2d1)
    XCTAssert(z80.fetchRam(location: 0xb2ff) == 0x28)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb3f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x21,0x3f])
    loadRam(location: 0xc1cd, data:[0x78])
    z80.af().ld(value: 0x89e3)
    z80.bc().ld(value: 0x12f6)
    z80.de().ld(value: 0x426c)
    z80.hl().ld(value: 0x52d4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd9f7)
    z80.iy().ld(value: 0xc1ac)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3c2c)
    XCTAssert(z80.bc().value() == 0x12f6)
    XCTAssert(z80.de().value() == 0x426c)
    XCTAssert(z80.hl().value() == 0x52d4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd9f7)
    XCTAssert(z80.iy().value() == 0xc1ac)
    XCTAssert(z80.fetchRam(location: 0xc1cd) == 0x3c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb40() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3b,0x40])
    loadRam(location: 0x41d0, data:[0x0d])
    z80.af().ld(value: 0x5408)
    z80.bc().ld(value: 0x2c34)
    z80.de().ld(value: 0x6784)
    z80.hl().ld(value: 0xb376)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8ff9)
    z80.iy().ld(value: 0x4195)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5410)
    XCTAssert(z80.bc().value() == 0x2c34)
    XCTAssert(z80.de().value() == 0x6784)
    XCTAssert(z80.hl().value() == 0xb376)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8ff9)
    XCTAssert(z80.iy().value() == 0x4195)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb41() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xcc,0x41])
    loadRam(location: 0x0397, data:[0xe9])
    z80.af().ld(value: 0x8c35)
    z80.bc().ld(value: 0x5a58)
    z80.de().ld(value: 0xb71c)
    z80.hl().ld(value: 0x6777)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xdeca)
    z80.iy().ld(value: 0x03cb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8c11)
    XCTAssert(z80.bc().value() == 0x5a58)
    XCTAssert(z80.de().value() == 0xb71c)
    XCTAssert(z80.hl().value() == 0x6777)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xdeca)
    XCTAssert(z80.iy().value() == 0x03cb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb42() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x01,0x42])
    loadRam(location: 0x9f57, data:[0xa8])
    z80.af().ld(value: 0x5535)
    z80.bc().ld(value: 0x9c29)
    z80.de().ld(value: 0x2feb)
    z80.hl().ld(value: 0x97ff)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7f17)
    z80.iy().ld(value: 0x9f56)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x555d)
    XCTAssert(z80.bc().value() == 0x9c29)
    XCTAssert(z80.de().value() == 0x2feb)
    XCTAssert(z80.hl().value() == 0x97ff)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7f17)
    XCTAssert(z80.iy().value() == 0x9f56)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb43() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x08,0x43])
    loadRam(location: 0x1fd9, data:[0xaa])
    z80.af().ld(value: 0xb404)
    z80.bc().ld(value: 0xe58c)
    z80.de().ld(value: 0xe62e)
    z80.hl().ld(value: 0x2a32)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7130)
    z80.iy().ld(value: 0x1fd1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb45c)
    XCTAssert(z80.bc().value() == 0xe58c)
    XCTAssert(z80.de().value() == 0xe62e)
    XCTAssert(z80.hl().value() == 0x2a32)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7130)
    XCTAssert(z80.iy().value() == 0x1fd1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb44() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x03,0x44])
    loadRam(location: 0xf4f6, data:[0x89])
    z80.af().ld(value: 0xa954)
    z80.bc().ld(value: 0x68f4)
    z80.de().ld(value: 0x9fa4)
    z80.hl().ld(value: 0x7f66)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0209)
    z80.iy().ld(value: 0xf4f3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xa930)
    XCTAssert(z80.bc().value() == 0x68f4)
    XCTAssert(z80.de().value() == 0x9fa4)
    XCTAssert(z80.hl().value() == 0x7f66)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0209)
    XCTAssert(z80.iy().value() == 0xf4f3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb45() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8d,0x45])
    loadRam(location: 0x937a, data:[0x8d])
    z80.af().ld(value: 0x73e5)
    z80.bc().ld(value: 0x8dde)
    z80.de().ld(value: 0x5e4f)
    z80.hl().ld(value: 0x84a7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4e24)
    z80.iy().ld(value: 0x93ed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7311)
    XCTAssert(z80.bc().value() == 0x8dde)
    XCTAssert(z80.de().value() == 0x5e4f)
    XCTAssert(z80.hl().value() == 0x84a7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4e24)
    XCTAssert(z80.iy().value() == 0x93ed)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb46() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x8c,0x46])
    loadRam(location: 0x633d, data:[0xfe])
    z80.af().ld(value: 0x0e5a)
    z80.bc().ld(value: 0xb1f9)
    z80.de().ld(value: 0x475f)
    z80.hl().ld(value: 0xebfc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7765)
    z80.iy().ld(value: 0x63b1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0e74)
    XCTAssert(z80.bc().value() == 0xb1f9)
    XCTAssert(z80.de().value() == 0x475f)
    XCTAssert(z80.hl().value() == 0xebfc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7765)
    XCTAssert(z80.iy().value() == 0x63b1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb47() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x96,0x47])
    loadRam(location: 0x6da4, data:[0xd6])
    z80.af().ld(value: 0x9b3d)
    z80.bc().ld(value: 0x7f38)
    z80.de().ld(value: 0x0753)
    z80.hl().ld(value: 0xd5e7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb9c3)
    z80.iy().ld(value: 0x6e0e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9b7d)
    XCTAssert(z80.bc().value() == 0x7f38)
    XCTAssert(z80.de().value() == 0x0753)
    XCTAssert(z80.hl().value() == 0xd5e7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb9c3)
    XCTAssert(z80.iy().value() == 0x6e0e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb48() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x44,0x48])
    loadRam(location: 0xabed, data:[0xb0])
    z80.af().ld(value: 0x7d94)
    z80.bc().ld(value: 0x50a9)
    z80.de().ld(value: 0x2511)
    z80.hl().ld(value: 0x8f9f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb612)
    z80.iy().ld(value: 0xaba9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7d7c)
    XCTAssert(z80.bc().value() == 0x50a9)
    XCTAssert(z80.de().value() == 0x2511)
    XCTAssert(z80.hl().value() == 0x8f9f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb612)
    XCTAssert(z80.iy().value() == 0xaba9)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb49() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x4e,0x49])
    loadRam(location: 0x3e6f, data:[0xa9])
    z80.af().ld(value: 0x691e)
    z80.bc().ld(value: 0x3a39)
    z80.de().ld(value: 0xb834)
    z80.hl().ld(value: 0x74b6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0eb7)
    z80.iy().ld(value: 0x3e21)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x697c)
    XCTAssert(z80.bc().value() == 0x3a39)
    XCTAssert(z80.de().value() == 0xb834)
    XCTAssert(z80.hl().value() == 0x74b6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0eb7)
    XCTAssert(z80.iy().value() == 0x3e21)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x52,0x4a])
    loadRam(location: 0xe82d, data:[0xda])
    z80.af().ld(value: 0x31e3)
    z80.bc().ld(value: 0x68e0)
    z80.de().ld(value: 0xfe2f)
    z80.hl().ld(value: 0xa2c4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xac96)
    z80.iy().ld(value: 0xe7db)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3139)
    XCTAssert(z80.bc().value() == 0x68e0)
    XCTAssert(z80.de().value() == 0xfe2f)
    XCTAssert(z80.hl().value() == 0xa2c4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xac96)
    XCTAssert(z80.iy().value() == 0xe7db)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xea,0x4b])
    loadRam(location: 0x8829, data:[0x4e])
    z80.af().ld(value: 0x09a1)
    z80.bc().ld(value: 0x2453)
    z80.de().ld(value: 0x9186)
    z80.hl().ld(value: 0xa32a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x71af)
    z80.iy().ld(value: 0x883f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0919)
    XCTAssert(z80.bc().value() == 0x2453)
    XCTAssert(z80.de().value() == 0x9186)
    XCTAssert(z80.hl().value() == 0xa32a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x71af)
    XCTAssert(z80.iy().value() == 0x883f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xee,0x4c])
    loadRam(location: 0x7f10, data:[0x70])
    z80.af().ld(value: 0x4a52)
    z80.bc().ld(value: 0x1e5b)
    z80.de().ld(value: 0xbe2e)
    z80.hl().ld(value: 0x3ee4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xaf79)
    z80.iy().ld(value: 0x7f22)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x4a7c)
    XCTAssert(z80.bc().value() == 0x1e5b)
    XCTAssert(z80.de().value() == 0xbe2e)
    XCTAssert(z80.hl().value() == 0x3ee4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xaf79)
    XCTAssert(z80.iy().value() == 0x7f22)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x29,0x4d])
    loadRam(location: 0xa799, data:[0x78])
    z80.af().ld(value: 0x9f87)
    z80.bc().ld(value: 0x6c8f)
    z80.de().ld(value: 0x34f4)
    z80.hl().ld(value: 0x5a79)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd3cc)
    z80.iy().ld(value: 0xa770)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9f75)
    XCTAssert(z80.bc().value() == 0x6c8f)
    XCTAssert(z80.de().value() == 0x34f4)
    XCTAssert(z80.hl().value() == 0x5a79)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd3cc)
    XCTAssert(z80.iy().value() == 0xa770)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x20,0x4e])
    loadRam(location: 0xe1e8, data:[0xaa])
    z80.af().ld(value: 0x30cb)
    z80.bc().ld(value: 0x5626)
    z80.de().ld(value: 0x52bc)
    z80.hl().ld(value: 0x5503)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x303b)
    z80.iy().ld(value: 0xe1c8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3031)
    XCTAssert(z80.bc().value() == 0x5626)
    XCTAssert(z80.de().value() == 0x52bc)
    XCTAssert(z80.hl().value() == 0x5503)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x303b)
    XCTAssert(z80.iy().value() == 0xe1c8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb4f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9d,0x4f])
    loadRam(location: 0x1c95, data:[0x18])
    z80.af().ld(value: 0x6088)
    z80.bc().ld(value: 0xe079)
    z80.de().ld(value: 0x7152)
    z80.hl().ld(value: 0x671f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x8c22)
    z80.iy().ld(value: 0x1cf8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x605c)
    XCTAssert(z80.bc().value() == 0xe079)
    XCTAssert(z80.de().value() == 0x7152)
    XCTAssert(z80.hl().value() == 0x671f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x8c22)
    XCTAssert(z80.iy().value() == 0x1cf8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb50() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x6b,0x50])
    loadRam(location: 0xc7ca, data:[0xfe])
    z80.af().ld(value: 0x8cde)
    z80.bc().ld(value: 0x1409)
    z80.de().ld(value: 0x6d69)
    z80.hl().ld(value: 0xe5b2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x4a0c)
    z80.iy().ld(value: 0xc75f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8c10)
    XCTAssert(z80.bc().value() == 0x1409)
    XCTAssert(z80.de().value() == 0x6d69)
    XCTAssert(z80.hl().value() == 0xe5b2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x4a0c)
    XCTAssert(z80.iy().value() == 0xc75f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb51() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x86,0x51])
    loadRam(location: 0x341b, data:[0x13])
    z80.af().ld(value: 0x8f59)
    z80.bc().ld(value: 0x40cb)
    z80.de().ld(value: 0x9543)
    z80.hl().ld(value: 0x9b3a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1942)
    z80.iy().ld(value: 0x3495)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8f75)
    XCTAssert(z80.bc().value() == 0x40cb)
    XCTAssert(z80.de().value() == 0x9543)
    XCTAssert(z80.hl().value() == 0x9b3a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1942)
    XCTAssert(z80.iy().value() == 0x3495)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb52() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe6,0x52])
    loadRam(location: 0x8af3, data:[0x87])
    z80.af().ld(value: 0x8905)
    z80.bc().ld(value: 0x3e41)
    z80.de().ld(value: 0x7ab4)
    z80.hl().ld(value: 0x37f6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf82d)
    z80.iy().ld(value: 0x8b0d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8919)
    XCTAssert(z80.bc().value() == 0x3e41)
    XCTAssert(z80.de().value() == 0x7ab4)
    XCTAssert(z80.hl().value() == 0x37f6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf82d)
    XCTAssert(z80.iy().value() == 0x8b0d)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb53() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd1,0x53])
    loadRam(location: 0x7eb2, data:[0xe4])
    z80.af().ld(value: 0xefde)
    z80.bc().ld(value: 0xe345)
    z80.de().ld(value: 0x09a3)
    z80.hl().ld(value: 0xf0b2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc378)
    z80.iy().ld(value: 0x7ee1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xef38)
    XCTAssert(z80.bc().value() == 0xe345)
    XCTAssert(z80.de().value() == 0x09a3)
    XCTAssert(z80.hl().value() == 0xf0b2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc378)
    XCTAssert(z80.iy().value() == 0x7ee1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb54() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x08,0x54])
    loadRam(location: 0x5b73, data:[0x07])
    z80.af().ld(value: 0x72a6)
    z80.bc().ld(value: 0xcb82)
    z80.de().ld(value: 0xd966)
    z80.hl().ld(value: 0x2fc6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3c00)
    z80.iy().ld(value: 0x5b6b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7218)
    XCTAssert(z80.bc().value() == 0xcb82)
    XCTAssert(z80.de().value() == 0xd966)
    XCTAssert(z80.hl().value() == 0x2fc6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3c00)
    XCTAssert(z80.iy().value() == 0x5b6b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb55() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x54,0x55])
    loadRam(location: 0xb506, data:[0x46])
    z80.af().ld(value: 0x855c)
    z80.bc().ld(value: 0xc23b)
    z80.de().ld(value: 0x6aab)
    z80.hl().ld(value: 0x9b00)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe93)
    z80.iy().ld(value: 0xb4b2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8530)
    XCTAssert(z80.bc().value() == 0xc23b)
    XCTAssert(z80.de().value() == 0x6aab)
    XCTAssert(z80.hl().value() == 0x9b00)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfe93)
    XCTAssert(z80.iy().value() == 0xb4b2)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb56() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x6f,0x56])
    loadRam(location: 0x69a1, data:[0xdf])
    z80.af().ld(value: 0xf5ad)
    z80.bc().ld(value: 0xf9f6)
    z80.de().ld(value: 0x1e8c)
    z80.hl().ld(value: 0x9e08)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x716a)
    z80.iy().ld(value: 0x6932)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xf539)
    XCTAssert(z80.bc().value() == 0xf9f6)
    XCTAssert(z80.de().value() == 0x1e8c)
    XCTAssert(z80.hl().value() == 0x9e08)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x716a)
    XCTAssert(z80.iy().value() == 0x6932)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb57() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x3c,0x57])
    loadRam(location: 0xa3f7, data:[0x6c])
    z80.af().ld(value: 0x37d7)
    z80.bc().ld(value: 0xb7dc)
    z80.de().ld(value: 0xbe1c)
    z80.hl().ld(value: 0x38ea)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5e82)
    z80.iy().ld(value: 0xa3bb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3731)
    XCTAssert(z80.bc().value() == 0xb7dc)
    XCTAssert(z80.de().value() == 0xbe1c)
    XCTAssert(z80.hl().value() == 0x38ea)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5e82)
    XCTAssert(z80.iy().value() == 0xa3bb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb58() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x4e,0x58])
    loadRam(location: 0x1ee2, data:[0xf6])
    z80.af().ld(value: 0x752c)
    z80.bc().ld(value: 0x7296)
    z80.de().ld(value: 0x3ea5)
    z80.hl().ld(value: 0x1143)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd7cc)
    z80.iy().ld(value: 0x1e94)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x755c)
    XCTAssert(z80.bc().value() == 0x7296)
    XCTAssert(z80.de().value() == 0x3ea5)
    XCTAssert(z80.hl().value() == 0x1143)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd7cc)
    XCTAssert(z80.iy().value() == 0x1e94)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb59() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x2e,0x59])
    loadRam(location: 0xfb01, data:[0x6f])
    z80.af().ld(value: 0x8056)
    z80.bc().ld(value: 0xbf2a)
    z80.de().ld(value: 0x1809)
    z80.hl().ld(value: 0xed31)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xfe2b)
    z80.iy().ld(value: 0xfad3)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x8038)
    XCTAssert(z80.bc().value() == 0xbf2a)
    XCTAssert(z80.de().value() == 0x1809)
    XCTAssert(z80.hl().value() == 0xed31)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xfe2b)
    XCTAssert(z80.iy().value() == 0xfad3)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x88,0x5a])
    loadRam(location: 0x7b40, data:[0x6e])
    z80.af().ld(value: 0xcc74)
    z80.bc().ld(value: 0xa108)
    z80.de().ld(value: 0x65d4)
    z80.hl().ld(value: 0x6f66)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0008)
    z80.iy().ld(value: 0x7bb8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xcc38)
    XCTAssert(z80.bc().value() == 0xa108)
    XCTAssert(z80.de().value() == 0x65d4)
    XCTAssert(z80.hl().value() == 0x6f66)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0008)
    XCTAssert(z80.iy().value() == 0x7bb8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe7,0x5b])
    loadRam(location: 0x3143, data:[0xb1])
    z80.af().ld(value: 0x5cf1)
    z80.bc().ld(value: 0xb3bd)
    z80.de().ld(value: 0x25bd)
    z80.hl().ld(value: 0x98cf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2ba1)
    z80.iy().ld(value: 0x315c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5c75)
    XCTAssert(z80.bc().value() == 0xb3bd)
    XCTAssert(z80.de().value() == 0x25bd)
    XCTAssert(z80.hl().value() == 0x98cf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2ba1)
    XCTAssert(z80.iy().value() == 0x315c)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x74,0x5c])
    loadRam(location: 0x54b2, data:[0xe3])
    z80.af().ld(value: 0xb3e0)
    z80.bc().ld(value: 0xd43d)
    z80.de().ld(value: 0xd9c0)
    z80.hl().ld(value: 0xb04d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x21a9)
    z80.iy().ld(value: 0x543e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb354)
    XCTAssert(z80.bc().value() == 0xd43d)
    XCTAssert(z80.de().value() == 0xd9c0)
    XCTAssert(z80.hl().value() == 0xb04d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x21a9)
    XCTAssert(z80.iy().value() == 0x543e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xdc,0x5d])
    loadRam(location: 0x3b60, data:[0xef])
    z80.af().ld(value: 0x9f49)
    z80.bc().ld(value: 0x43dd)
    z80.de().ld(value: 0xccb3)
    z80.hl().ld(value: 0x085a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf130)
    z80.iy().ld(value: 0x3b84)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x9f39)
    XCTAssert(z80.bc().value() == 0x43dd)
    XCTAssert(z80.de().value() == 0xccb3)
    XCTAssert(z80.hl().value() == 0x085a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf130)
    XCTAssert(z80.iy().value() == 0x3b84)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe2,0x5e])
    loadRam(location: 0xe147, data:[0x17])
    z80.af().ld(value: 0x6f89)
    z80.bc().ld(value: 0xeff5)
    z80.de().ld(value: 0x993b)
    z80.hl().ld(value: 0x22b5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0f30)
    z80.iy().ld(value: 0xe165)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6f75)
    XCTAssert(z80.bc().value() == 0xeff5)
    XCTAssert(z80.de().value() == 0x993b)
    XCTAssert(z80.hl().value() == 0x22b5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0f30)
    XCTAssert(z80.iy().value() == 0xe165)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb5f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xab,0x5f])
    loadRam(location: 0xf7c6, data:[0xe2])
    z80.af().ld(value: 0xd72a)
    z80.bc().ld(value: 0xa57a)
    z80.de().ld(value: 0xaca6)
    z80.hl().ld(value: 0x667e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x5c33)
    z80.iy().ld(value: 0xf81b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xd774)
    XCTAssert(z80.bc().value() == 0xa57a)
    XCTAssert(z80.de().value() == 0xaca6)
    XCTAssert(z80.hl().value() == 0x667e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x5c33)
    XCTAssert(z80.iy().value() == 0xf81b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb60() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x85,0x60])
    loadRam(location: 0x8bc9, data:[0xb9])
    z80.af().ld(value: 0x15e9)
    z80.bc().ld(value: 0x8d30)
    z80.de().ld(value: 0x43f4)
    z80.hl().ld(value: 0xc65e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1e34)
    z80.iy().ld(value: 0x8c44)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1519)
    XCTAssert(z80.bc().value() == 0x8d30)
    XCTAssert(z80.de().value() == 0x43f4)
    XCTAssert(z80.hl().value() == 0xc65e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1e34)
    XCTAssert(z80.iy().value() == 0x8c44)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb61() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xbe,0x61])
    loadRam(location: 0x92a2, data:[0x28])
    z80.af().ld(value: 0x7bd1)
    z80.bc().ld(value: 0xd421)
    z80.de().ld(value: 0x5570)
    z80.hl().ld(value: 0xcb85)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x32ec)
    z80.iy().ld(value: 0x92e4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7b55)
    XCTAssert(z80.bc().value() == 0xd421)
    XCTAssert(z80.de().value() == 0x5570)
    XCTAssert(z80.hl().value() == 0xcb85)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x32ec)
    XCTAssert(z80.iy().value() == 0x92e4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb62() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9d,0x62])
    loadRam(location: 0x7e4e, data:[0x1a])
    z80.af().ld(value: 0xba2f)
    z80.bc().ld(value: 0x4fbb)
    z80.de().ld(value: 0x67a7)
    z80.hl().ld(value: 0xc5db)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x470b)
    z80.iy().ld(value: 0x7eb1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xba39)
    XCTAssert(z80.bc().value() == 0x4fbb)
    XCTAssert(z80.de().value() == 0x67a7)
    XCTAssert(z80.hl().value() == 0xc5db)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x470b)
    XCTAssert(z80.iy().value() == 0x7eb1)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb63() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf4,0x63])
    loadRam(location: 0x1707, data:[0x3b])
    z80.af().ld(value: 0xc0a1)
    z80.bc().ld(value: 0x2cc2)
    z80.de().ld(value: 0xce12)
    z80.hl().ld(value: 0xe77c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x71c5)
    z80.iy().ld(value: 0x1713)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xc011)
    XCTAssert(z80.bc().value() == 0x2cc2)
    XCTAssert(z80.de().value() == 0xce12)
    XCTAssert(z80.hl().value() == 0xe77c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x71c5)
    XCTAssert(z80.iy().value() == 0x1713)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb64() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x35,0x64])
    loadRam(location: 0xb36b, data:[0x8c])
    z80.af().ld(value: 0x0c1f)
    z80.bc().ld(value: 0x7847)
    z80.de().ld(value: 0x2494)
    z80.hl().ld(value: 0x71eb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x315c)
    z80.iy().ld(value: 0xb336)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x0c75)
    XCTAssert(z80.bc().value() == 0x7847)
    XCTAssert(z80.de().value() == 0x2494)
    XCTAssert(z80.hl().value() == 0x71eb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x315c)
    XCTAssert(z80.iy().value() == 0xb336)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb65() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x37,0x65])
    loadRam(location: 0x8a2b, data:[0x08])
    z80.af().ld(value: 0x5245)
    z80.bc().ld(value: 0xa82d)
    z80.de().ld(value: 0x1112)
    z80.hl().ld(value: 0x8f09)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x672a)
    z80.iy().ld(value: 0x89f4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x525d)
    XCTAssert(z80.bc().value() == 0xa82d)
    XCTAssert(z80.de().value() == 0x1112)
    XCTAssert(z80.hl().value() == 0x8f09)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x672a)
    XCTAssert(z80.iy().value() == 0x89f4)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb66() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9d,0x66])
    loadRam(location: 0x68e5, data:[0x90])
    z80.af().ld(value: 0x583f)
    z80.bc().ld(value: 0xc13e)
    z80.de().ld(value: 0xb136)
    z80.hl().ld(value: 0x6bc5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3ef9)
    z80.iy().ld(value: 0x6948)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5839)
    XCTAssert(z80.bc().value() == 0xc13e)
    XCTAssert(z80.de().value() == 0xb136)
    XCTAssert(z80.hl().value() == 0x6bc5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3ef9)
    XCTAssert(z80.iy().value() == 0x6948)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb67() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xcb,0x67])
    loadRam(location: 0x653d, data:[0x15])
    z80.af().ld(value: 0x31b6)
    z80.bc().ld(value: 0x0f7d)
    z80.de().ld(value: 0x48b5)
    z80.hl().ld(value: 0xcc5f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x2103)
    z80.iy().ld(value: 0x6572)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x3130)
    XCTAssert(z80.bc().value() == 0x0f7d)
    XCTAssert(z80.de().value() == 0x48b5)
    XCTAssert(z80.hl().value() == 0xcc5f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x2103)
    XCTAssert(z80.iy().value() == 0x6572)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb68() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xca,0x68])
    loadRam(location: 0x0388, data:[0x83])
    z80.af().ld(value: 0xe330)
    z80.bc().ld(value: 0x39fb)
    z80.de().ld(value: 0xa03a)
    z80.hl().ld(value: 0x59bc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe04a)
    z80.iy().ld(value: 0x03be)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe354)
    XCTAssert(z80.bc().value() == 0x39fb)
    XCTAssert(z80.de().value() == 0xa03a)
    XCTAssert(z80.hl().value() == 0x59bc)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe04a)
    XCTAssert(z80.iy().value() == 0x03be)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb69() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xe2,0x69])
    loadRam(location: 0xa5e5, data:[0x01])
    z80.af().ld(value: 0x1896)
    z80.bc().ld(value: 0x5bc2)
    z80.de().ld(value: 0xd4d9)
    z80.hl().ld(value: 0x4e8a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3716)
    z80.iy().ld(value: 0xa603)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1874)
    XCTAssert(z80.bc().value() == 0x5bc2)
    XCTAssert(z80.de().value() == 0xd4d9)
    XCTAssert(z80.hl().value() == 0x4e8a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3716)
    XCTAssert(z80.iy().value() == 0xa603)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xae,0x6a])
    loadRam(location: 0x936c, data:[0x33])
    z80.af().ld(value: 0x5bc9)
    z80.bc().ld(value: 0x0099)
    z80.de().ld(value: 0x34f8)
    z80.hl().ld(value: 0x3e96)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf251)
    z80.iy().ld(value: 0x93be)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5b11)
    XCTAssert(z80.bc().value() == 0x0099)
    XCTAssert(z80.de().value() == 0x34f8)
    XCTAssert(z80.hl().value() == 0x3e96)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf251)
    XCTAssert(z80.iy().value() == 0x93be)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x1f,0x6b])
    loadRam(location: 0xaa4e, data:[0x7c])
    z80.af().ld(value: 0xbbe5)
    z80.bc().ld(value: 0x9e6c)
    z80.de().ld(value: 0xabd1)
    z80.hl().ld(value: 0x515f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x73db)
    z80.iy().ld(value: 0xaa2f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xbb39)
    XCTAssert(z80.bc().value() == 0x9e6c)
    XCTAssert(z80.de().value() == 0xabd1)
    XCTAssert(z80.hl().value() == 0x515f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x73db)
    XCTAssert(z80.iy().value() == 0xaa2f)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x0d,0x6c])
    loadRam(location: 0x86c7, data:[0x25])
    z80.af().ld(value: 0x144b)
    z80.bc().ld(value: 0x3af2)
    z80.de().ld(value: 0x8f80)
    z80.hl().ld(value: 0x7be5)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc379)
    z80.iy().ld(value: 0x86ba)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1411)
    XCTAssert(z80.bc().value() == 0x3af2)
    XCTAssert(z80.de().value() == 0x8f80)
    XCTAssert(z80.hl().value() == 0x7be5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc379)
    XCTAssert(z80.iy().value() == 0x86ba)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf0,0x6d])
    loadRam(location: 0x62b8, data:[0xe3])
    z80.af().ld(value: 0x6392)
    z80.bc().ld(value: 0xd077)
    z80.de().ld(value: 0x668d)
    z80.hl().ld(value: 0x6e4a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xb0a8)
    z80.iy().ld(value: 0x62c8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6330)
    XCTAssert(z80.bc().value() == 0xd077)
    XCTAssert(z80.de().value() == 0x668d)
    XCTAssert(z80.hl().value() == 0x6e4a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xb0a8)
    XCTAssert(z80.iy().value() == 0x62c8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x93,0x6e])
    loadRam(location: 0x41a3, data:[0x1e])
    z80.af().ld(value: 0x2da0)
    z80.bc().ld(value: 0xf872)
    z80.de().ld(value: 0x692d)
    z80.hl().ld(value: 0x92c4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x36b5)
    z80.iy().ld(value: 0x4210)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2d54)
    XCTAssert(z80.bc().value() == 0xf872)
    XCTAssert(z80.de().value() == 0x692d)
    XCTAssert(z80.hl().value() == 0x92c4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x36b5)
    XCTAssert(z80.iy().value() == 0x4210)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb6f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x20,0x6f])
    loadRam(location: 0x006e, data:[0x37])
    z80.af().ld(value: 0xdf7b)
    z80.bc().ld(value: 0xc7aa)
    z80.de().ld(value: 0x9002)
    z80.hl().ld(value: 0x86b8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1347)
    z80.iy().ld(value: 0x004e)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xdf11)
    XCTAssert(z80.bc().value() == 0xc7aa)
    XCTAssert(z80.de().value() == 0x9002)
    XCTAssert(z80.hl().value() == 0x86b8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1347)
    XCTAssert(z80.iy().value() == 0x004e)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb70() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xd9,0x70])
    loadRam(location: 0x3e41, data:[0xc9])
    z80.af().ld(value: 0x6ea9)
    z80.bc().ld(value: 0x018d)
    z80.de().ld(value: 0x5075)
    z80.hl().ld(value: 0xcf4e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcd2b)
    z80.iy().ld(value: 0x3e68)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6e39)
    XCTAssert(z80.bc().value() == 0x018d)
    XCTAssert(z80.de().value() == 0x5075)
    XCTAssert(z80.hl().value() == 0xcf4e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcd2b)
    XCTAssert(z80.iy().value() == 0x3e68)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb71() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x27,0x71])
    loadRam(location: 0x99c1, data:[0x3e])
    z80.af().ld(value: 0x1b48)
    z80.bc().ld(value: 0xe3af)
    z80.de().ld(value: 0x94d5)
    z80.hl().ld(value: 0x0996)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xcad5)
    z80.iy().ld(value: 0x999a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1b5c)
    XCTAssert(z80.bc().value() == 0xe3af)
    XCTAssert(z80.de().value() == 0x94d5)
    XCTAssert(z80.hl().value() == 0x0996)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xcad5)
    XCTAssert(z80.iy().value() == 0x999a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb72() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x98,0x72])
    loadRam(location: 0xfcc9, data:[0x4f])
    z80.af().ld(value: 0xe83b)
    z80.bc().ld(value: 0x26b1)
    z80.de().ld(value: 0x8608)
    z80.hl().ld(value: 0xf3cb)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x6323)
    z80.iy().ld(value: 0xfd31)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xe839)
    XCTAssert(z80.bc().value() == 0x26b1)
    XCTAssert(z80.de().value() == 0x8608)
    XCTAssert(z80.hl().value() == 0xf3cb)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x6323)
    XCTAssert(z80.iy().value() == 0xfd31)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb73() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7a,0x73])
    loadRam(location: 0xf652, data:[0x31])
    z80.af().ld(value: 0x101b)
    z80.bc().ld(value: 0x446c)
    z80.de().ld(value: 0xc2f9)
    z80.hl().ld(value: 0xb9b1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0820)
    z80.iy().ld(value: 0xf5d8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1075)
    XCTAssert(z80.bc().value() == 0x446c)
    XCTAssert(z80.de().value() == 0xc2f9)
    XCTAssert(z80.hl().value() == 0xb9b1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0820)
    XCTAssert(z80.iy().value() == 0xf5d8)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb74() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x4b,0x74])
    loadRam(location: 0x5e95, data:[0xfe])
    z80.af().ld(value: 0x6847)
    z80.bc().ld(value: 0x38c2)
    z80.de().ld(value: 0x0ea4)
    z80.hl().ld(value: 0x0825)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xd255)
    z80.iy().ld(value: 0x5e4a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6819)
    XCTAssert(z80.bc().value() == 0x38c2)
    XCTAssert(z80.de().value() == 0x0ea4)
    XCTAssert(z80.hl().value() == 0x0825)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xd255)
    XCTAssert(z80.iy().value() == 0x5e4a)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb75() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x57,0x75])
    loadRam(location: 0x6115, data:[0x21])
    z80.af().ld(value: 0x56f2)
    z80.bc().ld(value: 0xc034)
    z80.de().ld(value: 0x6e11)
    z80.hl().ld(value: 0xd35e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xe702)
    z80.iy().ld(value: 0x60be)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5674)
    XCTAssert(z80.bc().value() == 0xc034)
    XCTAssert(z80.de().value() == 0x6e11)
    XCTAssert(z80.hl().value() == 0xd35e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xe702)
    XCTAssert(z80.iy().value() == 0x60be)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb76() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x53,0x76])
    loadRam(location: 0x6676, data:[0x3a])
    z80.af().ld(value: 0x7375)
    z80.bc().ld(value: 0xcaff)
    z80.de().ld(value: 0xdd80)
    z80.hl().ld(value: 0xc8ed)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x7e39)
    z80.iy().ld(value: 0x6623)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x7375)
    XCTAssert(z80.bc().value() == 0xcaff)
    XCTAssert(z80.de().value() == 0xdd80)
    XCTAssert(z80.hl().value() == 0xc8ed)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x7e39)
    XCTAssert(z80.iy().value() == 0x6623)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb77() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x02,0x77])
    loadRam(location: 0x8843, data:[0xd8])
    z80.af().ld(value: 0xab10)
    z80.bc().ld(value: 0x983e)
    z80.de().ld(value: 0x0bdc)
    z80.hl().ld(value: 0x3b46)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xae51)
    z80.iy().ld(value: 0x8841)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xab18)
    XCTAssert(z80.bc().value() == 0x983e)
    XCTAssert(z80.de().value() == 0x0bdc)
    XCTAssert(z80.hl().value() == 0x3b46)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xae51)
    XCTAssert(z80.iy().value() == 0x8841)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb78() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x7d,0x78])
    loadRam(location: 0xff48, data:[0xec])
    z80.af().ld(value: 0x2765)
    z80.bc().ld(value: 0xce2f)
    z80.de().ld(value: 0x4824)
    z80.hl().ld(value: 0x6930)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xae69)
    z80.iy().ld(value: 0xfecb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x27b9)
    XCTAssert(z80.bc().value() == 0xce2f)
    XCTAssert(z80.de().value() == 0x4824)
    XCTAssert(z80.hl().value() == 0x6930)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xae69)
    XCTAssert(z80.iy().value() == 0xfecb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb79() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x23,0x79])
    loadRam(location: 0x1cd1, data:[0x87])
    z80.af().ld(value: 0xb428)
    z80.bc().ld(value: 0x6355)
    z80.de().ld(value: 0x7896)
    z80.hl().ld(value: 0x8a7c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x9090)
    z80.iy().ld(value: 0x1cae)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0xb498)
    XCTAssert(z80.bc().value() == 0x6355)
    XCTAssert(z80.de().value() == 0x7896)
    XCTAssert(z80.hl().value() == 0x8a7c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x9090)
    XCTAssert(z80.iy().value() == 0x1cae)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7a() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x42,0x7a])
    loadRam(location: 0xd965, data:[0xb3])
    z80.af().ld(value: 0x59f4)
    z80.bc().ld(value: 0xca21)
    z80.de().ld(value: 0x1482)
    z80.hl().ld(value: 0x3fae)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xc6c9)
    z80.iy().ld(value: 0xd923)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5998)
    XCTAssert(z80.bc().value() == 0xca21)
    XCTAssert(z80.de().value() == 0x1482)
    XCTAssert(z80.hl().value() == 0x3fae)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xc6c9)
    XCTAssert(z80.iy().value() == 0xd923)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7b() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x17,0x7b])
    loadRam(location: 0x0a9a, data:[0xbd])
    z80.af().ld(value: 0x6314)
    z80.bc().ld(value: 0x0240)
    z80.de().ld(value: 0x5efa)
    z80.hl().ld(value: 0x5e7b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x3e50)
    z80.iy().ld(value: 0x0a83)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x6398)
    XCTAssert(z80.bc().value() == 0x0240)
    XCTAssert(z80.de().value() == 0x5efa)
    XCTAssert(z80.hl().value() == 0x5e7b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x3e50)
    XCTAssert(z80.iy().value() == 0x0a83)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7c() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xf1,0x7c])
    loadRam(location: 0xd362, data:[0x1b])
    z80.af().ld(value: 0x22a6)
    z80.bc().ld(value: 0xaff4)
    z80.de().ld(value: 0xb89b)
    z80.hl().ld(value: 0x4dca)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0ac2)
    z80.iy().ld(value: 0xd371)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x2254)
    XCTAssert(z80.bc().value() == 0xaff4)
    XCTAssert(z80.de().value() == 0xb89b)
    XCTAssert(z80.hl().value() == 0x4dca)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0ac2)
    XCTAssert(z80.iy().value() == 0xd371)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7d() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x9f,0x7d])
    loadRam(location: 0xabda, data:[0x8a])
    z80.af().ld(value: 0x1c95)
    z80.bc().ld(value: 0xd615)
    z80.de().ld(value: 0x825a)
    z80.hl().ld(value: 0x5e64)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x32fb)
    z80.iy().ld(value: 0xac3b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1cb9)
    XCTAssert(z80.bc().value() == 0xd615)
    XCTAssert(z80.de().value() == 0x825a)
    XCTAssert(z80.hl().value() == 0x5e64)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x32fb)
    XCTAssert(z80.iy().value() == 0xac3b)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7e() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0x40,0x7e])
    loadRam(location: 0x94c4, data:[0x9e])
    z80.af().ld(value: 0x503c)
    z80.bc().ld(value: 0x8dfe)
    z80.de().ld(value: 0x1019)
    z80.hl().ld(value: 0x6778)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0xf7df)
    z80.iy().ld(value: 0x9484)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x5090)
    XCTAssert(z80.bc().value() == 0x8dfe)
    XCTAssert(z80.de().value() == 0x1019)
    XCTAssert(z80.hl().value() == 0x6778)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0xf7df)
    XCTAssert(z80.iy().value() == 0x9484)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfdcb7f() throws {
    loadRam(location: 0x0000, data:[0xfd,0xcb,0xa2,0x7f])
    loadRam(location: 0xce0b, data:[0x47])
    z80.af().ld(value: 0x1b07)
    z80.bc().ld(value: 0x9ec3)
    z80.de().ld(value: 0x14be)
    z80.hl().ld(value: 0x5ebe)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x1178)
    z80.iy().ld(value: 0xce69)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfd)
    XCTAssert(z80.af().value() == 0x1b5d)
    XCTAssert(z80.bc().value() == 0x9ec3)
    XCTAssert(z80.de().value() == 0x14be)
    XCTAssert(z80.hl().value() == 0x5ebe)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x1178)
    XCTAssert(z80.iy().value() == 0xce69)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0000)
    }

}
