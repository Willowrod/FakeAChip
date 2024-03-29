//
//  allTests.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 02/01/2021.
//

import XCTest

class allTestsTo7f: BaseTest {

  
 
    func test00() throws {
    z80.af().ld(value: 0)
    z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0)
    XCTAssert(z80.af().value() == 0)
    XCTAssert(z80.bc().value() == 0)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test01() throws {
        loadRam(location: 0, data:[0x01,0x12, 0x34])
        z80.af().ld(value: 0)
        z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1)
    XCTAssert(z80.af().value() == 0)
    XCTAssert(z80.bc().value() == 13330)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test02() throws {
        z80.af().ld(value: 0x5600)
        z80.bc().ld(value: 1)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2)
    XCTAssert(z80.af().value() == 22016)
    XCTAssert(z80.bc().value() == 1)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test02_1() throws {
    loadRam(location: 0, data:[2])
    z80.af().ld(value: 4864)
    z80.bc().ld(value: 27493)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x02)
    XCTAssert(z80.af().value() == 4864)
    XCTAssert(z80.bc().value() == 27493)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test03() throws {
    z80.af().ld(value: 0)
    z80.bc().ld(value: 0x789a)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3)
    XCTAssert(z80.af().value() == 0)
    XCTAssert(z80.bc().value() == 30875)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test04() throws {
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0xff00)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4)
    XCTAssert(z80.af().value() == 80)
    XCTAssert(z80.bc().value() == 0)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test05() throws {
    z80.af().ld(value: 0)
    z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5)
    XCTAssert(z80.af().value() == 186)
    XCTAssert(z80.bc().value() == 65280)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test06() throws {
        loadRam(location: 0, data:[0x06, 0xbc])
    z80.af().ld(value: 0)
    z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6)
    XCTAssert(z80.af().value() == 0)
    XCTAssert(z80.bc().value() == 48128)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test07() throws {
    z80.af().ld(value: 0x8800)
    z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7)
    XCTAssert(z80.af().value() == 4353)
    XCTAssert(z80.bc().value() == 0)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test08() throws {
    z80.af().ld(value: 0xdef0)
    z80.bc().ld(value: 0)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0)
    z80.AF2 = 0x1234
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8)
    XCTAssert(z80.af().value() == 4660)
    XCTAssert(z80.bc().value() == 0)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 0)
    XCTAssert(z80.af2().value() == 57072)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test09() throws {
    z80.af().ld(value: 0)
    z80.bc().ld(value: 0x5678)
    z80.de().ld(value: 0)
    z80.hl().ld(value: 0x9abc)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0)
    z80.iy().ld(value: 0)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x09)
    XCTAssert(z80.af().value() == 48)
    XCTAssert(z80.bc().value() == 22136)
    XCTAssert(z80.de().value() == 0)
    XCTAssert(z80.hl().value() == 61748)
    XCTAssert(z80.af2().value() == 0)
    XCTAssert(z80.bc2().value() == 0)
    XCTAssert(z80.de2().value() == 0)
    XCTAssert(z80.hl2().value() == 0)
    XCTAssert(z80.ix().value() == 0)
    XCTAssert(z80.iy().value() == 0)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }
    
    func test0a_1() throws {
    loadRam(location: 0, data:[10])
    loadRam(location: 4660, data:[86])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x1234)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0a)
    XCTAssert(z80.af().value() == 0x5600)
    XCTAssert(z80.bc().value() == 0x1234)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test0b() throws {
    loadRam(location: 0, data:[11])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0b)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0xffff)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test0c() throws {
    loadRam(location: 0, data:[12])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x007f)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0c)
    XCTAssert(z80.af().value() == 0x0094)
    XCTAssert(z80.bc().value() == 0x0080)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test0d() throws {
    loadRam(location: 0, data:[13])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0080)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0d)
    XCTAssert(z80.af().value() == 0x003e)
    XCTAssert(z80.bc().value() == 0x007f)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test0e() throws {
    loadRam(location: 0, data:[14,240])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0e)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x00f0)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test0f() throws {
    loadRam(location: 0, data:[15])
    z80.af().ld(value: 0x4100)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x0f)
    XCTAssert(z80.af().value() == 0xa021)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test10() throws {
    loadRam(location: 0, data:[0,16,253,12])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0800)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 1
    z80.SP = 0
    z80.opCode(byte: 0x10)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0700)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0)
    XCTAssert(z80.SP == 0)
    }
    
    func test10_2() throws {
    loadRam(location: 0, data:[0,16,253,12])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0100)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 1
    z80.SP = 0
    z80.opCode(byte: 0x10)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test11() throws {
    loadRam(location: 0, data:[17,154,188])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x11)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xbc9a)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test12() throws {
    loadRam(location: 0, data:[18])
    z80.af().ld(value: 0x5600)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x8000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x12)
    XCTAssert(z80.af().value() == 0x5600)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x8000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x8000) == 0x56)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test13() throws {
    loadRam(location: 0, data:[19])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0xdef0)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x13)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xdef1)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test14() throws {
    loadRam(location: 0, data:[20])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x2700)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x14)
    XCTAssert(z80.af().value() == 0x0028)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x2800)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test15() throws {
    loadRam(location: 0, data:[21])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x1000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x15)
    XCTAssert(z80.af().value() == 0x001a)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0f00)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test16() throws {
    loadRam(location: 0, data:[22,18])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x16)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x1200)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test17() throws {
    loadRam(location: 0, data:[23])
    z80.af().ld(value: 0x0801)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x17)
    XCTAssert(z80.af().value() == 0x1100)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test18() throws {
    loadRam(location: 0, data:[24,64])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x18)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 66)
    XCTAssert(z80.SP == 0)
    }


    func test19() throws {
    loadRam(location: 0, data:[25])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x3456)
    z80.hl().ld(value: 0x789a)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x19)
    XCTAssert(z80.af().value() == 0x0028)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x3456)
    XCTAssert(z80.hl().value() == 0xacf0)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test1a() throws {
    loadRam(location: 0, data:[26])
    loadRam(location: 32768, data:[19])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x8000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1a)
    XCTAssert(z80.af().value() == 0x1300)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x8000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test1b() throws {
    loadRam(location: 0, data:[27])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0xe5d4)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1b)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0xe5d3)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test1c() throws {
    loadRam(location: 0, data:[28])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x00aa)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1c)
    XCTAssert(z80.af().value() == 0x00a8)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x00ab)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test1d() throws {
    loadRam(location: 0, data:[29])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x00aa)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1d)
    XCTAssert(z80.af().value() == 0x00aa)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x00a9)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test1e() throws {
    loadRam(location: 0, data:[30,239])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1e)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x00ef)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test1f() throws {
    loadRam(location: 0, data:[31])
    z80.af().ld(value: 0x01c4)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x1f)
    XCTAssert(z80.af().value() == 0x00c5)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test20_1() throws {
    loadRam(location: 0, data:[32,64])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x20)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 66)
    XCTAssert(z80.SP == 0)
    }


    func test20_2() throws {
    loadRam(location: 0, data:[32,64])
    z80.af().ld(value: 0x0040)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x20)
    XCTAssert(z80.af().value() == 0x0040)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test21() throws {
    loadRam(location: 0, data:[33,40,237])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x21)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xed28)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test22() throws {
    loadRam(location: 0, data:[34,176,195])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xc64c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x22)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xc64c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xc3b0) == 0x4c)
    XCTAssert(z80.fetchRam(location: 0xc3b1) == 0xc6)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test23() throws {
    loadRam(location: 0, data:[35])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x9c4e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x23)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x9c4f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test24() throws {
    loadRam(location: 0, data:[36])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x7200)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x24)
    XCTAssert(z80.af().value() == 0x0020)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x7300)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test25() throws {
    loadRam(location: 0, data:[37])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xa500)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x25)
    XCTAssert(z80.af().value() == 0x00a2)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xa400)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test26() throws {
    loadRam(location: 0, data:[38,58])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x26)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x3a00)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test27_1() throws {
    loadRam(location: 0, data:[39])
    z80.af().ld(value: 0x9a02)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x27)
    XCTAssert(z80.af().value() == 0x3423)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test27() throws {
    loadRam(location: 0, data:[39])
    z80.af().ld(value: 0x1f00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x27)
    XCTAssert(z80.af().value() == 0x2530)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test28_1() throws {
    loadRam(location: 0, data:[40,142])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x28)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test28_2() throws {
    loadRam(location: 0, data:[40,142])
    z80.af().ld(value: 0x0040)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x28)
    XCTAssert(z80.af().value() == 0x0040)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 65424)
    XCTAssert(z80.SP == 0)
    }


    func test29() throws {
    loadRam(location: 0, data:[41])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xcdfa)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x29)
    XCTAssert(z80.af().value() == 0x0019)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x9bf4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test2a() throws {
    loadRam(location: 0, data:[42,69,172])
    loadRam(location: 44101, data:[196,222])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2a)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xdec4)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test2b() throws {
    loadRam(location: 0, data:[43])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x9e66)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2b)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x9e65)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test2c() throws {
    loadRam(location: 0, data:[44])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0026)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2c)
    XCTAssert(z80.af().value() == 0x0020)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0027)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test2d() throws {
    loadRam(location: 0, data:[45])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0032)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2d)
    XCTAssert(z80.af().value() == 0x0022)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0031)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test2e() throws {
    loadRam(location: 0, data:[46,24])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2e)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0018)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test2f() throws {
    loadRam(location: 0, data:[47])
    z80.af().ld(value: 0x8900)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x2f)
    XCTAssert(z80.af().value() == 0x7632)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test30_1() throws {
    loadRam(location: 0, data:[48,80])
    z80.af().ld(value: 0x0036)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x30)
    XCTAssert(z80.af().value() == 0x0036)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 82)
    XCTAssert(z80.SP == 0)
    }


    func test30_2() throws {
    loadRam(location: 0, data:[48,80])
    z80.af().ld(value: 0x0037)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x30)
    XCTAssert(z80.af().value() == 0x0037)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test31() throws {
    loadRam(location: 0, data:[49,212,97])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x31)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 25044)
    }

   
    func test32() throws {
    loadRam(location: 0, data:[50,172,173])
    z80.af().ld(value: 0x0e00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x32)
    XCTAssert(z80.af().value() == 0x0e00)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xadac) == 0x0e)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test32_1() throws {
    loadRam(location: 0, data:[50,52,18])
    z80.af().ld(value: 0x5600)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x32)
    XCTAssert(z80.af().value() == 0x5600)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x1234) == 0x56)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test33() throws {
    loadRam(location: 0, data:[51])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 42330
    z80.opCode(byte: 0x33)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 42331)
    }


    func test34() throws {
    loadRam(location: 0, data:[52])
    loadRam(location: 65053, data:[253])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xfe1d)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x34)
    XCTAssert(z80.af().value() == 0x00a8)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xfe1d)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xfe1d) == 0xfe)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test35() throws {
    loadRam(location: 0, data:[53])
    loadRam(location: 18188, data:[130])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x470c)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x35)
    XCTAssert(z80.af().value() == 0x0082)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x470c)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x470c) == 0x81)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test36() throws {
    loadRam(location: 0, data:[54,124])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x7d29)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x36)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x7d29)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x7d29) == 0x7c)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test37_1() throws {
    loadRam(location: 0, data:[55])
    z80.af().ld(value: 0x00ff)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x37)
    XCTAssert(z80.af().value() == 0x00ed)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test37_2() throws {
    loadRam(location: 0, data:[55])
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
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x37)
    XCTAssert(z80.af().value() == 0xff29)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test37_3() throws {
    loadRam(location: 0, data:[55])
    z80.af().ld(value: 0xffff)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x37)
    XCTAssert(z80.af().value() == 0xffed)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test37() throws {
    loadRam(location: 0, data:[55])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x37)
    XCTAssert(z80.af().value() == 0x0001)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test38_1() throws {
    loadRam(location: 0, data:[56,102])
    z80.af().ld(value: 0x00b2)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x38)
    XCTAssert(z80.af().value() == 0x00b2)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test38_2() throws {
    loadRam(location: 0, data:[56,102])
    z80.af().ld(value: 0x00b3)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x38)
    XCTAssert(z80.af().value() == 0x00b3)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 104)
    XCTAssert(z80.SP == 0)
    }


    func test39() throws {
    loadRam(location: 0, data:[57])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x1aef)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 50484
    z80.opCode(byte: 0x39)
    XCTAssert(z80.af().value() == 0x0030)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xe023)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 50484)
    }


    func test3a() throws {
    loadRam(location: 0, data:[58,82,153])
    loadRam(location: 39250, data:[40])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3a)
    XCTAssert(z80.af().value() == 0x2800)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 3)
    XCTAssert(z80.SP == 0)
    }


    func test3b() throws {
    loadRam(location: 0, data:[59])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 40246
    z80.opCode(byte: 0x3b)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 40245)
    }


    func test3c() throws {
    loadRam(location: 0, data:[60])
    z80.af().ld(value: 0xcf00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3c)
    XCTAssert(z80.af().value() == 0xd090)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test3d() throws {
    loadRam(location: 0, data:[61])
    z80.af().ld(value: 0xea00)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3d)
    XCTAssert(z80.af().value() == 0xe9aa)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test3e() throws {
    loadRam(location: 0, data:[62,214])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3e)
    XCTAssert(z80.af().value() == 0xd600)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 2)
    XCTAssert(z80.SP == 0)
    }


    func test3f() throws {
    loadRam(location: 0, data:[63])
    z80.af().ld(value: 0x005b)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x0000)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x3f)
    XCTAssert(z80.af().value() == 0x0058)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test40() throws {
    loadRam(location: 0, data:[64])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x40)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test41() throws {
    loadRam(location: 0, data:[65])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x41)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0x9898)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test42() throws {
    loadRam(location: 0, data:[66])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x42)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0x9098)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test43() throws {
    loadRam(location: 0, data:[67])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x43)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xd898)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test44() throws {
    loadRam(location: 0, data:[68])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x44)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xa198)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test45() throws {
    loadRam(location: 0, data:[69])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x45)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0x6998)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test46() throws {
    loadRam(location: 0, data:[70])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x46)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0x5098)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test47() throws {
    loadRam(location: 0, data:[71])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x47)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0x0298)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test48() throws {
    loadRam(location: 0, data:[72])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x48)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcfcf)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test49() throws {
    loadRam(location: 0, data:[73])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x49)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4a() throws {
    loadRam(location: 0, data:[74])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4a)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf90)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4b() throws {
    loadRam(location: 0, data:[75])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4b)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcfd8)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4c() throws {
    loadRam(location: 0, data:[76])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4c)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcfa1)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4d() throws {
    loadRam(location: 0, data:[77])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4d)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf69)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4e() throws {
    loadRam(location: 0, data:[78])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4e)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf50)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test4f() throws {
    loadRam(location: 0, data:[79])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x4f)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf02)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test50() throws {
    loadRam(location: 0, data:[80])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x50)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0xcfd8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test51() throws {
    loadRam(location: 0, data:[81])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x51)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x98d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test52() throws {
    loadRam(location: 0, data:[82])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x52)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test53() throws {
    loadRam(location: 0, data:[83])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x53)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0xd8d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test54() throws {
    loadRam(location: 0, data:[84])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x54)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0xa1d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test55() throws {
    loadRam(location: 0, data:[85])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x55)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x69d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test56() throws {
    loadRam(location: 0, data:[86])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x56)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x50d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test57() throws {
    loadRam(location: 0, data:[87])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x57)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x02d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test58() throws {
    loadRam(location: 0, data:[88])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x58)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90cf)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test59() throws {
    loadRam(location: 0, data:[89])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x59)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x9098)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5a() throws {
    loadRam(location: 0, data:[90])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5a)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x9090)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5b() throws {
    loadRam(location: 0, data:[91])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5b)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5c() throws {
    loadRam(location: 0, data:[92])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5c)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90a1)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5d() throws {
    loadRam(location: 0, data:[93])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5d)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x9069)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5e() throws {
    loadRam(location: 0, data:[94])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5e)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x9050)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test5f() throws {
    loadRam(location: 0, data:[95])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x5f)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x9002)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test60() throws {
    loadRam(location: 0, data:[96])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x60)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xcf69)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test61() throws {
    loadRam(location: 0, data:[97])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x61)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0x9869)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test62() throws {
    loadRam(location: 0, data:[98])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x62)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0x9069)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test63() throws {
    loadRam(location: 0, data:[99])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x63)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xd869)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test64() throws {
    loadRam(location: 0, data:[100])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x64)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test65() throws {
    loadRam(location: 0, data:[101])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x65)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0x6969)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test66() throws {
    loadRam(location: 0, data:[102])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x66)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0x5069)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test67() throws {
    loadRam(location: 0, data:[103])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x67)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0x0269)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test68() throws {
    loadRam(location: 0, data:[104])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x68)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa1cf)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test69() throws {
    loadRam(location: 0, data:[105])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x69)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa198)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6a() throws {
    loadRam(location: 0, data:[106])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6a)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa190)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6b() throws {
    loadRam(location: 0, data:[107])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6b)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa1d8)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6c() throws {
    loadRam(location: 0, data:[108])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6c)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa1a1)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6d() throws {
    loadRam(location: 0, data:[109])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6d)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6e() throws {
    loadRam(location: 0, data:[110])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6e)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa150)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test6f() throws {
    loadRam(location: 0, data:[111])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x6f)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa102)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test70() throws {
    loadRam(location: 0, data:[112])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x70)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0xcf)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test71() throws {
    loadRam(location: 0, data:[113])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x71)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0x98)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test72() throws {
    loadRam(location: 0, data:[114])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x72)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0x90)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test73() throws {
    loadRam(location: 0, data:[115])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x73)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0xd8)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test74() throws {
    loadRam(location: 0, data:[116])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x74)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0xa1)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test75() throws {
    loadRam(location: 0, data:[117])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x75)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0x69)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test76() throws {
    loadRam(location: 0, data:[118])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x76)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test77() throws {
    loadRam(location: 0, data:[119])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x77)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xa169) == 0x02)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test78() throws {
    loadRam(location: 0, data:[120])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x78)
    XCTAssert(z80.af().value() == 0xcf00)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    
    
    func test79() throws {
    loadRam(location: 0, data:[121])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x79)
    XCTAssert(z80.af().value() == 0x9800)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7a() throws {
    loadRam(location: 0, data:[122])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7a)
    XCTAssert(z80.af().value() == 0x9000)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7b() throws {
    loadRam(location: 0, data:[123])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7b)
    XCTAssert(z80.af().value() == 0xd800)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7c() throws {
    loadRam(location: 0, data:[124])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7c)
    XCTAssert(z80.af().value() == 0xa100)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7d() throws {
    loadRam(location: 0, data:[125])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7d)
    XCTAssert(z80.af().value() == 0x6900)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7e() throws {
    loadRam(location: 0, data:[126])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7e)
    XCTAssert(z80.af().value() == 0x5000)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test7f() throws {
    loadRam(location: 0, data:[127])
    loadRam(location: 41321, data:[80])
    z80.af().ld(value: 0x0200)
    z80.bc().ld(value: 0xcf98)
    z80.de().ld(value: 0x90d8)
    z80.hl().ld(value: 0xa169)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x7f)
    XCTAssert(z80.af().value() == 0x0200)
    XCTAssert(z80.bc().value() == 0xcf98)
    XCTAssert(z80.de().value() == 0x90d8)
    XCTAssert(z80.hl().value() == 0xa169)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }

    
    
    
}
