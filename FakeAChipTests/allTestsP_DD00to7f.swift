//
//  allTestsP_DD00to7f.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_DD00to7f: BaseTest {

   
// Does this exist?
    
//    func testdd00() throws {
//    loadRam(location: 0x0000, data:[0xdd,0x00,0x00])
//    z80.af().ld(value: 0x0000)
//    z80.bc().ld(value: 0x0000)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0000)
//    z80.af2().ld(value: 0x0000)
//    z80.bc2().ld(value: 0x0000)
//    z80.de2().ld(value: 0x0000)
//    z80.hl2().ld(value: 0x0000)
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xdd)
//    XCTAssert(z80.af().value() == 0x0)
//    XCTAssert(z80.bc().value() == 0x0)
//    XCTAssert(z80.de().value() == 0x0)
//    XCTAssert(z80.hl().value() == 0x0)
//    XCTAssert(z80.af2().value() == 0x0)
//    XCTAssert(z80.bc2().value() == 0x0)
//    XCTAssert(z80.de2().value() == 0x0)
//    XCTAssert(z80.hl2().value() == 0x0)
//    XCTAssert(z80.ix().value() == 0x0)
//    XCTAssert(z80.iy().value() == 0x0)
//    XCTAssert(z80.PC == 0x3)
//    XCTAssert(z80.SP == 0x0)
//    }

    func testdd09() throws {
    loadRam(location: 0x0000, data:[0xdd,0x09])
    z80.af().ld(value: 0x0d05)
    z80.bc().ld(value: 0x1426)
    z80.de().ld(value: 0x53ce)
    z80.hl().ld(value: 0x41e3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9ec0)
    z80.iy().ld(value: 0x5c89)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x0d34)
    XCTAssert(z80.bc().value() == 0x1426)
    XCTAssert(z80.de().value() == 0x53ce)
    XCTAssert(z80.hl().value() == 0x41e3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb2e6)
    XCTAssert(z80.iy().value() == 0x5c89)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd19() throws {
    loadRam(location: 0x0000, data:[0xdd,0x19])
    z80.af().ld(value: 0x1911)
    z80.bc().ld(value: 0x0e0b)
    z80.de().ld(value: 0x2724)
    z80.hl().ld(value: 0xbe62)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x824f)
    z80.iy().ld(value: 0x760b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x1928)
    XCTAssert(z80.bc().value() == 0x0e0b)
    XCTAssert(z80.de().value() == 0x2724)
    XCTAssert(z80.hl().value() == 0xbe62)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa973)
    XCTAssert(z80.iy().value() == 0x760b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd21() throws {
    loadRam(location: 0x0000, data:[0xdd,0x21,0xf2,0x7c])
    z80.af().ld(value: 0xc935)
    z80.bc().ld(value: 0x4353)
    z80.de().ld(value: 0xbd22)
    z80.hl().ld(value: 0x94d5)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xdade)
    z80.iy().ld(value: 0xaad6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc935)
    XCTAssert(z80.bc().value() == 0x4353)
    XCTAssert(z80.de().value() == 0xbd22)
    XCTAssert(z80.hl().value() == 0x94d5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7cf2)
    XCTAssert(z80.iy().value() == 0xaad6)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd22() throws {
    loadRam(location: 0x0000, data:[0xdd,0x22,0x4f,0xad])
    z80.af().ld(value: 0x5b1d)
    z80.bc().ld(value: 0x45a1)
    z80.de().ld(value: 0x6de8)
    z80.hl().ld(value: 0x39d3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xebe7)
    z80.iy().ld(value: 0x05b0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5b1d)
    XCTAssert(z80.bc().value() == 0x45a1)
    XCTAssert(z80.de().value() == 0x6de8)
    XCTAssert(z80.hl().value() == 0x39d3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xebe7)
    XCTAssert(z80.iy().value() == 0x05b0)
    XCTAssert(z80.fetchRam(location: 0xad4f) == 0xe7)
    XCTAssert(z80.fetchRam(location: 0xad50) == 0xeb)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd23() throws {
    loadRam(location: 0x0000, data:[0xdd,0x23])
    z80.af().ld(value: 0x9095)
    z80.bc().ld(value: 0xac3c)
    z80.de().ld(value: 0x4d90)
    z80.hl().ld(value: 0x379b)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd50b)
    z80.iy().ld(value: 0xa157)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9095)
    XCTAssert(z80.bc().value() == 0xac3c)
    XCTAssert(z80.de().value() == 0x4d90)
    XCTAssert(z80.hl().value() == 0x379b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd50c)
    XCTAssert(z80.iy().value() == 0xa157)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd24() throws {
    loadRam(location: 0x0000, data:[0xdd,0x24])
    z80.af().ld(value: 0x0698)
    z80.bc().ld(value: 0xdcd0)
    z80.de().ld(value: 0xa31b)
    z80.hl().ld(value: 0xd527)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x8cda)
    z80.iy().ld(value: 0xb096)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x688)
    XCTAssert(z80.bc().value() == 0xdcd0)
    XCTAssert(z80.de().value() == 0xa31b)
    XCTAssert(z80.hl().value() == 0xd527)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8dda)
    XCTAssert(z80.iy().value() == 0xb096)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd25() throws {
    loadRam(location: 0x0000, data:[0xdd,0x25])
    z80.af().ld(value: 0x5acc)
    z80.bc().ld(value: 0x206b)
    z80.de().ld(value: 0xed10)
    z80.hl().ld(value: 0x6eab)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbb3c)
    z80.iy().ld(value: 0x5ebd)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5aaa)
    XCTAssert(z80.bc().value() == 0x206b)
    XCTAssert(z80.de().value() == 0xed10)
    XCTAssert(z80.hl().value() == 0x6eab)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xba3c)
    XCTAssert(z80.iy().value() == 0x5ebd)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd26() throws {
    loadRam(location: 0x0000, data:[0xdd,0x26,0xad])
    z80.af().ld(value: 0x9522)
    z80.bc().ld(value: 0xede0)
    z80.de().ld(value: 0xa352)
    z80.hl().ld(value: 0xadea)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5f40)
    z80.iy().ld(value: 0x82e1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9522)
    XCTAssert(z80.bc().value() == 0xede0)
    XCTAssert(z80.de().value() == 0xa352)
    XCTAssert(z80.hl().value() == 0xadea)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xad40)
    XCTAssert(z80.iy().value() == 0x82e1)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd29() throws {
    loadRam(location: 0x0000, data:[0xdd,0x29])
    z80.af().ld(value: 0xac80)
    z80.bc().ld(value: 0x0f0e)
    z80.de().ld(value: 0x72c8)
    z80.hl().ld(value: 0x1f2a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5195)
    z80.iy().ld(value: 0x7d8a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaca0)
    XCTAssert(z80.bc().value() == 0x0f0e)
    XCTAssert(z80.de().value() == 0x72c8)
    XCTAssert(z80.hl().value() == 0x1f2a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa32a)
    XCTAssert(z80.iy().value() == 0x7d8a)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd2a() throws {
    loadRam(location: 0x0000, data:[0xdd,0x2a,0xbc,0x40])
    loadRam(location: 0x40bc, data:[0xb5,0x30])
    z80.af().ld(value: 0x3d36)
    z80.bc().ld(value: 0xb24e)
    z80.de().ld(value: 0xbdbc)
    z80.hl().ld(value: 0xca4e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xba65)
    z80.iy().ld(value: 0xe7ce)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3d36)
    XCTAssert(z80.bc().value() == 0xb24e)
    XCTAssert(z80.de().value() == 0xbdbc)
    XCTAssert(z80.hl().value() == 0xca4e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x30b5)
    XCTAssert(z80.iy().value() == 0xe7ce)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd2b() throws {
    loadRam(location: 0x0000, data:[0xdd,0x2b])
    z80.af().ld(value: 0xad4b)
    z80.bc().ld(value: 0xd5e6)
    z80.de().ld(value: 0x9377)
    z80.hl().ld(value: 0xf132)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7a17)
    z80.iy().ld(value: 0x2188)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xad4b)
    XCTAssert(z80.bc().value() == 0xd5e6)
    XCTAssert(z80.de().value() == 0x9377)
    XCTAssert(z80.hl().value() == 0xf132)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7a16)
    XCTAssert(z80.iy().value() == 0x2188)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd2c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x2c])
    z80.af().ld(value: 0x8838)
    z80.bc().ld(value: 0xf2f3)
    z80.de().ld(value: 0xd277)
    z80.hl().ld(value: 0x9153)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc62f)
    z80.iy().ld(value: 0xb002)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8830)
    XCTAssert(z80.bc().value() == 0xf2f3)
    XCTAssert(z80.de().value() == 0xd277)
    XCTAssert(z80.hl().value() == 0x9153)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc630)
    XCTAssert(z80.iy().value() == 0xb002)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd2d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x2d])
    z80.af().ld(value: 0x39bc)
    z80.bc().ld(value: 0xb23c)
    z80.de().ld(value: 0x6e11)
    z80.hl().ld(value: 0x5a49)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0267)
    z80.iy().ld(value: 0xab03)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3922)
    XCTAssert(z80.bc().value() == 0xb23c)
    XCTAssert(z80.de().value() == 0x6e11)
    XCTAssert(z80.hl().value() == 0x5a49)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x266)
    XCTAssert(z80.iy().value() == 0xab03)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd2e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x2e,0x1c])
    z80.af().ld(value: 0x9aca)
    z80.bc().ld(value: 0xa04a)
    z80.de().ld(value: 0xb49f)
    z80.hl().ld(value: 0xa4a6)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbd90)
    z80.iy().ld(value: 0x38a1)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x9aca)
    XCTAssert(z80.bc().value() == 0xa04a)
    XCTAssert(z80.de().value() == 0xb49f)
    XCTAssert(z80.hl().value() == 0xa4a6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xbd1c)
    XCTAssert(z80.iy().value() == 0x38a1)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd34() throws {
    loadRam(location: 0x0000, data:[0xdd,0x34,0xe6])
    loadRam(location: 0xde8f, data:[0x57])
    z80.af().ld(value: 0x8304)
    z80.bc().ld(value: 0xd1fc)
    z80.de().ld(value: 0xb80b)
    z80.hl().ld(value: 0x8082)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xdea9)
    z80.iy().ld(value: 0x6fd8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8308)
    XCTAssert(z80.bc().value() == 0xd1fc)
    XCTAssert(z80.de().value() == 0xb80b)
    XCTAssert(z80.hl().value() == 0x8082)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xdea9)
    XCTAssert(z80.iy().value() == 0x6fd8)
    XCTAssert(z80.fetchRam(location: 0xde8f) == 0x58)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd35() throws {
    loadRam(location: 0x0000, data:[0xdd,0x35,0x60])
    loadRam(location: 0xc793, data:[0xf7])
    z80.af().ld(value: 0x8681)
    z80.bc().ld(value: 0x4641)
    z80.de().ld(value: 0x1ef6)
    z80.hl().ld(value: 0x10ab)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc733)
    z80.iy().ld(value: 0x8ec4)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x86a3)
    XCTAssert(z80.bc().value() == 0x4641)
    XCTAssert(z80.de().value() == 0x1ef6)
    XCTAssert(z80.hl().value() == 0x10ab)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc733)
    XCTAssert(z80.iy().value() == 0x8ec4)
    XCTAssert(z80.fetchRam(location: 0xc793) == 0xf6)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd36() throws {
    loadRam(location: 0x0000, data:[0xdd,0x36,0x35,0xb5])
    z80.af().ld(value: 0x76dc)
    z80.bc().ld(value: 0x2530)
    z80.de().ld(value: 0x5158)
    z80.hl().ld(value: 0x877d)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb5c6)
    z80.iy().ld(value: 0x8d3c)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x76dc)
    XCTAssert(z80.bc().value() == 0x2530)
    XCTAssert(z80.de().value() == 0x5158)
    XCTAssert(z80.hl().value() == 0x877d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xb5c6)
    XCTAssert(z80.iy().value() == 0x8d3c)
    XCTAssert(z80.fetchRam(location: 0xb5fb) == 0xb5)
    XCTAssert(z80.PC == 0x4)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd39() throws {
    loadRam(location: 0x0000, data:[0xdd,0x39])
    z80.af().ld(value: 0x875b)
    z80.bc().ld(value: 0xa334)
    z80.de().ld(value: 0xd79d)
    z80.hl().ld(value: 0x59e4)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb11a)
    z80.iy().ld(value: 0x4c88)
    z80.PC = 0x0000
    z80.SP = 0xfa4a
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8769)
    XCTAssert(z80.bc().value() == 0xa334)
    XCTAssert(z80.de().value() == 0xd79d)
    XCTAssert(z80.hl().value() == 0x59e4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xab64)
    XCTAssert(z80.iy().value() == 0x4c88)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0xfa4a)
    }

    func testdd44() throws {
    loadRam(location: 0x0000, data:[0xdd,0x44])
    z80.af().ld(value: 0xb37e)
    z80.bc().ld(value: 0xcbb0)
    z80.de().ld(value: 0x36e8)
    z80.hl().ld(value: 0x3f45)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x2702)
    z80.iy().ld(value: 0xb3b9)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xb37e)
    XCTAssert(z80.bc().value() == 0x27b0)
    XCTAssert(z80.de().value() == 0x36e8)
    XCTAssert(z80.hl().value() == 0x3f45)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x2702)
    XCTAssert(z80.iy().value() == 0xb3b9)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd45() throws {
    loadRam(location: 0x0000, data:[0xdd,0x45])
    z80.af().ld(value: 0x4e10)
    z80.bc().ld(value: 0x5c6d)
    z80.de().ld(value: 0xd11d)
    z80.hl().ld(value: 0x1736)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x7298)
    z80.iy().ld(value: 0x2d10)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4e10)
    XCTAssert(z80.bc().value() == 0x986d)
    XCTAssert(z80.de().value() == 0xd11d)
    XCTAssert(z80.hl().value() == 0x1736)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7298)
    XCTAssert(z80.iy().value() == 0x2d10)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd46() throws {
    loadRam(location: 0x0000, data:[0xdd,0x46,0x68])
    loadRam(location: 0x5d2f, data:[0x8d])
    z80.af().ld(value: 0xc758)
    z80.bc().ld(value: 0xbf29)
    z80.de().ld(value: 0x66f2)
    z80.hl().ld(value: 0x29ef)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5cc7)
    z80.iy().ld(value: 0x407d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xc758)
    XCTAssert(z80.bc().value() == 0x8d29)
    XCTAssert(z80.de().value() == 0x66f2)
    XCTAssert(z80.hl().value() == 0x29ef)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5cc7)
    XCTAssert(z80.iy().value() == 0x407d)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd4c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x4c])
    z80.af().ld(value: 0xe15c)
    z80.bc().ld(value: 0x75ec)
    z80.de().ld(value: 0x7531)
    z80.hl().ld(value: 0xae9e)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3ed8)
    z80.iy().ld(value: 0x03b7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xe15c)
    XCTAssert(z80.bc().value() == 0x753e)
    XCTAssert(z80.de().value() == 0x7531)
    XCTAssert(z80.hl().value() == 0xae9e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3ed8)
    XCTAssert(z80.iy().value() == 0x03b7)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd4d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x4d])
    z80.af().ld(value: 0x469e)
    z80.bc().ld(value: 0x7864)
    z80.de().ld(value: 0x6a5a)
    z80.hl().ld(value: 0x00e2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa1aa)
    z80.iy().ld(value: 0x0d6f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x469e)
    XCTAssert(z80.bc().value() == 0x78aa)
    XCTAssert(z80.de().value() == 0x6a5a)
    XCTAssert(z80.hl().value() == 0x00e2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa1aa)
    XCTAssert(z80.iy().value() == 0x0d6f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd4e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x4e,0x2e])
    loadRam(location: 0xd979, data:[0x76])
    z80.af().ld(value: 0x7bf7)
    z80.bc().ld(value: 0x6605)
    z80.de().ld(value: 0x8d55)
    z80.hl().ld(value: 0xdef2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd94b)
    z80.iy().ld(value: 0x17fb)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x7bf7)
    XCTAssert(z80.bc().value() == 0x6676)
    XCTAssert(z80.de().value() == 0x8d55)
    XCTAssert(z80.hl().value() == 0xdef2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd94b)
    XCTAssert(z80.iy().value() == 0x17fb)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd54() throws {
    loadRam(location: 0x0000, data:[0xdd,0x54])
    z80.af().ld(value: 0x8376)
    z80.bc().ld(value: 0x0d13)
    z80.de().ld(value: 0xc767)
    z80.hl().ld(value: 0x3119)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x4b6d)
    z80.iy().ld(value: 0x030b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8376)
    XCTAssert(z80.bc().value() == 0x0d13)
    XCTAssert(z80.de().value() == 0x4b67)
    XCTAssert(z80.hl().value() == 0x3119)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x4b6d)
    XCTAssert(z80.iy().value() == 0x030b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd55() throws {
    loadRam(location: 0x0000, data:[0xdd,0x55])
    z80.af().ld(value: 0xff78)
    z80.bc().ld(value: 0x85e3)
    z80.de().ld(value: 0x566b)
    z80.hl().ld(value: 0x8f3a)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd7d7)
    z80.iy().ld(value: 0x4e0b)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xff78)
    XCTAssert(z80.bc().value() == 0x85e3)
    XCTAssert(z80.de().value() == 0xd76b)
    XCTAssert(z80.hl().value() == 0x8f3a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd7d7)
    XCTAssert(z80.iy().value() == 0x4e0b)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd56() throws {
    loadRam(location: 0x0000, data:[0xdd,0x56,0xf4])
    loadRam(location: 0xa2fa, data:[0xde])
    z80.af().ld(value: 0x97b3)
    z80.bc().ld(value: 0xb617)
    z80.de().ld(value: 0xbb50)
    z80.hl().ld(value: 0x81d1)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa306)
    z80.iy().ld(value: 0x7a49)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x97b3)
    XCTAssert(z80.bc().value() == 0xb617)
    XCTAssert(z80.de().value() == 0xde50)
    XCTAssert(z80.hl().value() == 0x81d1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa306)
    XCTAssert(z80.iy().value() == 0x7a49)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd5c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x5c])
    z80.af().ld(value: 0xaf82)
    z80.bc().ld(value: 0x24bf)
    z80.de().ld(value: 0x2793)
    z80.hl().ld(value: 0xf925)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xf9a3)
    z80.iy().ld(value: 0x0b82)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xaf82)
    XCTAssert(z80.bc().value() == 0x24bf)
    XCTAssert(z80.de().value() == 0x27f9)
    XCTAssert(z80.hl().value() == 0xf925)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xf9a3)
    XCTAssert(z80.iy().value() == 0x0b82)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd5d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x5d])
    z80.af().ld(value: 0x36cb)
    z80.bc().ld(value: 0x97a9)
    z80.de().ld(value: 0x400d)
    z80.hl().ld(value: 0x30fe)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3340)
    z80.iy().ld(value: 0xb3ed)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x36cb)
    XCTAssert(z80.bc().value() == 0x97a9)
    XCTAssert(z80.de().value() == 0x4040)
    XCTAssert(z80.hl().value() == 0x30fe)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3340)
    XCTAssert(z80.iy().value() == 0xb3ed)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd5e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x5e,0x8f])
    loadRam(location: 0x8cc1, data:[0xce])
    z80.af().ld(value: 0xa220)
    z80.bc().ld(value: 0x389d)
    z80.de().ld(value: 0x2ff8)
    z80.hl().ld(value: 0x368c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x8d32)
    z80.iy().ld(value: 0x3512)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xa220)
    XCTAssert(z80.bc().value() == 0x389d)
    XCTAssert(z80.de().value() == 0x2fce)
    XCTAssert(z80.hl().value() == 0x368c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8d32)
    XCTAssert(z80.iy().value() == 0x3512)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd60() throws {
    loadRam(location: 0x0000, data:[0xdd,0x60])
    z80.af().ld(value: 0x2392)
    z80.bc().ld(value: 0x7f6a)
    z80.de().ld(value: 0x3dc0)
    z80.hl().ld(value: 0xcefb)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x44a0)
    z80.iy().ld(value: 0xc424)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x2392)
    XCTAssert(z80.bc().value() == 0x7f6a)
    XCTAssert(z80.de().value() == 0x3dc0)
    XCTAssert(z80.hl().value() == 0xcefb)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x7fa0)
    XCTAssert(z80.iy().value() == 0xc424)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd61() throws {
    loadRam(location: 0x0000, data:[0xdd,0x61])
    z80.af().ld(value: 0x76ed)
    z80.bc().ld(value: 0x268c)
    z80.de().ld(value: 0xd5c8)
    z80.hl().ld(value: 0xbab0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xb650)
    z80.iy().ld(value: 0x0a93)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x76ed)
    XCTAssert(z80.bc().value() == 0x268c)
    XCTAssert(z80.de().value() == 0xd5c8)
    XCTAssert(z80.hl().value() == 0xbab0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8c50)
    XCTAssert(z80.iy().value() == 0x0a93)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd62() throws {
    loadRam(location: 0x0000, data:[0xdd,0x62])
    z80.af().ld(value: 0x4c6f)
    z80.bc().ld(value: 0xb482)
    z80.de().ld(value: 0xfef4)
    z80.hl().ld(value: 0x62e7)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x6e25)
    z80.iy().ld(value: 0x9655)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4c6f)
    XCTAssert(z80.bc().value() == 0xb482)
    XCTAssert(z80.de().value() == 0xfef4)
    XCTAssert(z80.hl().value() == 0x62e7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfe25)
    XCTAssert(z80.iy().value() == 0x9655)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd63() throws {
    loadRam(location: 0x0000, data:[0xdd,0x63])
    z80.af().ld(value: 0x6e9a)
    z80.bc().ld(value: 0x5499)
    z80.de().ld(value: 0x3c8f)
    z80.hl().ld(value: 0x1f64)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xbf35)
    z80.iy().ld(value: 0x0df7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6e9a)
    XCTAssert(z80.bc().value() == 0x5499)
    XCTAssert(z80.de().value() == 0x3c8f)
    XCTAssert(z80.hl().value() == 0x1f64)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8f35)
    XCTAssert(z80.iy().value() == 0x0df7)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd64() throws {
    loadRam(location: 0x0000, data:[0xdd,0x64])
    z80.af().ld(value: 0x47f6)
    z80.bc().ld(value: 0x1b7a)
    z80.de().ld(value: 0xa55e)
    z80.hl().ld(value: 0x2fc2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xefc7)
    z80.iy().ld(value: 0xaca0)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x47f6)
    XCTAssert(z80.bc().value() == 0x1b7a)
    XCTAssert(z80.de().value() == 0xa55e)
    XCTAssert(z80.hl().value() == 0x2fc2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xefc7)
    XCTAssert(z80.iy().value() == 0xaca0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd65() throws {
    loadRam(location: 0x0000, data:[0xdd,0x65])
    z80.af().ld(value: 0xd786)
    z80.bc().ld(value: 0x7d1d)
    z80.de().ld(value: 0xb659)
    z80.hl().ld(value: 0x77e8)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x58fa)
    z80.iy().ld(value: 0x006d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd786)
    XCTAssert(z80.bc().value() == 0x7d1d)
    XCTAssert(z80.de().value() == 0xb659)
    XCTAssert(z80.hl().value() == 0x77e8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xfafa)
    XCTAssert(z80.iy().value() == 0x006d)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd66() throws {
    loadRam(location: 0x0000, data:[0xdd,0x66,0xb5])
    loadRam(location: 0xce12, data:[0x03])
    z80.af().ld(value: 0x84c2)
    z80.bc().ld(value: 0x79b1)
    z80.de().ld(value: 0xca4a)
    z80.hl().ld(value: 0xaaa0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xce5d)
    z80.iy().ld(value: 0xdd2d)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x84c2)
    XCTAssert(z80.bc().value() == 0x79b1)
    XCTAssert(z80.de().value() == 0xca4a)
    XCTAssert(z80.hl().value() == 0x03a0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xce5d)
    XCTAssert(z80.iy().value() == 0xdd2d)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd67() throws {
    loadRam(location: 0x0000, data:[0xdd,0x67])
    z80.af().ld(value: 0x967c)
    z80.bc().ld(value: 0x511e)
    z80.de().ld(value: 0x336d)
    z80.hl().ld(value: 0x40f6)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x66e7)
    z80.iy().ld(value: 0x5be2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x967c)
    XCTAssert(z80.bc().value() == 0x511e)
    XCTAssert(z80.de().value() == 0x336d)
    XCTAssert(z80.hl().value() == 0x40f6)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x96e7)
    XCTAssert(z80.iy().value() == 0x5be2)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd68() throws {
    loadRam(location: 0x0000, data:[0xdd,0x68])
    z80.af().ld(value: 0x4a9d)
    z80.bc().ld(value: 0xefa8)
    z80.de().ld(value: 0xfebd)
    z80.hl().ld(value: 0x07e4)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5fd8)
    z80.iy().ld(value: 0xb23f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4a9d)
    XCTAssert(z80.bc().value() == 0xefa8)
    XCTAssert(z80.de().value() == 0xfebd)
    XCTAssert(z80.hl().value() == 0x07e4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5fef)
    XCTAssert(z80.iy().value() == 0xb23f)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd69() throws {
    loadRam(location: 0x0000, data:[0xdd,0x69])
    z80.af().ld(value: 0x6466)
    z80.bc().ld(value: 0x2142)
    z80.de().ld(value: 0x2523)
    z80.hl().ld(value: 0x82b3)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x6479)
    z80.iy().ld(value: 0x04a7)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6466)
    XCTAssert(z80.bc().value() == 0x2142)
    XCTAssert(z80.de().value() == 0x2523)
    XCTAssert(z80.hl().value() == 0x82b3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x6442)
    XCTAssert(z80.iy().value() == 0x04a7)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6a() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6a])
    z80.af().ld(value: 0x401f)
    z80.bc().ld(value: 0x61f1)
    z80.de().ld(value: 0x4b08)
    z80.hl().ld(value: 0xfa88)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc37f)
    z80.iy().ld(value: 0xd8f6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x401f)
    XCTAssert(z80.bc().value() == 0x61f1)
    XCTAssert(z80.de().value() == 0x4b08)
    XCTAssert(z80.hl().value() == 0xfa88)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc34b)
    XCTAssert(z80.iy().value() == 0xd8f6)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6b() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6b])
    z80.af().ld(value: 0x6dc7)
    z80.bc().ld(value: 0xe2ae)
    z80.de().ld(value: 0x40bd)
    z80.hl().ld(value: 0xf3c0)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x2290)
    z80.iy().ld(value: 0x2749)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6dc7)
    XCTAssert(z80.bc().value() == 0xe2ae)
    XCTAssert(z80.de().value() == 0x40bd)
    XCTAssert(z80.hl().value() == 0xf3c0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x22bd)
    XCTAssert(z80.iy().value() == 0x2749)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6c])
    z80.af().ld(value: 0x3939)
    z80.bc().ld(value: 0x90da)
    z80.de().ld(value: 0x62dc)
    z80.hl().ld(value: 0x7c31)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x412f)
    z80.iy().ld(value: 0x7211)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3939)
    XCTAssert(z80.bc().value() == 0x90da)
    XCTAssert(z80.de().value() == 0x62dc)
    XCTAssert(z80.hl().value() == 0x7c31)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x4141)
    XCTAssert(z80.iy().value() == 0x7211)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6d])
    z80.af().ld(value: 0x3964)
    z80.bc().ld(value: 0xff3f)
    z80.de().ld(value: 0x23d4)
    z80.hl().ld(value: 0xc7c7)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x9b70)
    z80.iy().ld(value: 0x20c6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x3964)
    XCTAssert(z80.bc().value() == 0xff3f)
    XCTAssert(z80.de().value() == 0x23d4)
    XCTAssert(z80.hl().value() == 0xc7c7)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x9b70)
    XCTAssert(z80.iy().value() == 0x20c6)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6e,0x2c])
    loadRam(location: 0xc674, data:[0x6b])
    z80.af().ld(value: 0x223f)
    z80.bc().ld(value: 0xf661)
    z80.de().ld(value: 0xb61c)
    z80.hl().ld(value: 0x0f53)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xc648)
    z80.iy().ld(value: 0xfae8)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x223f)
    XCTAssert(z80.bc().value() == 0xf661)
    XCTAssert(z80.de().value() == 0xb61c)
    XCTAssert(z80.hl().value() == 0x0f6b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xc648)
    XCTAssert(z80.iy().value() == 0xfae8)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd6f() throws {
    loadRam(location: 0x0000, data:[0xdd,0x6f])
    z80.af().ld(value: 0x6e84)
    z80.bc().ld(value: 0x9cd4)
    z80.de().ld(value: 0xa293)
    z80.hl().ld(value: 0x647d)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x0d0b)
    z80.iy().ld(value: 0x4a56)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x6e84)
    XCTAssert(z80.bc().value() == 0x9cd4)
    XCTAssert(z80.de().value() == 0xa293)
    XCTAssert(z80.hl().value() == 0x647d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0d6e)
    XCTAssert(z80.iy().value() == 0x4a56)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd70() throws {
    loadRam(location: 0x0000, data:[0xdd,0x70,0xf6])
    z80.af().ld(value: 0xd09f)
    z80.bc().ld(value: 0xfe00)
    z80.de().ld(value: 0x231e)
    z80.hl().ld(value: 0x31ec)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x05fa)
    z80.iy().ld(value: 0xea92)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xd09f)
    XCTAssert(z80.bc().value() == 0xfe00)
    XCTAssert(z80.de().value() == 0x231e)
    XCTAssert(z80.hl().value() == 0x31ec)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x05fa)
    XCTAssert(z80.iy().value() == 0xea92)
    XCTAssert(z80.fetchRam(location: 0x05f0) == 0xfe)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd71() throws {
    loadRam(location: 0x0000, data:[0xdd,0x71,0x23])
    z80.af().ld(value: 0xebee)
    z80.bc().ld(value: 0x151c)
    z80.de().ld(value: 0x05c7)
    z80.hl().ld(value: 0xee08)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x3722)
    z80.iy().ld(value: 0x2ec6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xebee)
    XCTAssert(z80.bc().value() == 0x151c)
    XCTAssert(z80.de().value() == 0x05c7)
    XCTAssert(z80.hl().value() == 0xee08)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x3722)
    XCTAssert(z80.iy().value() == 0x2ec6)
    XCTAssert(z80.fetchRam(location: 0x3745) == 0x1c)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd72() throws {
    loadRam(location: 0x0000, data:[0xdd,0x72,0x93])
    z80.af().ld(value: 0x80c9)
    z80.bc().ld(value: 0xac1e)
    z80.de().ld(value: 0x63bd)
    z80.hl().ld(value: 0x828b)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x8dff)
    z80.iy().ld(value: 0x94ef)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x80c9)
    XCTAssert(z80.bc().value() == 0xac1e)
    XCTAssert(z80.de().value() == 0x63bd)
    XCTAssert(z80.hl().value() == 0x828b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8dff)
    XCTAssert(z80.iy().value() == 0x94ef)
    XCTAssert(z80.fetchRam(location: 0x8d92) == 0x63)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd73() throws {
    loadRam(location: 0x0000, data:[0xdd,0x73,0x57])
    z80.af().ld(value: 0x8f3e)
    z80.bc().ld(value: 0xb5a3)
    z80.de().ld(value: 0x07de)
    z80.hl().ld(value: 0x0b0c)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x79c6)
    z80.iy().ld(value: 0xae79)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8f3e)
    XCTAssert(z80.bc().value() == 0xb5a3)
    XCTAssert(z80.de().value() == 0x07de)
    XCTAssert(z80.hl().value() == 0x0b0c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x79c6)
    XCTAssert(z80.iy().value() == 0xae79)
    XCTAssert(z80.fetchRam(location: 0x7a1d) == 0xde)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd74() throws {
    loadRam(location: 0x0000, data:[0xdd,0x74,0xb9])
    z80.af().ld(value: 0x4ae0)
    z80.bc().ld(value: 0x49c5)
    z80.de().ld(value: 0x3deb)
    z80.hl().ld(value: 0x0125)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x5910)
    z80.iy().ld(value: 0x429a)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x4ae0)
    XCTAssert(z80.bc().value() == 0x49c5)
    XCTAssert(z80.de().value() == 0x3deb)
    XCTAssert(z80.hl().value() == 0x125)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x5910)
    XCTAssert(z80.iy().value() == 0x429a)
    XCTAssert(z80.fetchRam(location: 0x58c9) == 0x1)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd75() throws {
    loadRam(location: 0x0000, data:[0xdd,0x75,0x30])
    z80.af().ld(value: 0x5772)
    z80.bc().ld(value: 0xe833)
    z80.de().ld(value: 0xb63e)
    z80.hl().ld(value: 0x734f)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xae4c)
    z80.iy().ld(value: 0xe8c2)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5772)
    XCTAssert(z80.bc().value() == 0xe833)
    XCTAssert(z80.de().value() == 0xb63e)
    XCTAssert(z80.hl().value() == 0x734f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xae4c)
    XCTAssert(z80.iy().value() == 0xe8c2)
    XCTAssert(z80.fetchRam(location: 0xae7c) == 0x4f)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd77() throws {
    loadRam(location: 0x0000, data:[0xdd,0x77,0x8c])
    z80.af().ld(value: 0xdc56)
    z80.bc().ld(value: 0xd893)
    z80.de().ld(value: 0x4116)
    z80.hl().ld(value: 0xf2d2)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xa181)
    z80.iy().ld(value: 0x3157)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xdc56)
    XCTAssert(z80.bc().value() == 0xd893)
    XCTAssert(z80.de().value() == 0x4116)
    XCTAssert(z80.hl().value() == 0xf2d2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xa181)
    XCTAssert(z80.iy().value() == 0x3157)
    XCTAssert(z80.fetchRam(location: 0xa10d) == 0xdc)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd7c() throws {
    loadRam(location: 0x0000, data:[0xdd,0x7c])
    z80.af().ld(value: 0x7558)
    z80.bc().ld(value: 0x7705)
    z80.de().ld(value: 0xac92)
    z80.hl().ld(value: 0xa6a1)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x8cde)
    z80.iy().ld(value: 0x7507)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x8c58)
    XCTAssert(z80.bc().value() == 0x7705)
    XCTAssert(z80.de().value() == 0xac92)
    XCTAssert(z80.hl().value() == 0xa6a1)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x8cde)
    XCTAssert(z80.iy().value() == 0x7507)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd7d() throws {
    loadRam(location: 0x0000, data:[0xdd,0x7d])
    z80.af().ld(value: 0x6c18)
    z80.bc().ld(value: 0x93fb)
    z80.de().ld(value: 0x6bdd)
    z80.hl().ld(value: 0x3a10)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0xd7cb)
    z80.iy().ld(value: 0xc0f6)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0xcb18)
    XCTAssert(z80.bc().value() == 0x93fb)
    XCTAssert(z80.de().value() == 0x6bdd)
    XCTAssert(z80.hl().value() == 0x3a10)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0xd7cb)
    XCTAssert(z80.iy().value() == 0xc0f6)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testdd7e() throws {
    loadRam(location: 0x0000, data:[0xdd,0x7e,0xbc])
    loadRam(location: 0x1cb0, data:[0x57])
    z80.af().ld(value: 0x6a66)
    z80.bc().ld(value: 0x1f77)
    z80.de().ld(value: 0x6220)
    z80.hl().ld(value: 0x0c40)
    z80.af2().ld(value: 0x0000)
    z80.bc2().ld(value: 0x0000)
    z80.de2().ld(value: 0x0000)
    z80.hl2().ld(value: 0x0000)
    z80.ix().ld(value: 0x1cf4)
    z80.iy().ld(value: 0x1a1f)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdd)
    XCTAssert(z80.af().value() == 0x5766)
    XCTAssert(z80.bc().value() == 0x1f77)
    XCTAssert(z80.de().value() == 0x6220)
    XCTAssert(z80.hl().value() == 0x0c40)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x1cf4)
    XCTAssert(z80.iy().value() == 0x1a1f)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

  
}
