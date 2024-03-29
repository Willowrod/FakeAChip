//
//  allTestsP_CB00to7f.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTestsP_CB00to7f: BaseTest {

    
   
    
    func testcb00() throws {
    loadRam(location: 0, data:[203,0])
    loadRam(location: 43014, data:[118])
    z80.af().ld(value: 0xda00)
    z80.bc().ld(value: 0xe479)
    z80.de().ld(value: 0x552e)
    z80.hl().ld(value: 0xa806)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xda8d)
    XCTAssert(z80.bc().value() == 0xc979)
    XCTAssert(z80.de().value() == 0x552e)
    XCTAssert(z80.hl().value() == 0xa806)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb01() throws {
    loadRam(location: 0, data:[203,1])
    loadRam(location: 61285, data:[251])
    z80.af().ld(value: 0x1000)
    z80.bc().ld(value: 0xb379)
    z80.de().ld(value: 0xb480)
    z80.hl().ld(value: 0xef65)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x10a0)
    XCTAssert(z80.bc().value() == 0xb3f2)
    XCTAssert(z80.de().value() == 0xb480)
    XCTAssert(z80.hl().value() == 0xef65)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb02() throws {
    loadRam(location: 0, data:[203,2])
    loadRam(location: 42994, data:[74])
    z80.af().ld(value: 0x2e00)
    z80.bc().ld(value: 0x9adf)
    z80.de().ld(value: 0xae6e)
    z80.hl().ld(value: 0xa7f2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2e09)
    XCTAssert(z80.bc().value() == 0x9adf)
    XCTAssert(z80.de().value() == 0x5d6e)
    XCTAssert(z80.hl().value() == 0xa7f2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb03() throws {
    loadRam(location: 0, data:[203,3])
    loadRam(location: 51825, data:[231])
    z80.af().ld(value: 0x6800)
    z80.bc().ld(value: 0x9995)
    z80.de().ld(value: 0xde3f)
    z80.hl().ld(value: 0xca71)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x682c)
    XCTAssert(z80.bc().value() == 0x9995)
    XCTAssert(z80.de().value() == 0xde7e)
    XCTAssert(z80.hl().value() == 0xca71)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb04() throws {
    loadRam(location: 0, data:[203,4])
    loadRam(location: 26544, data:[205])
    z80.af().ld(value: 0x8c00)
    z80.bc().ld(value: 0xbeea)
    z80.de().ld(value: 0x0ce4)
    z80.hl().ld(value: 0x67b0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8c88)
    XCTAssert(z80.bc().value() == 0xbeea)
    XCTAssert(z80.de().value() == 0x0ce4)
    XCTAssert(z80.hl().value() == 0xceb0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb05() throws {
    loadRam(location: 0, data:[203,5])
    loadRam(location: 52018, data:[27])
    z80.af().ld(value: 0x3600)
    z80.bc().ld(value: 0xe19f)
    z80.de().ld(value: 0x78c9)
    z80.hl().ld(value: 0xcb32)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3620)
    XCTAssert(z80.bc().value() == 0xe19f)
    XCTAssert(z80.de().value() == 0x78c9)
    XCTAssert(z80.hl().value() == 0xcb64)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb06() throws {
    loadRam(location: 0, data:[203,6])
    loadRam(location: 23300, data:[212])
    z80.af().ld(value: 0x8a00)
    z80.bc().ld(value: 0xdb02)
    z80.de().ld(value: 0x8fb1)
    z80.hl().ld(value: 0x5b04)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8aad)
    XCTAssert(z80.bc().value() == 0xdb02)
    XCTAssert(z80.de().value() == 0x8fb1)
    XCTAssert(z80.hl().value() == 0x5b04)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x5b04) == 0xa9)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb07() throws {
    loadRam(location: 0, data:[203,7])
    loadRam(location: 56490, data:[141])
    z80.af().ld(value: 0x6d00)
    z80.bc().ld(value: 0x19cf)
    z80.de().ld(value: 0x7259)
    z80.hl().ld(value: 0xdcaa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xda88)
    XCTAssert(z80.bc().value() == 0x19cf)
    XCTAssert(z80.de().value() == 0x7259)
    XCTAssert(z80.hl().value() == 0xdcaa)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb08() throws {
    loadRam(location: 0, data:[203,8])
    loadRam(location: 12002, data:[83])
    z80.af().ld(value: 0x8000)
    z80.bc().ld(value: 0xcdb5)
    z80.de().ld(value: 0x818e)
    z80.hl().ld(value: 0x2ee2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x80a1)
    XCTAssert(z80.bc().value() == 0xe6b5)
    XCTAssert(z80.de().value() == 0x818e)
    XCTAssert(z80.hl().value() == 0x2ee2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb09() throws {
    loadRam(location: 0, data:[203,9])
    loadRam(location: 22982, data:[158])
    z80.af().ld(value: 0x1800)
    z80.bc().ld(value: 0x125c)
    z80.de().ld(value: 0xdd97)
    z80.hl().ld(value: 0x59c6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x182c)
    XCTAssert(z80.bc().value() == 0x122e)
    XCTAssert(z80.de().value() == 0xdd97)
    XCTAssert(z80.hl().value() == 0x59c6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0a() throws {
    loadRam(location: 0, data:[203,10])
    loadRam(location: 25517, data:[150])
    z80.af().ld(value: 0x1200)
    z80.bc().ld(value: 0x3ba1)
    z80.de().ld(value: 0x7724)
    z80.hl().ld(value: 0x63ad)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x12ad)
    XCTAssert(z80.bc().value() == 0x3ba1)
    XCTAssert(z80.de().value() == 0xbb24)
    XCTAssert(z80.hl().value() == 0x63ad)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0b() throws {
    loadRam(location: 0, data:[203,11])
    loadRam(location: 649, data:[55])
    z80.af().ld(value: 0x7600)
    z80.bc().ld(value: 0x2abf)
    z80.de().ld(value: 0xb626)
    z80.hl().ld(value: 0x0289)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7600)
    XCTAssert(z80.bc().value() == 0x2abf)
    XCTAssert(z80.de().value() == 0xb613)
    XCTAssert(z80.hl().value() == 0x0289)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0c() throws {
    loadRam(location: 0, data:[203,12])
    loadRam(location: 13529, data:[80])
    z80.af().ld(value: 0x0e00)
    z80.bc().ld(value: 0x6fc5)
    z80.de().ld(value: 0x2f12)
    z80.hl().ld(value: 0x34d9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0e08)
    XCTAssert(z80.bc().value() == 0x6fc5)
    XCTAssert(z80.de().value() == 0x2f12)
    XCTAssert(z80.hl().value() == 0x1ad9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0d() throws {
    loadRam(location: 0, data:[203,13])
    loadRam(location: 20890, data:[122])
    z80.af().ld(value: 0x6300)
    z80.bc().ld(value: 0x95a3)
    z80.de().ld(value: 0xfcd2)
    z80.hl().ld(value: 0x519a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x630c)
    XCTAssert(z80.bc().value() == 0x95a3)
    XCTAssert(z80.de().value() == 0xfcd2)
    XCTAssert(z80.hl().value() == 0x514d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0e() throws {
    loadRam(location: 0, data:[203,14])
    loadRam(location: 21566, data:[210])
    z80.af().ld(value: 0xfc00)
    z80.bc().ld(value: 0xadf9)
    z80.de().ld(value: 0x4925)
    z80.hl().ld(value: 0x543e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xfc2c)
    XCTAssert(z80.bc().value() == 0xadf9)
    XCTAssert(z80.de().value() == 0x4925)
    XCTAssert(z80.hl().value() == 0x543e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x543e) == 0x69)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb0f() throws {
    loadRam(location: 0, data:[203,15])
    loadRam(location: 1803, data:[134])
    z80.af().ld(value: 0xc300)
    z80.bc().ld(value: 0x18f3)
    z80.de().ld(value: 0x41b8)
    z80.hl().ld(value: 0x070b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe1a5)
    XCTAssert(z80.bc().value() == 0x18f3)
    XCTAssert(z80.de().value() == 0x41b8)
    XCTAssert(z80.hl().value() == 0x070b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }

    
    func testcb10() throws {
    loadRam(location: 0, data:[203,16])
    loadRam(location: 3444, data:[61])
    z80.af().ld(value: 0xf800)
    z80.bc().ld(value: 0xdc25)
    z80.de().ld(value: 0x33b3)
    z80.hl().ld(value: 0x0d74)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf8ad)
    XCTAssert(z80.bc().value() == 0xb825)
    XCTAssert(z80.de().value() == 0x33b3)
    XCTAssert(z80.hl().value() == 0x0d74)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb11() throws {
    loadRam(location: 0, data:[203,17])
    loadRam(location: 60738, data:[183])
    z80.af().ld(value: 0x6500)
    z80.bc().ld(value: 0xe25c)
    z80.de().ld(value: 0x4b8a)
    z80.hl().ld(value: 0xed42)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x65ac)
    XCTAssert(z80.bc().value() == 0xe2b8)
    XCTAssert(z80.de().value() == 0x4b8a)
    XCTAssert(z80.hl().value() == 0xed42)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb12() throws {
    loadRam(location: 0, data:[203,18])
    loadRam(location: 10694, data:[136])
    z80.af().ld(value: 0x7700)
    z80.bc().ld(value: 0x1384)
    z80.de().ld(value: 0x0f50)
    z80.hl().ld(value: 0x29c6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x770c)
    XCTAssert(z80.bc().value() == 0x1384)
    XCTAssert(z80.de().value() == 0x1e50)
    XCTAssert(z80.hl().value() == 0x29c6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb13() throws {
    loadRam(location: 0, data:[203,19])
    loadRam(location: 16087, data:[234])
    z80.af().ld(value: 0xce00)
    z80.bc().ld(value: 0x9f17)
    z80.de().ld(value: 0xe128)
    z80.hl().ld(value: 0x3ed7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xce04)
    XCTAssert(z80.bc().value() == 0x9f17)
    XCTAssert(z80.de().value() == 0xe150)
    XCTAssert(z80.hl().value() == 0x3ed7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb14() throws {
    loadRam(location: 0, data:[203,20])
    loadRam(location: 31898, data:[15])
    z80.af().ld(value: 0xb200)
    z80.bc().ld(value: 0x541a)
    z80.de().ld(value: 0x60c7)
    z80.hl().ld(value: 0x7c9a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb2a8)
    XCTAssert(z80.bc().value() == 0x541a)
    XCTAssert(z80.de().value() == 0x60c7)
    XCTAssert(z80.hl().value() == 0xf89a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb15() throws {
    loadRam(location: 0, data:[203,21])
    loadRam(location: 994, data:[188])
    z80.af().ld(value: 0x2d00)
    z80.bc().ld(value: 0xc1df)
    z80.de().ld(value: 0x6eab)
    z80.hl().ld(value: 0x03e2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x2d81)
    XCTAssert(z80.bc().value() == 0xc1df)
    XCTAssert(z80.de().value() == 0x6eab)
    XCTAssert(z80.hl().value() == 0x03c4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb16() throws {
    loadRam(location: 0, data:[203,22])
    loadRam(location: 26702, data:[195])
    z80.af().ld(value: 0x3600)
    z80.bc().ld(value: 0x3b53)
    z80.de().ld(value: 0x1a4a)
    z80.hl().ld(value: 0x684e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3681)
    XCTAssert(z80.bc().value() == 0x3b53)
    XCTAssert(z80.de().value() == 0x1a4a)
    XCTAssert(z80.hl().value() == 0x684e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x684e) == 0x86)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb17() throws {
    loadRam(location: 0, data:[203,23])
    loadRam(location: 4002, data:[35])
    z80.af().ld(value: 0x5400)
    z80.bc().ld(value: 0xd090)
    z80.de().ld(value: 0xf60d)
    z80.hl().ld(value: 0x0fa2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa8a8)
    XCTAssert(z80.bc().value() == 0xd090)
    XCTAssert(z80.de().value() == 0xf60d)
    XCTAssert(z80.hl().value() == 0x0fa2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb18() throws {
    loadRam(location: 0, data:[203,24])
    loadRam(location: 38294, data:[182])
    z80.af().ld(value: 0x8600)
    z80.bc().ld(value: 0xc658)
    z80.de().ld(value: 0x755f)
    z80.hl().ld(value: 0x9596)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8624)
    XCTAssert(z80.bc().value() == 0x6358)
    XCTAssert(z80.de().value() == 0x755f)
    XCTAssert(z80.hl().value() == 0x9596)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb19() throws {
    loadRam(location: 0, data:[203,25])
    loadRam(location: 29128, data:[133])
    z80.af().ld(value: 0x9600)
    z80.bc().ld(value: 0xbeb3)
    z80.de().ld(value: 0x7c22)
    z80.hl().ld(value: 0x71c8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x960d)
    XCTAssert(z80.bc().value() == 0xbe59)
    XCTAssert(z80.de().value() == 0x7c22)
    XCTAssert(z80.hl().value() == 0x71c8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1a() throws {
    loadRam(location: 0, data:[203,26])
    loadRam(location: 21113, data:[38])
    z80.af().ld(value: 0x3900)
    z80.bc().ld(value: 0x882f)
    z80.de().ld(value: 0x543b)
    z80.hl().ld(value: 0x5279)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3928)
    XCTAssert(z80.bc().value() == 0x882f)
    XCTAssert(z80.de().value() == 0x2a3b)
    XCTAssert(z80.hl().value() == 0x5279)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1b() throws {
    loadRam(location: 0, data:[203,27])
    loadRam(location: 59572, data:[185])
    z80.af().ld(value: 0x9e00)
    z80.bc().ld(value: 0xb338)
    z80.de().ld(value: 0x876c)
    z80.hl().ld(value: 0xe8b4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9e24)
    XCTAssert(z80.bc().value() == 0xb338)
    XCTAssert(z80.de().value() == 0x8736)
    XCTAssert(z80.hl().value() == 0xe8b4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1c() throws {
    loadRam(location: 0, data:[203,28])
    loadRam(location: 12573, data:[17])
    z80.af().ld(value: 0x4b00)
    z80.bc().ld(value: 0xb555)
    z80.de().ld(value: 0x238f)
    z80.hl().ld(value: 0x311d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x4b0d)
    XCTAssert(z80.bc().value() == 0xb555)
    XCTAssert(z80.de().value() == 0x238f)
    XCTAssert(z80.hl().value() == 0x181d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1d() throws {
    loadRam(location: 0, data:[203,29])
    loadRam(location: 58449, data:[71])
    z80.af().ld(value: 0x2100)
    z80.bc().ld(value: 0x3d7e)
    z80.de().ld(value: 0x5e39)
    z80.hl().ld(value: 0xe451)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x212d)
    XCTAssert(z80.bc().value() == 0x3d7e)
    XCTAssert(z80.de().value() == 0x5e39)
    XCTAssert(z80.hl().value() == 0xe428)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1e() throws {
    loadRam(location: 0, data:[203,30])
    loadRam(location: 239, data:[145])
    z80.af().ld(value: 0x5e00)
    z80.bc().ld(value: 0x66b9)
    z80.de().ld(value: 0x80dc)
    z80.hl().ld(value: 0x00ef)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5e0d)
    XCTAssert(z80.bc().value() == 0x66b9)
    XCTAssert(z80.de().value() == 0x80dc)
    XCTAssert(z80.hl().value() == 0x00ef)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x00ef) == 0x48)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb1f() throws {
    loadRam(location: 0, data:[203,31])
    loadRam(location: 44263, data:[130])
    z80.af().ld(value: 0xed00)
    z80.bc().ld(value: 0xb838)
    z80.de().ld(value: 0x8e18)
    z80.hl().ld(value: 0xace7)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7621)
    XCTAssert(z80.bc().value() == 0xb838)
    XCTAssert(z80.de().value() == 0x8e18)
    XCTAssert(z80.hl().value() == 0xace7)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb20() throws {
    loadRam(location: 0, data:[203,32])
    loadRam(location: 52406, data:[26])
    z80.af().ld(value: 0xc700)
    z80.bc().ld(value: 0x0497)
    z80.de().ld(value: 0xd72b)
    z80.hl().ld(value: 0xccb6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc708)
    XCTAssert(z80.bc().value() == 0x0897)
    XCTAssert(z80.de().value() == 0xd72b)
    XCTAssert(z80.hl().value() == 0xccb6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb21() throws {
    loadRam(location: 0, data:[203,33])
    loadRam(location: 14248, data:[221])
    z80.af().ld(value: 0x2200)
    z80.bc().ld(value: 0x5cf4)
    z80.de().ld(value: 0x938e)
    z80.hl().ld(value: 0x37a8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x22ad)
    XCTAssert(z80.bc().value() == 0x5ce8)
    XCTAssert(z80.de().value() == 0x938e)
    XCTAssert(z80.hl().value() == 0x37a8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb22() throws {
    loadRam(location: 0, data:[203,34])
    loadRam(location: 1601, data:[77])
    z80.af().ld(value: 0x8500)
    z80.bc().ld(value: 0x0950)
    z80.de().ld(value: 0xe7e8)
    z80.hl().ld(value: 0x0641)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8589)
    XCTAssert(z80.bc().value() == 0x0950)
    XCTAssert(z80.de().value() == 0xcee8)
    XCTAssert(z80.hl().value() == 0x0641)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb23() throws {
    loadRam(location: 0, data:[203,35])
    loadRam(location: 43609, data:[193])
    z80.af().ld(value: 0x2100)
    z80.bc().ld(value: 0x2a7c)
    z80.de().ld(value: 0x37d0)
    z80.hl().ld(value: 0xaa59)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x21a5)
    XCTAssert(z80.bc().value() == 0x2a7c)
    XCTAssert(z80.de().value() == 0x37a0)
    XCTAssert(z80.hl().value() == 0xaa59)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb24() throws {
    loadRam(location: 0, data:[203,36])
    loadRam(location: 33974, data:[128])
    z80.af().ld(value: 0xfb00)
    z80.bc().ld(value: 0xb9de)
    z80.de().ld(value: 0x7014)
    z80.hl().ld(value: 0x84b6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xfb09)
    XCTAssert(z80.bc().value() == 0xb9de)
    XCTAssert(z80.de().value() == 0x7014)
    XCTAssert(z80.hl().value() == 0x08b6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb25() throws {
    loadRam(location: 0, data:[203,37])
    loadRam(location: 34236, data:[239])
    z80.af().ld(value: 0x1500)
    z80.bc().ld(value: 0x6bbc)
    z80.de().ld(value: 0x894e)
    z80.hl().ld(value: 0x85bc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x152d)
    XCTAssert(z80.bc().value() == 0x6bbc)
    XCTAssert(z80.de().value() == 0x894e)
    XCTAssert(z80.hl().value() == 0x8578)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb26() throws {
    loadRam(location: 0, data:[203,38])
    loadRam(location: 10298, data:[238])
    z80.af().ld(value: 0x0a00)
    z80.bc().ld(value: 0x372e)
    z80.de().ld(value: 0xe315)
    z80.hl().ld(value: 0x283a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0a89)
    XCTAssert(z80.bc().value() == 0x372e)
    XCTAssert(z80.de().value() == 0xe315)
    XCTAssert(z80.hl().value() == 0x283a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x283a) == 0xdc)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb27() throws {
    loadRam(location: 0, data:[203,39])
    loadRam(location: 24226, data:[189])
    z80.af().ld(value: 0xbf00)
    z80.bc().ld(value: 0xbdba)
    z80.de().ld(value: 0x67ab)
    z80.hl().ld(value: 0x5ea2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7e2d)
    XCTAssert(z80.bc().value() == 0xbdba)
    XCTAssert(z80.de().value() == 0x67ab)
    XCTAssert(z80.hl().value() == 0x5ea2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb28() throws {
    loadRam(location: 0, data:[203,40])
    loadRam(location: 539, data:[144])
    z80.af().ld(value: 0xc000)
    z80.bc().ld(value: 0x0435)
    z80.de().ld(value: 0x3e0f)
    z80.hl().ld(value: 0x021b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xc000)
    XCTAssert(z80.bc().value() == 0x0235)
    XCTAssert(z80.de().value() == 0x3e0f)
    XCTAssert(z80.hl().value() == 0x021b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb29() throws {
    loadRam(location: 0, data:[203,41])
    loadRam(location: 49926, data:[92])
    z80.af().ld(value: 0x0600)
    z80.bc().ld(value: 0xf142)
    z80.de().ld(value: 0x6ada)
    z80.hl().ld(value: 0xc306)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x0624)
    XCTAssert(z80.bc().value() == 0xf121)
    XCTAssert(z80.de().value() == 0x6ada)
    XCTAssert(z80.hl().value() == 0xc306)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2a() throws {
    loadRam(location: 0, data:[203,42])
    loadRam(location: 13427, data:[52])
    z80.af().ld(value: 0x3000)
    z80.bc().ld(value: 0xec3a)
    z80.de().ld(value: 0x7f7d)
    z80.hl().ld(value: 0x3473)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x302d)
    XCTAssert(z80.bc().value() == 0xec3a)
    XCTAssert(z80.de().value() == 0x3f7d)
    XCTAssert(z80.hl().value() == 0x3473)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2b() throws {
    loadRam(location: 0, data:[203,43])
    loadRam(location: 46986, data:[171])
    z80.af().ld(value: 0xe000)
    z80.bc().ld(value: 0xccf0)
    z80.de().ld(value: 0xbbda)
    z80.hl().ld(value: 0xb78a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe0ac)
    XCTAssert(z80.bc().value() == 0xccf0)
    XCTAssert(z80.de().value() == 0xbbed)
    XCTAssert(z80.hl().value() == 0xb78a)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2c() throws {
    loadRam(location: 0, data:[203,44])
    loadRam(location: 7803, data:[44])
    z80.af().ld(value: 0x5b00)
    z80.bc().ld(value: 0x25c0)
    z80.de().ld(value: 0x996d)
    z80.hl().ld(value: 0x1e7b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5b0c)
    XCTAssert(z80.bc().value() == 0x25c0)
    XCTAssert(z80.de().value() == 0x996d)
    XCTAssert(z80.hl().value() == 0x0f7b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2d() throws {
    loadRam(location: 0, data:[203,45])
    loadRam(location: 30954, data:[133])
    z80.af().ld(value: 0x5e00)
    z80.bc().ld(value: 0xc51b)
    z80.de().ld(value: 0x58e3)
    z80.hl().ld(value: 0x78ea)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x5ea4)
    XCTAssert(z80.bc().value() == 0xc51b)
    XCTAssert(z80.de().value() == 0x58e3)
    XCTAssert(z80.hl().value() == 0x78f5)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2e() throws {
    loadRam(location: 0, data:[203,46])
    loadRam(location: 9407, data:[181])
    z80.af().ld(value: 0x3900)
    z80.bc().ld(value: 0xa2cd)
    z80.de().ld(value: 0x0629)
    z80.hl().ld(value: 0x24bf)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3989)
    XCTAssert(z80.bc().value() == 0xa2cd)
    XCTAssert(z80.de().value() == 0x0629)
    XCTAssert(z80.hl().value() == 0x24bf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x24bf) == 0xda)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb2f() throws {
    loadRam(location: 0, data:[203,47])
    loadRam(location: 23653, data:[201])
    z80.af().ld(value: 0xaa00)
    z80.bc().ld(value: 0xa194)
    z80.de().ld(value: 0xd0e3)
    z80.hl().ld(value: 0x5c65)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd580)
    XCTAssert(z80.bc().value() == 0xa194)
    XCTAssert(z80.de().value() == 0xd0e3)
    XCTAssert(z80.hl().value() == 0x5c65)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb30() throws {
    loadRam(location: 0, data:[203,48])
    loadRam(location: 25963, data:[50])
    z80.af().ld(value: 0xcd00)
    z80.bc().ld(value: 0x7a81)
    z80.de().ld(value: 0xd67b)
    z80.hl().ld(value: 0x656b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xcda4)
    XCTAssert(z80.bc().value() == 0xf581)
    XCTAssert(z80.de().value() == 0xd67b)
    XCTAssert(z80.hl().value() == 0x656b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb31() throws {
    loadRam(location: 0, data:[203,49])
    loadRam(location: 30116, data:[12])
    z80.af().ld(value: 0x2800)
    z80.bc().ld(value: 0xe7fa)
    z80.de().ld(value: 0x6d8c)
    z80.hl().ld(value: 0x75a4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x28a5)
    XCTAssert(z80.bc().value() == 0xe7f5)
    XCTAssert(z80.de().value() == 0x6d8c)
    XCTAssert(z80.hl().value() == 0x75a4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb32() throws {
    loadRam(location: 0, data:[203,50])
    loadRam(location: 24150, data:[141])
    z80.af().ld(value: 0x1300)
    z80.bc().ld(value: 0x3f36)
    z80.de().ld(value: 0xf608)
    z80.hl().ld(value: 0x5e56)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x13ad)
    XCTAssert(z80.bc().value() == 0x3f36)
    XCTAssert(z80.de().value() == 0xed08)
    XCTAssert(z80.hl().value() == 0x5e56)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb33() throws {
    loadRam(location: 0, data:[203,51])
    loadRam(location: 911, data:[186])
    z80.af().ld(value: 0xd500)
    z80.bc().ld(value: 0x9720)
    z80.de().ld(value: 0x7644)
    z80.hl().ld(value: 0x038f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd588)
    XCTAssert(z80.bc().value() == 0x9720)
    XCTAssert(z80.de().value() == 0x7689)
    XCTAssert(z80.hl().value() == 0x038f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb34() throws {
    loadRam(location: 0, data:[203,52])
    loadRam(location: 64312, data:[7])
    z80.af().ld(value: 0x1200)
    z80.bc().ld(value: 0x77f6)
    z80.de().ld(value: 0x0206)
    z80.hl().ld(value: 0xfb38)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x12a1)
    XCTAssert(z80.bc().value() == 0x77f6)
    XCTAssert(z80.de().value() == 0x0206)
    XCTAssert(z80.hl().value() == 0xf738)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb35() throws {
    loadRam(location: 0, data:[203,53])
    loadRam(location: 30817, data:[114])
    z80.af().ld(value: 0x3c00)
    z80.bc().ld(value: 0xfd68)
    z80.de().ld(value: 0xea91)
    z80.hl().ld(value: 0x7861)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x3c84)
    XCTAssert(z80.bc().value() == 0xfd68)
    XCTAssert(z80.de().value() == 0xea91)
    XCTAssert(z80.hl().value() == 0x78c3)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb36() throws {
    loadRam(location: 0, data:[203,54])
    loadRam(location: 27960, data:[241])
    z80.af().ld(value: 0x8a00)
    z80.bc().ld(value: 0x1185)
    z80.de().ld(value: 0x1dde)
    z80.hl().ld(value: 0x6d38)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8aa1)
    XCTAssert(z80.bc().value() == 0x1185)
    XCTAssert(z80.de().value() == 0x1dde)
    XCTAssert(z80.hl().value() == 0x6d38)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x6d38) == 0xe3)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb37() throws {
    loadRam(location: 0, data:[203,55])
    loadRam(location: 28246, data:[248])
    z80.af().ld(value: 0x4300)
    z80.bc().ld(value: 0xd7bc)
    z80.de().ld(value: 0x9133)
    z80.hl().ld(value: 0x6e56)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x8784)
    XCTAssert(z80.bc().value() == 0xd7bc)
    XCTAssert(z80.de().value() == 0x9133)
    XCTAssert(z80.hl().value() == 0x6e56)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb38() throws {
    loadRam(location: 0, data:[203,56])
    loadRam(location: 20466, data:[170])
    z80.af().ld(value: 0xdf00)
    z80.bc().ld(value: 0x7c1b)
    z80.de().ld(value: 0x9f9f)
    z80.hl().ld(value: 0x4ff2)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xdf28)
    XCTAssert(z80.bc().value() == 0x3e1b)
    XCTAssert(z80.de().value() == 0x9f9f)
    XCTAssert(z80.hl().value() == 0x4ff2)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb39() throws {
    loadRam(location: 0, data:[203,57])
    loadRam(location: 15383, data:[97])
    z80.af().ld(value: 0x6600)
    z80.bc().ld(value: 0xb702)
    z80.de().ld(value: 0x14f5)
    z80.hl().ld(value: 0x3c17)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x6600)
    XCTAssert(z80.bc().value() == 0xb701)
    XCTAssert(z80.de().value() == 0x14f5)
    XCTAssert(z80.hl().value() == 0x3c17)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3a() throws {
    loadRam(location: 0, data:[203,58])
    loadRam(location: 61873, data:[110])
    z80.af().ld(value: 0xd100)
    z80.bc().ld(value: 0x5c5f)
    z80.de().ld(value: 0xe42e)
    z80.hl().ld(value: 0xf1b1)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xd124)
    XCTAssert(z80.bc().value() == 0x5c5f)
    XCTAssert(z80.de().value() == 0x722e)
    XCTAssert(z80.hl().value() == 0xf1b1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3b() throws {
    loadRam(location: 0, data:[203,59])
    loadRam(location: 29721, data:[17])
    z80.af().ld(value: 0xb200)
    z80.bc().ld(value: 0x38c8)
    z80.de().ld(value: 0xa560)
    z80.hl().ld(value: 0x7419)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb224)
    XCTAssert(z80.bc().value() == 0x38c8)
    XCTAssert(z80.de().value() == 0xa530)
    XCTAssert(z80.hl().value() == 0x7419)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3c() throws {
    loadRam(location: 0, data:[203,60])
    loadRam(location: 10968, data:[141])
    z80.af().ld(value: 0x7800)
    z80.bc().ld(value: 0xcfae)
    z80.de().ld(value: 0x66d8)
    z80.hl().ld(value: 0x2ad8)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7800)
    XCTAssert(z80.bc().value() == 0xcfae)
    XCTAssert(z80.de().value() == 0x66d8)
    XCTAssert(z80.hl().value() == 0x15d8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3d() throws {
    loadRam(location: 0, data:[203,61])
    loadRam(location: 18125, data:[249])
    z80.af().ld(value: 0xe600)
    z80.bc().ld(value: 0xdcda)
    z80.de().ld(value: 0x06aa)
    z80.hl().ld(value: 0x46cd)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xe625)
    XCTAssert(z80.bc().value() == 0xdcda)
    XCTAssert(z80.de().value() == 0x06aa)
    XCTAssert(z80.hl().value() == 0x4666)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3e() throws {
    loadRam(location: 0, data:[203,62])
    loadRam(location: 43372, data:[160])
    z80.af().ld(value: 0xa900)
    z80.bc().ld(value: 0x6a34)
    z80.de().ld(value: 0xe8d0)
    z80.hl().ld(value: 0xa96c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xa904)
    XCTAssert(z80.bc().value() == 0x6a34)
    XCTAssert(z80.de().value() == 0xe8d0)
    XCTAssert(z80.hl().value() == 0xa96c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa96c) == 0x50)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb3f() throws {
    loadRam(location: 0, data:[203,63])
    loadRam(location: 30704, data:[124])
    z80.af().ld(value: 0xf100)
    z80.bc().ld(value: 0xceea)
    z80.de().ld(value: 0x721e)
    z80.hl().ld(value: 0x77f0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x782d)
    XCTAssert(z80.bc().value() == 0xceea)
    XCTAssert(z80.de().value() == 0x721e)
    XCTAssert(z80.hl().value() == 0x77f0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb40() throws {
    loadRam(location: 0, data:[203,64])
    loadRam(location: 20575, data:[89])
    z80.af().ld(value: 0x9e00)
    z80.bc().ld(value: 0xbcb2)
    z80.de().ld(value: 0xefaa)
    z80.hl().ld(value: 0x505f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9e7c)
    XCTAssert(z80.bc().value() == 0xbcb2)
    XCTAssert(z80.de().value() == 0xefaa)
    XCTAssert(z80.hl().value() == 0x505f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb41() throws {
    loadRam(location: 0, data:[203,65])
    loadRam(location: 31721, data:[247])
    z80.af().ld(value: 0x9e00)
    z80.bc().ld(value: 0x1b43)
    z80.de().ld(value: 0x954e)
    z80.hl().ld(value: 0x7be9)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x9e10)
    XCTAssert(z80.bc().value() == 0x1b43)
    XCTAssert(z80.de().value() == 0x954e)
    XCTAssert(z80.hl().value() == 0x7be9)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb42() throws {
    loadRam(location: 0, data:[203,66])
    loadRam(location: 21791, data:[201])
    z80.af().ld(value: 0xf200)
    z80.bc().ld(value: 0xdd12)
    z80.de().ld(value: 0x7d4f)
    z80.hl().ld(value: 0x551f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xf238)
    XCTAssert(z80.bc().value() == 0xdd12)
    XCTAssert(z80.de().value() == 0x7d4f)
    XCTAssert(z80.hl().value() == 0x551f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb43() throws {
    loadRam(location: 0, data:[203,67])
    loadRam(location: 47796, data:[118])
    z80.af().ld(value: 0xad00)
    z80.bc().ld(value: 0xc3b3)
    z80.de().ld(value: 0xf1d0)
    z80.hl().ld(value: 0xbab4)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xad54)
    XCTAssert(z80.bc().value() == 0xc3b3)
    XCTAssert(z80.de().value() == 0xf1d0)
    XCTAssert(z80.hl().value() == 0xbab4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb44() throws {
    loadRam(location: 0, data:[203,68])
    loadRam(location: 23442, data:[120])
    z80.af().ld(value: 0xb700)
    z80.bc().ld(value: 0xc829)
    z80.de().ld(value: 0x27e3)
    z80.hl().ld(value: 0x5b92)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0xb718)
    XCTAssert(z80.bc().value() == 0xc829)
    XCTAssert(z80.de().value() == 0x27e3)
    XCTAssert(z80.hl().value() == 0x5b92)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb45() throws {
    loadRam(location: 0, data:[203,69])
    loadRam(location: 16539, data:[100])
    z80.af().ld(value: 0x7700)
    z80.bc().ld(value: 0x68ee)
    z80.de().ld(value: 0x0c77)
    z80.hl().ld(value: 0x409b)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7718)
    XCTAssert(z80.bc().value() == 0x68ee)
    XCTAssert(z80.de().value() == 0x0c77)
    XCTAssert(z80.hl().value() == 0x409b)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb46() throws {
    loadRam(location: 0, data:[203,70])
    loadRam(location: 24881, data:[213])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7210)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb46_1() throws {
    loadRam(location: 0, data:[203,70])
    loadRam(location: 24881, data:[213])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7210)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func testcb46_2() throws {
    loadRam(location: 0x0000, data:[0xcb,0x46])
    loadRam(location: 0x6131, data:[0xd5])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0xff00
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7238)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb46_3() throws {
    loadRam(location: 0x0000, data:[0xcb,0x46])
    loadRam(location: 0x6131, data:[0xd5])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0xffff
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7238)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb46_4() throws {
    loadRam(location: 0x0000, data:[0xcb,0x46])
    loadRam(location: 0x6131, data:[0xd5])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0800
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7218)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb46_5() throws {
    loadRam(location: 0x0000, data:[0xcb,0x46])
    loadRam(location: 0x6131, data:[0xd5])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x7ae3)
    z80.de().ld(value: 0xa11e)
    z80.hl().ld(value: 0x6131)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x2000
    z80.opCode(byte: 0xcb)
    XCTAssert(z80.af().value() == 0x7230)
    XCTAssert(z80.bc().value() == 0x7ae3)
    XCTAssert(z80.de().value() == 0xa11e)
    XCTAssert(z80.hl().value() == 0x6131)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb47_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x47])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb47() throws {
    loadRam(location: 0x0000, data:[0xcb,0x47])
    loadRam(location: 0x8a8c, data:[0x0e])
    z80.af().ld(value: 0x1000)
    z80.bc().ld(value: 0xd8ca)
    z80.de().ld(value: 0xe2c4)
    z80.hl().ld(value: 0x8a8c)
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
    XCTAssert(z80.af().value() == 0x1054)
    XCTAssert(z80.bc().value() == 0xd8ca)
    XCTAssert(z80.de().value() == 0xe2c4)
    XCTAssert(z80.hl().value() == 0x8a8c)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb48() throws {
    loadRam(location: 0x0000, data:[0xcb,0x48])
    loadRam(location: 0x6de0, data:[0x8c])
    z80.af().ld(value: 0xa900)
    z80.bc().ld(value: 0x6264)
    z80.de().ld(value: 0xe833)
    z80.hl().ld(value: 0x6de0)
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
    XCTAssert(z80.af().value() == 0xa930)
    XCTAssert(z80.bc().value() == 0x6264)
    XCTAssert(z80.de().value() == 0xe833)
    XCTAssert(z80.hl().value() == 0x6de0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb49() throws {
    loadRam(location: 0x0000, data:[0xcb,0x49])
    loadRam(location: 0xa040, data:[0x5f])
    z80.af().ld(value: 0x6c00)
    z80.bc().ld(value: 0xd0f7)
    z80.de().ld(value: 0x1db7)
    z80.hl().ld(value: 0xa040)
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
    XCTAssert(z80.af().value() == 0x6c30)
    XCTAssert(z80.bc().value() == 0xd0f7)
    XCTAssert(z80.de().value() == 0x1db7)
    XCTAssert(z80.hl().value() == 0xa040)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4a])
    loadRam(location: 0x77a4, data:[0x96])
    z80.af().ld(value: 0x4f00)
    z80.bc().ld(value: 0xf04c)
    z80.de().ld(value: 0x5b29)
    z80.hl().ld(value: 0x77a4)
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
    XCTAssert(z80.af().value() == 0x4f18)
    XCTAssert(z80.bc().value() == 0xf04c)
    XCTAssert(z80.de().value() == 0x5b29)
    XCTAssert(z80.hl().value() == 0x77a4)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4b])
    loadRam(location: 0x40ca, data:[0x8a])
    z80.af().ld(value: 0x5500)
    z80.bc().ld(value: 0x9848)
    z80.de().ld(value: 0x095f)
    z80.hl().ld(value: 0x40ca)
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
    XCTAssert(z80.af().value() == 0x5518)
    XCTAssert(z80.bc().value() == 0x9848)
    XCTAssert(z80.de().value() == 0x095f)
    XCTAssert(z80.hl().value() == 0x40ca)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4c])
    loadRam(location: 0x6d5d, data:[0xe7])
    z80.af().ld(value: 0x8800)
    z80.bc().ld(value: 0x0521)
    z80.de().ld(value: 0xbf31)
    z80.hl().ld(value: 0x6d5d)
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
    XCTAssert(z80.af().value() == 0x887c)
    XCTAssert(z80.bc().value() == 0x521)
    XCTAssert(z80.de().value() == 0xbf31)
    XCTAssert(z80.hl().value() == 0x6d5d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4d])
    loadRam(location: 0x158d, data:[0xe0])
    z80.af().ld(value: 0xf900)
    z80.bc().ld(value: 0x27d0)
    z80.de().ld(value: 0x0f7e)
    z80.hl().ld(value: 0x158d)
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
    XCTAssert(z80.af().value() == 0xf95c)
    XCTAssert(z80.bc().value() == 0x27d0)
    XCTAssert(z80.de().value() == 0x0f7e)
    XCTAssert(z80.hl().value() == 0x158d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4e])
    loadRam(location: 0xada3, data:[0x5b])
    z80.af().ld(value: 0x2600)
    z80.bc().ld(value: 0x9207)
    z80.de().ld(value: 0x459a)
    z80.hl().ld(value: 0xada3)
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
    XCTAssert(z80.af().value() == 0x2610)
    XCTAssert(z80.bc().value() == 0x9207)
    XCTAssert(z80.de().value() == 0x459a)
    XCTAssert(z80.hl().value() == 0xada3)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4f_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4f])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb4f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x4f])
    loadRam(location: 0x0bcc, data:[0xa3])
    z80.af().ld(value: 0x1700)
    z80.bc().ld(value: 0x2dc1)
    z80.de().ld(value: 0xaca2)
    z80.hl().ld(value: 0x0bcc)
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
    XCTAssert(z80.af().value() == 0x1710)
    XCTAssert(z80.bc().value() == 0x2dc1)
    XCTAssert(z80.de().value() == 0xaca2)
    XCTAssert(z80.hl().value() == 0x0bcc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb50() throws {
    loadRam(location: 0x0000, data:[0xcb,0x50])
    loadRam(location: 0x84d2, data:[0x6a])
    z80.af().ld(value: 0x2300)
    z80.bc().ld(value: 0x2749)
    z80.de().ld(value: 0x1012)
    z80.hl().ld(value: 0x84d2)
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
    XCTAssert(z80.af().value() == 0x2330)
    XCTAssert(z80.bc().value() == 0x2749)
    XCTAssert(z80.de().value() == 0x1012)
    XCTAssert(z80.hl().value() == 0x84d2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb51() throws {
    loadRam(location: 0x0000, data:[0xcb,0x51])
    loadRam(location: 0xaafc, data:[0xa6])
    z80.af().ld(value: 0x2200)
    z80.bc().ld(value: 0xb7db)
    z80.de().ld(value: 0xe19d)
    z80.hl().ld(value: 0xaafc)
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
    XCTAssert(z80.af().value() == 0x225c)
    XCTAssert(z80.bc().value() == 0xb7db)
    XCTAssert(z80.de().value() == 0xe19d)
    XCTAssert(z80.hl().value() == 0xaafc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb52() throws {
    loadRam(location: 0x0000, data:[0xcb,0x52])
    loadRam(location: 0xac44, data:[0x00])
    z80.af().ld(value: 0x8b00)
    z80.bc().ld(value: 0xff7a)
    z80.de().ld(value: 0xb0ff)
    z80.hl().ld(value: 0xac44)
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
    XCTAssert(z80.af().value() == 0x8b74)
    XCTAssert(z80.bc().value() == 0xff7a)
    XCTAssert(z80.de().value() == 0xb0ff)
    XCTAssert(z80.hl().value() == 0xac44)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb53() throws {
    loadRam(location: 0x0000, data:[0xcb,0x53])
    loadRam(location: 0x7c75, data:[0xab])
    z80.af().ld(value: 0x6000)
    z80.bc().ld(value: 0x31a1)
    z80.de().ld(value: 0xa4f4)
    z80.hl().ld(value: 0x7c75)
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
    XCTAssert(z80.af().value() == 0x6030)
    XCTAssert(z80.bc().value() == 0x31a1)
    XCTAssert(z80.de().value() == 0xa4f4)
    XCTAssert(z80.hl().value() == 0x7c75)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb54() throws {
    loadRam(location: 0x0000, data:[0xcb,0x54])
    loadRam(location: 0x1999, data:[0x98])
    z80.af().ld(value: 0x3800)
    z80.bc().ld(value: 0x7ccc)
    z80.de().ld(value: 0x89cc)
    z80.hl().ld(value: 0x1999)
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
    XCTAssert(z80.af().value() == 0x385c)
    XCTAssert(z80.bc().value() == 0x7ccc)
    XCTAssert(z80.de().value() == 0x89cc)
    XCTAssert(z80.hl().value() == 0x1999)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb55() throws {
    loadRam(location: 0x0000, data:[0xcb,0x55])
    loadRam(location: 0xfb4b, data:[0x0b])
    z80.af().ld(value: 0xf900)
    z80.bc().ld(value: 0x1f79)
    z80.de().ld(value: 0x19cd)
    z80.hl().ld(value: 0xfb4b)
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
    XCTAssert(z80.af().value() == 0xf95c)
    XCTAssert(z80.bc().value() == 0x1f79)
    XCTAssert(z80.de().value() == 0x19cd)
    XCTAssert(z80.hl().value() == 0xfb4b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb56() throws {
    loadRam(location: 0x0000, data:[0xcb,0x56])
    loadRam(location: 0xbbf9, data:[0x10])
    z80.af().ld(value: 0x1500)
    z80.bc().ld(value: 0x2bfe)
    z80.de().ld(value: 0xe3b5)
    z80.hl().ld(value: 0xbbf9)
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
    XCTAssert(z80.af().value() == 0x1554)
    XCTAssert(z80.bc().value() == 0x2bfe)
    XCTAssert(z80.de().value() == 0xe3b5)
    XCTAssert(z80.hl().value() == 0xbbf9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb57_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x57])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb57() throws {
    loadRam(location: 0x0000, data:[0xcb,0x57])
    loadRam(location: 0xda50, data:[0x30])
    z80.af().ld(value: 0x6600)
    z80.bc().ld(value: 0xaf32)
    z80.de().ld(value: 0x532a)
    z80.hl().ld(value: 0xda50)
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
    XCTAssert(z80.af().value() == 0x6630)
    XCTAssert(z80.bc().value() == 0xaf32)
    XCTAssert(z80.de().value() == 0x532a)
    XCTAssert(z80.hl().value() == 0xda50)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb58() throws {
    loadRam(location: 0x0000, data:[0xcb,0x58])
    loadRam(location: 0x1479, data:[0xa0])
    z80.af().ld(value: 0x5000)
    z80.bc().ld(value: 0x1aee)
    z80.de().ld(value: 0x2e47)
    z80.hl().ld(value: 0x1479)
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
    XCTAssert(z80.af().value() == 0x5018)
    XCTAssert(z80.bc().value() == 0x1aee)
    XCTAssert(z80.de().value() == 0x2e47)
    XCTAssert(z80.hl().value() == 0x1479)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb59() throws {
    loadRam(location: 0x0000, data:[0xcb,0x59])
    loadRam(location: 0x2075, data:[0xc1])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x5e68)
    z80.de().ld(value: 0xff28)
    z80.hl().ld(value: 0x2075)
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
    XCTAssert(z80.af().value() == 0x7238)
    XCTAssert(z80.bc().value() == 0x5e68)
    XCTAssert(z80.de().value() == 0xff28)
    XCTAssert(z80.hl().value() == 0x2075)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5a])
    loadRam(location: 0xd99b, data:[0xe8])
    z80.af().ld(value: 0xeb00)
    z80.bc().ld(value: 0xfea7)
    z80.de().ld(value: 0x17d1)
    z80.hl().ld(value: 0xd99b)
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
    XCTAssert(z80.af().value() == 0xeb54)
    XCTAssert(z80.bc().value() == 0xfea7)
    XCTAssert(z80.de().value() == 0x17d1)
    XCTAssert(z80.hl().value() == 0xd99b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5b])
    loadRam(location: 0x1691, data:[0xc7])
    z80.af().ld(value: 0x6b00)
    z80.bc().ld(value: 0x6f2c)
    z80.de().ld(value: 0x3fe3)
    z80.hl().ld(value: 0x1691)
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
    XCTAssert(z80.af().value() == 0x6b74)
    XCTAssert(z80.bc().value() == 0x6f2c)
    XCTAssert(z80.de().value() == 0x3fe3)
    XCTAssert(z80.hl().value() == 0x1691)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5c])
    loadRam(location: 0x13e9, data:[0xae])
    z80.af().ld(value: 0x3300)
    z80.bc().ld(value: 0xa7e7)
    z80.de().ld(value: 0x2077)
    z80.hl().ld(value: 0x13e9)
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
    XCTAssert(z80.af().value() == 0x3354)
    XCTAssert(z80.bc().value() == 0xa7e7)
    XCTAssert(z80.de().value() == 0x2077)
    XCTAssert(z80.hl().value() == 0x13e9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5d])
    loadRam(location: 0xee49, data:[0xa6])
    z80.af().ld(value: 0xc100)
    z80.bc().ld(value: 0xafcc)
    z80.de().ld(value: 0xc8b1)
    z80.hl().ld(value: 0xee49)
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
    XCTAssert(z80.af().value() == 0xc118)
    XCTAssert(z80.bc().value() == 0xafcc)
    XCTAssert(z80.de().value() == 0xc8b1)
    XCTAssert(z80.hl().value() == 0xee49)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5e])
    loadRam(location: 0x349a, data:[0x3c])
    z80.af().ld(value: 0x3000)
    z80.bc().ld(value: 0xad43)
    z80.de().ld(value: 0x16c1)
    z80.hl().ld(value: 0x349a)
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
    XCTAssert(z80.af().value() == 0x3010)
    XCTAssert(z80.bc().value() == 0xad43)
    XCTAssert(z80.de().value() == 0x16c1)
    XCTAssert(z80.hl().value() == 0x349a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5f_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5f])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb5f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x5f])
    loadRam(location: 0x6133, data:[0x90])
    z80.af().ld(value: 0x8c00)
    z80.bc().ld(value: 0x1b67)
    z80.de().ld(value: 0x2314)
    z80.hl().ld(value: 0x6133)
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
    XCTAssert(z80.af().value() == 0x8c18)
    XCTAssert(z80.bc().value() == 0x1b67)
    XCTAssert(z80.de().value() == 0x2314)
    XCTAssert(z80.hl().value() == 0x6133)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb60() throws {
    loadRam(location: 0x0000, data:[0xcb,0x60])
    loadRam(location: 0x5273, data:[0x0a])
    z80.af().ld(value: 0x9900)
    z80.bc().ld(value: 0x34b5)
    z80.de().ld(value: 0x0fd8)
    z80.hl().ld(value: 0x5273)
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
    XCTAssert(z80.af().value() == 0x9930)
    XCTAssert(z80.bc().value() == 0x34b5)
    XCTAssert(z80.de().value() == 0x0fd8)
    XCTAssert(z80.hl().value() == 0x5273)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb61() throws {
    loadRam(location: 0x0000, data:[0xcb,0x61])
    loadRam(location: 0x7c44, data:[0x77])
    z80.af().ld(value: 0xd100)
    z80.bc().ld(value: 0x219f)
    z80.de().ld(value: 0x3bb4)
    z80.hl().ld(value: 0x7c44)
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
    XCTAssert(z80.af().value() == 0xd118)
    XCTAssert(z80.bc().value() == 0x219f)
    XCTAssert(z80.de().value() == 0x3bb4)
    XCTAssert(z80.hl().value() == 0x7c44)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb62() throws {
    loadRam(location: 0x0000, data:[0xcb,0x62])
    loadRam(location: 0x8cc5, data:[0xaf])
    z80.af().ld(value: 0xaf00)
    z80.bc().ld(value: 0xbdf8)
    z80.de().ld(value: 0xc536)
    z80.hl().ld(value: 0x8cc5)
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
    XCTAssert(z80.af().value() == 0xaf54)
    XCTAssert(z80.bc().value() == 0xbdf8)
    XCTAssert(z80.de().value() == 0xc536)
    XCTAssert(z80.hl().value() == 0x8cc5)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb63() throws {
    loadRam(location: 0x0000, data:[0xcb,0x63])
    loadRam(location: 0x84ca, data:[0xe6])
    z80.af().ld(value: 0x2a00)
    z80.bc().ld(value: 0x5e16)
    z80.de().ld(value: 0xf627)
    z80.hl().ld(value: 0x84ca)
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
    XCTAssert(z80.af().value() == 0x2a74)
    XCTAssert(z80.bc().value() == 0x5e16)
    XCTAssert(z80.de().value() == 0xf627)
    XCTAssert(z80.hl().value() == 0x84ca)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb64() throws {
    loadRam(location: 0x0000, data:[0xcb,0x64])
    loadRam(location: 0xea94, data:[0x0c])
    z80.af().ld(value: 0xa900)
    z80.bc().ld(value: 0xa365)
    z80.de().ld(value: 0xc00b)
    z80.hl().ld(value: 0xea94)
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
    XCTAssert(z80.af().value() == 0xa97c)
    XCTAssert(z80.bc().value() == 0xa365)
    XCTAssert(z80.de().value() == 0xc00b)
    XCTAssert(z80.hl().value() == 0xea94)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb65() throws {
    loadRam(location: 0x0000, data:[0xcb,0x65])
    loadRam(location: 0x427a, data:[0xee])
    z80.af().ld(value: 0x1800)
    z80.bc().ld(value: 0x8d58)
    z80.de().ld(value: 0x4256)
    z80.hl().ld(value: 0x427a)
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
    XCTAssert(z80.af().value() == 0x1838)
    XCTAssert(z80.bc().value() == 0x8d58)
    XCTAssert(z80.de().value() == 0x4256)
    XCTAssert(z80.hl().value() == 0x427a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb66() throws {
    loadRam(location: 0x0000, data:[0xcb,0x66])
    loadRam(location: 0xa44f, data:[0xd2])
    z80.af().ld(value: 0x4c00)
    z80.bc().ld(value: 0x3ef7)
    z80.de().ld(value: 0xe544)
    z80.hl().ld(value: 0xa44f)
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
    XCTAssert(z80.af().value() == 0x4c10)
    XCTAssert(z80.bc().value() == 0x3ef7)
    XCTAssert(z80.de().value() == 0xe544)
    XCTAssert(z80.hl().value() == 0xa44f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb67_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x67])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb67() throws {
    loadRam(location: 0x0000, data:[0xcb,0x67])
    loadRam(location: 0x394d, data:[0x10])
    z80.af().ld(value: 0x8600)
    z80.bc().ld(value: 0x5e92)
    z80.de().ld(value: 0x2986)
    z80.hl().ld(value: 0x394d)
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
    XCTAssert(z80.af().value() == 0x8654)
    XCTAssert(z80.bc().value() == 0x5e92)
    XCTAssert(z80.de().value() == 0x2986)
    XCTAssert(z80.hl().value() == 0x394d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb68() throws {
    loadRam(location: 0x0000, data:[0xcb,0x68])
    loadRam(location: 0xddd2, data:[0x16])
    z80.af().ld(value: 0xd700)
    z80.bc().ld(value: 0x0f6a)
    z80.de().ld(value: 0x18a6)
    z80.hl().ld(value: 0xddd2)
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
    XCTAssert(z80.af().value() == 0xd75c)
    XCTAssert(z80.bc().value() == 0x0f6a)
    XCTAssert(z80.de().value() == 0x18a6)
    XCTAssert(z80.hl().value() == 0xddd2)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb69() throws {
    loadRam(location: 0x0000, data:[0xcb,0x69])
    loadRam(location: 0x1dba, data:[0x8a])
    z80.af().ld(value: 0xda00)
    z80.bc().ld(value: 0x691b)
    z80.de().ld(value: 0x7c79)
    z80.hl().ld(value: 0x1dba)
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
    XCTAssert(z80.af().value() == 0xda5c)
    XCTAssert(z80.bc().value() == 0x691b)
    XCTAssert(z80.de().value() == 0x7c79)
    XCTAssert(z80.hl().value() == 0x1dba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6a])
    loadRam(location: 0x4e09, data:[0xd5])
    z80.af().ld(value: 0x2200)
    z80.bc().ld(value: 0x13e8)
    z80.de().ld(value: 0x86d4)
    z80.hl().ld(value: 0x4e09)
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
    XCTAssert(z80.af().value() == 0x2254)
    XCTAssert(z80.bc().value() == 0x13e8)
    XCTAssert(z80.de().value() == 0x86d4)
    XCTAssert(z80.hl().value() == 0x4e09)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6b])
    loadRam(location: 0x1ca9, data:[0x86])
    z80.af().ld(value: 0xaf00)
    z80.bc().ld(value: 0x5123)
    z80.de().ld(value: 0x7635)
    z80.hl().ld(value: 0x1ca9)
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
    XCTAssert(z80.af().value() == 0xaf30)
    XCTAssert(z80.bc().value() == 0x5123)
    XCTAssert(z80.de().value() == 0x7635)
    XCTAssert(z80.hl().value() == 0x1ca9)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6c])
    loadRam(location: 0x5605, data:[0x2b])
    z80.af().ld(value: 0x4300)
    z80.bc().ld(value: 0xfaa6)
    z80.de().ld(value: 0xabc2)
    z80.hl().ld(value: 0x5605)
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
    XCTAssert(z80.af().value() == 0x4354)
    XCTAssert(z80.bc().value() == 0xfaa6)
    XCTAssert(z80.de().value() == 0xabc2)
    XCTAssert(z80.hl().value() == 0x5605)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6d])
    loadRam(location: 0xd9ad, data:[0x4e])
    z80.af().ld(value: 0x7f00)
    z80.bc().ld(value: 0xf099)
    z80.de().ld(value: 0xd435)
    z80.hl().ld(value: 0xd9ad)
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
    XCTAssert(z80.af().value() == 0x7f38)
    XCTAssert(z80.bc().value() == 0xf099)
    XCTAssert(z80.de().value() == 0xd435)
    XCTAssert(z80.hl().value() == 0xd9ad)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6e])
    loadRam(location: 0xd8ba, data:[0x31])
    z80.af().ld(value: 0x4a00)
    z80.bc().ld(value: 0x08c9)
    z80.de().ld(value: 0x8177)
    z80.hl().ld(value: 0xd8ba)
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
    XCTAssert(z80.af().value() == 0x4a10)
    XCTAssert(z80.bc().value() == 0x08c9)
    XCTAssert(z80.de().value() == 0x8177)
    XCTAssert(z80.hl().value() == 0xd8ba)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6f_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6f])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb6f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x6f])
    loadRam(location: 0x4d34, data:[0x78])
    z80.af().ld(value: 0xa100)
    z80.bc().ld(value: 0x8c80)
    z80.de().ld(value: 0x4678)
    z80.hl().ld(value: 0x4d34)
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
    XCTAssert(z80.af().value() == 0xa130)
    XCTAssert(z80.bc().value() == 0x8c80)
    XCTAssert(z80.de().value() == 0x4678)
    XCTAssert(z80.hl().value() == 0x4d34)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb70() throws {
    loadRam(location: 0x0000, data:[0xcb,0x70])
    loadRam(location: 0xf913, data:[0xcf])
    z80.af().ld(value: 0x1900)
    z80.bc().ld(value: 0x958a)
    z80.de().ld(value: 0x5dab)
    z80.hl().ld(value: 0xf913)
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
    XCTAssert(z80.af().value() == 0x1954)
    XCTAssert(z80.bc().value() == 0x958a)
    XCTAssert(z80.de().value() == 0x5dab)
    XCTAssert(z80.hl().value() == 0xf913)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb71() throws {
    loadRam(location: 0x0000, data:[0xcb,0x71])
    loadRam(location: 0x42fe, data:[0x24])
    z80.af().ld(value: 0x3d00)
    z80.bc().ld(value: 0x095e)
    z80.de().ld(value: 0xd6df)
    z80.hl().ld(value: 0x42fe)
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
    XCTAssert(z80.af().value() == 0x3d18)
    XCTAssert(z80.bc().value() == 0x095e)
    XCTAssert(z80.de().value() == 0xd6df)
    XCTAssert(z80.hl().value() == 0x42fe)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb72() throws {
    loadRam(location: 0x0000, data:[0xcb,0x72])
    loadRam(location: 0xad11, data:[0x3b])
    z80.af().ld(value: 0xa500)
    z80.bc().ld(value: 0xc0bf)
    z80.de().ld(value: 0x4c8d)
    z80.hl().ld(value: 0xad11)
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
    XCTAssert(z80.af().value() == 0xa518)
    XCTAssert(z80.bc().value() == 0xc0bf)
    XCTAssert(z80.de().value() == 0x4c8d)
    XCTAssert(z80.hl().value() == 0xad11)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb73() throws {
    loadRam(location: 0x0000, data:[0xcb,0x73])
    loadRam(location: 0x2ecc, data:[0xe0])
    z80.af().ld(value: 0xf200)
    z80.bc().ld(value: 0x49a6)
    z80.de().ld(value: 0xb279)
    z80.hl().ld(value: 0x2ecc)
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
    XCTAssert(z80.af().value() == 0xf238)
    XCTAssert(z80.bc().value() == 0x49a6)
    XCTAssert(z80.de().value() == 0xb279)
    XCTAssert(z80.hl().value() == 0x2ecc)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb74() throws {
    loadRam(location: 0x0000, data:[0xcb,0x74])
    loadRam(location: 0x983d, data:[0xfa])
    z80.af().ld(value: 0x0500)
    z80.bc().ld(value: 0x445e)
    z80.de().ld(value: 0x05e9)
    z80.hl().ld(value: 0x983d)
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
    XCTAssert(z80.af().value() == 0x055c)
    XCTAssert(z80.bc().value() == 0x445e)
    XCTAssert(z80.de().value() == 0x05e9)
    XCTAssert(z80.hl().value() == 0x983d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb75() throws {
    loadRam(location: 0x0000, data:[0xcb,0x75])
    loadRam(location: 0xd18d, data:[0x11])
    z80.af().ld(value: 0x6b00)
    z80.bc().ld(value: 0x83c6)
    z80.de().ld(value: 0x635a)
    z80.hl().ld(value: 0xd18d)
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
    XCTAssert(z80.af().value() == 0x6b5c)
    XCTAssert(z80.bc().value() == 0x83c6)
    XCTAssert(z80.de().value() == 0x635a)
    XCTAssert(z80.hl().value() == 0xd18d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb76() throws {
    loadRam(location: 0x0000, data:[0xcb,0x76])
    loadRam(location: 0xbc71, data:[0x18])
    z80.af().ld(value: 0xf800)
    z80.bc().ld(value: 0x3057)
    z80.de().ld(value: 0x3629)
    z80.hl().ld(value: 0xbc71)
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
    XCTAssert(z80.af().value() == 0xf854)
    XCTAssert(z80.bc().value() == 0x3057)
    XCTAssert(z80.de().value() == 0x3629)
    XCTAssert(z80.hl().value() == 0xbc71)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb77_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x77])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xff38)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb77() throws {
    loadRam(location: 0x0000, data:[0xcb,0x77])
    loadRam(location: 0x736d, data:[0x36])
    z80.af().ld(value: 0x9200)
    z80.bc().ld(value: 0xd6f8)
    z80.de().ld(value: 0x5100)
    z80.hl().ld(value: 0x736d)
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
    XCTAssert(z80.af().value() == 0x9254)
    XCTAssert(z80.bc().value() == 0xd6f8)
    XCTAssert(z80.de().value() == 0x5100)
    XCTAssert(z80.hl().value() == 0x736d)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb78() throws {
    loadRam(location: 0x0000, data:[0xcb,0x78])
    loadRam(location: 0xc76a, data:[0x1f])
    z80.af().ld(value: 0x7200)
    z80.bc().ld(value: 0x1cf8)
    z80.de().ld(value: 0x8d2b)
    z80.hl().ld(value: 0xc76a)
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
    XCTAssert(z80.af().value() == 0x725c)
    XCTAssert(z80.bc().value() == 0x1cf8)
    XCTAssert(z80.de().value() == 0x8d2b)
    XCTAssert(z80.hl().value() == 0xc76a)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb79() throws {
    loadRam(location: 0x0000, data:[0xcb,0x79])
    loadRam(location: 0x39e8, data:[0x98])
    z80.af().ld(value: 0xa800)
    z80.bc().ld(value: 0x809e)
    z80.de().ld(value: 0x1124)
    z80.hl().ld(value: 0x39e8)
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
    XCTAssert(z80.af().value() == 0xa898)
    XCTAssert(z80.bc().value() == 0x809e)
    XCTAssert(z80.de().value() == 0x1124)
    XCTAssert(z80.hl().value() == 0x39e8)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7a() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7a])
    loadRam(location: 0xd9af, data:[0xed])
    z80.af().ld(value: 0x5800)
    z80.bc().ld(value: 0x7d24)
    z80.de().ld(value: 0x63e1)
    z80.hl().ld(value: 0xd9af)
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
    XCTAssert(z80.af().value() == 0x5874)
    XCTAssert(z80.bc().value() == 0x7d24)
    XCTAssert(z80.de().value() == 0x63e1)
    XCTAssert(z80.hl().value() == 0xd9af)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7b() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7b])
    loadRam(location: 0x6bd0, data:[0xa5])
    z80.af().ld(value: 0x0300)
    z80.bc().ld(value: 0x50ab)
    z80.de().ld(value: 0x05bd)
    z80.hl().ld(value: 0x6bd0)
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
    XCTAssert(z80.af().value() == 0x03b8)
    XCTAssert(z80.bc().value() == 0x50ab)
    XCTAssert(z80.de().value() == 0x05bd)
    XCTAssert(z80.hl().value() == 0x6bd0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7c() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7c])
    loadRam(location: 0x063b, data:[0x34])
    z80.af().ld(value: 0xad00)
    z80.bc().ld(value: 0xf77b)
    z80.de().ld(value: 0x55ae)
    z80.hl().ld(value: 0x063b)
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
    XCTAssert(z80.af().value() == 0xad54)
    XCTAssert(z80.bc().value() == 0xf77b)
    XCTAssert(z80.de().value() == 0x55ae)
    XCTAssert(z80.hl().value() == 0x063b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7d() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7d])
    loadRam(location: 0x5f9b, data:[0x97])
    z80.af().ld(value: 0x8200)
    z80.bc().ld(value: 0xb792)
    z80.de().ld(value: 0x38cb)
    z80.hl().ld(value: 0x5f9b)
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
    XCTAssert(z80.af().value() == 0x8298)
    XCTAssert(z80.bc().value() == 0xb792)
    XCTAssert(z80.de().value() == 0x38cb)
    XCTAssert(z80.hl().value() == 0x5f9b)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7e() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7e])
    loadRam(location: 0xa25e, data:[0xd7])
    z80.af().ld(value: 0x4200)
    z80.bc().ld(value: 0x3b91)
    z80.de().ld(value: 0xf59c)
    z80.hl().ld(value: 0xa25e)
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
    XCTAssert(z80.af().value() == 0x4290)
    XCTAssert(z80.bc().value() == 0x3b91)
    XCTAssert(z80.de().value() == 0xf59c)
    XCTAssert(z80.hl().value() == 0xa25e)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7f_1() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7f])
    z80.af().ld(value: 0xff00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
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
    XCTAssert(z80.af().value() == 0xffb8)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0)
    }

    func testcb7f() throws {
    loadRam(location: 0x0000, data:[0xcb,0x7f])
    loadRam(location: 0x185b, data:[0xf1])
    z80.af().ld(value: 0x6a00)
    z80.bc().ld(value: 0x84ec)
    z80.de().ld(value: 0xcf4e)
    z80.hl().ld(value: 0x185b)
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
    XCTAssert(z80.af().value() == 0x6a7c)
    XCTAssert(z80.bc().value() == 0x84ec)
    XCTAssert(z80.de().value() == 0xcf4e)
    XCTAssert(z80.hl().value() == 0x185b)
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
