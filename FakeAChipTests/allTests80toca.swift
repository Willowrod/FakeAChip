//
//  allTests80to.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class allTests80to: BaseTest {



    
    
    func test80() throws {
    loadRam(location: 0, data:[128])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x80)
    XCTAssert(z80.af().value() == 0x0411)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test81() throws {
    loadRam(location: 0, data:[129])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x81)
    XCTAssert(z80.af().value() == 0x3031)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test82() throws {
    loadRam(location: 0, data:[130])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x82)
    XCTAssert(z80.af().value() == 0x1501)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test83() throws {
    loadRam(location: 0, data:[131])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x83)
    XCTAssert(z80.af().value() == 0x0211)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test84() throws {
    loadRam(location: 0, data:[132])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x84)
    XCTAssert(z80.af().value() == 0xd191)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test85() throws {
    loadRam(location: 0, data:[133])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x85)
    XCTAssert(z80.af().value() == 0x9b89)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test86() throws {
    loadRam(location: 0, data:[134])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x86)
    XCTAssert(z80.af().value() == 0x3e29)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test87() throws {
    loadRam(location: 0, data:[135])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x87)
    XCTAssert(z80.af().value() == 0xeaa9)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test88() throws {
    loadRam(location: 0, data:[136])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x88)
    XCTAssert(z80.af().value() == 0x0411)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test89() throws {
    loadRam(location: 0, data:[137])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x89)
    XCTAssert(z80.af().value() == 0x3031)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8a() throws {
    loadRam(location: 0, data:[138])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8a)
    XCTAssert(z80.af().value() == 0x1501)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8b() throws {
    loadRam(location: 0, data:[139])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8b)
    XCTAssert(z80.af().value() == 0x0211)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8c() throws {
    loadRam(location: 0, data:[140])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8c)
    XCTAssert(z80.af().value() == 0xd191)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8d() throws {
    loadRam(location: 0, data:[141])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8d)
    XCTAssert(z80.af().value() == 0x9b89)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8e() throws {
    loadRam(location: 0, data:[142])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8e)
    XCTAssert(z80.af().value() == 0x3e29)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test8f() throws {
    loadRam(location: 0, data:[143])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x8f)
    XCTAssert(z80.af().value() == 0xeaa9)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test90() throws {
    loadRam(location: 0, data:[144])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x90)
    XCTAssert(z80.af().value() == 0xe6b2)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test91() throws {
    loadRam(location: 0, data:[145])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x91)
    XCTAssert(z80.af().value() == 0xbaba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test92() throws {
    loadRam(location: 0, data:[146])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x92)
    XCTAssert(z80.af().value() == 0xd582)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test93() throws {
    loadRam(location: 0, data:[147])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x93)
    XCTAssert(z80.af().value() == 0xe8ba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test94() throws {
    loadRam(location: 0, data:[148])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x94)
    XCTAssert(z80.af().value() == 0x191a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }
    
    
    func test94_1() throws {
    loadRam(location: 0, data:[148])
    z80.af().ld(value: 0x3900)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdfa6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x94)
    XCTAssert(z80.af().value() == 0x5a1b)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdfa6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test95() throws {
    loadRam(location: 0, data:[149])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x95)
    XCTAssert(z80.af().value() == 0x4f1a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test96() throws {
    loadRam(location: 0, data:[150])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x96)
    XCTAssert(z80.af().value() == 0xacba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test97() throws {
    loadRam(location: 0, data:[151])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x97)
    XCTAssert(z80.af().value() == 0x0042)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test98() throws {
    loadRam(location: 0, data:[152])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x98)
    XCTAssert(z80.af().value() == 0xe6b2)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test99() throws {
    loadRam(location: 0, data:[153])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x99)
    XCTAssert(z80.af().value() == 0xbaba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test9a() throws {
    loadRam(location: 0, data:[154])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9a)
    XCTAssert(z80.af().value() == 0xd582)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test9b() throws {
    loadRam(location: 0, data:[155])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9b)
    XCTAssert(z80.af().value() == 0xe8ba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test9c() throws {
    loadRam(location: 0, data:[156])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9c)
    XCTAssert(z80.af().value() == 0x191a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }

    
    func test9d() throws {
    loadRam(location: 0, data:[157])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9d)
    XCTAssert(z80.af().value() == 0x4f1a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test9e() throws {
    loadRam(location: 0, data:[158])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9e)
    XCTAssert(z80.af().value() == 0xacba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func test9f() throws {
    loadRam(location: 0, data:[159])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0x9f)
    XCTAssert(z80.af().value() == 0x0042)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa0() throws {
    loadRam(location: 0, data:[160])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa0)
    XCTAssert(z80.af().value() == 0x0514)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa1() throws {
    loadRam(location: 0, data:[161])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa1)
    XCTAssert(z80.af().value() == 0x3130)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa2() throws {
    loadRam(location: 0, data:[162])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa2)
    XCTAssert(z80.af().value() == 0x2030)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa3() throws {
    loadRam(location: 0, data:[163])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa3)
    XCTAssert(z80.af().value() == 0x0514)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa4() throws {
    loadRam(location: 0, data:[164])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa4)
    XCTAssert(z80.af().value() == 0xd494)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa5() throws {
    loadRam(location: 0, data:[165])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa5)
    XCTAssert(z80.af().value() == 0xa4b0)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa6() throws {
    loadRam(location: 0, data:[166])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa6)
    XCTAssert(z80.af().value() == 0x4114)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa7() throws {
    loadRam(location: 0, data:[167])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa7)
    XCTAssert(z80.af().value() == 0xf5b4)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa8() throws {
    loadRam(location: 0, data:[168])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa8)
    XCTAssert(z80.af().value() == 0xfaac)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testa9() throws {
    loadRam(location: 0, data:[169])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xa9)
    XCTAssert(z80.af().value() == 0xce88)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testaa() throws {
    loadRam(location: 0, data:[170])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xaa)
    XCTAssert(z80.af().value() == 0xd580)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testab() throws {
    loadRam(location: 0, data:[171])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xab)
    XCTAssert(z80.af().value() == 0xf8a8)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testac() throws {
    loadRam(location: 0, data:[172])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xac)
    XCTAssert(z80.af().value() == 0x2928)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testad() throws {
    loadRam(location: 0, data:[173])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xad)
    XCTAssert(z80.af().value() == 0x5304)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testae() throws {
    loadRam(location: 0, data:[174])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xae)
    XCTAssert(z80.af().value() == 0xbca8)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testaf() throws {
    loadRam(location: 0, data:[175])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xaf)
    XCTAssert(z80.af().value() == 0x0044)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb0() throws {
    loadRam(location: 0, data:[176])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb0)
    XCTAssert(z80.af().value() == 0xffac)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb1() throws {
    loadRam(location: 0, data:[177])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb1)
    XCTAssert(z80.af().value() == 0xffac)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb2() throws {
    loadRam(location: 0, data:[178])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb2)
    XCTAssert(z80.af().value() == 0xf5a4)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb3() throws {
    loadRam(location: 0, data:[179])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb3)
    XCTAssert(z80.af().value() == 0xfda8)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb4() throws {
    loadRam(location: 0, data:[180])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb4)
    XCTAssert(z80.af().value() == 0xfda8)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb5() throws {
    loadRam(location: 0, data:[181])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb5)
    XCTAssert(z80.af().value() == 0xf7a0)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb6() throws {
    loadRam(location: 0, data:[182])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb6)
    XCTAssert(z80.af().value() == 0xfda8)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb7() throws {
    loadRam(location: 0, data:[183])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb7)
    XCTAssert(z80.af().value() == 0xf5a4)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb8() throws {
    loadRam(location: 0, data:[184])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb8)
    XCTAssert(z80.af().value() == 0xf59a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testb9() throws {
    loadRam(location: 0, data:[185])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xb9)
    XCTAssert(z80.af().value() == 0xf5ba)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testba() throws {
    loadRam(location: 0, data:[186])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xba)
    XCTAssert(z80.af().value() == 0xf5a2)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testbb() throws {
    loadRam(location: 0, data:[187])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xbb)
    XCTAssert(z80.af().value() == 0xf59a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testbc() throws {
    loadRam(location: 0, data:[188])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xbc)
    XCTAssert(z80.af().value() == 0xf51a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testbd() throws {
    loadRam(location: 0, data:[189])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xbd)
    XCTAssert(z80.af().value() == 0xf532)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testbe() throws {
    loadRam(location: 0, data:[190])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xbe)
    XCTAssert(z80.af().value() == 0xf59a)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testbf() throws {
    loadRam(location: 0, data:[191])
    loadRam(location: 56486, data:[73])
    z80.af().ld(value: 0xf500)
    z80.bc().ld(value: 0x0f3b)
    z80.de().ld(value: 0x200d)
    z80.hl().ld(value: 0xdca6)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 0
    z80.opCode(byte: 0xbf)
    XCTAssert(z80.af().value() == 0xf562)
    XCTAssert(z80.bc().value() == 0x0f3b)
    XCTAssert(z80.de().value() == 0x200d)
    XCTAssert(z80.hl().value() == 0xdca6)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 0)
    }


    func testc0_1() throws {
    loadRam(location: 0, data:[192])
    loadRam(location: 17399, data:[233,175])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 17399
    z80.opCode(byte: 0xc0)
    XCTAssert(z80.af().value() == 0x0098)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 45033)
    XCTAssert(z80.SP == 17401)
    }


    func testc0_2() throws {
    loadRam(location: 0, data:[192])
    loadRam(location: 17399, data:[233,175])
    z80.af().ld(value: 0x00d8)
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
    z80.SP = 17399
    z80.opCode(byte: 0xc0)
    XCTAssert(z80.af().value() == 0x00d8)
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
    XCTAssert(z80.SP == 17399)
    }

    func testc1() throws {
    loadRam(location: 0, data:[193])
    loadRam(location: 16707, data:[206,232])
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
    z80.SP = 16707
    z80.opCode(byte: 0xc1)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0xe8ce)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 16709)
    }


    func testc2_1() throws {
    loadRam(location: 0, data:[194,27,225])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xc2)
    XCTAssert(z80.af().value() == 0x0087)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 57627)
    XCTAssert(z80.SP == 0)
    }


    func testc2_2() throws {
    loadRam(location: 0, data:[194,27,225])
    z80.af().ld(value: 0x00c7)
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
    z80.opCode(byte: 0xc2)
    XCTAssert(z80.af().value() == 0x00c7)
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


    func testc3() throws {
    loadRam(location: 0, data:[195,237,124])
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
    z80.opCode(byte: 0xc3)
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
    XCTAssert(z80.PC == 31981)
    XCTAssert(z80.SP == 0)
    }


    func testc4_1() throws {
    loadRam(location: 0, data:[196,97,156])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 22168
    z80.opCode(byte: 0xc4)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0x5696) == 0x03)
    XCTAssert(z80.fetchRam(location: 0x5697) == 0x00)
    XCTAssert(z80.PC == 40033)
    XCTAssert(z80.SP == 22166)
    }


    func testc4_2() throws {
    loadRam(location: 0, data:[196,97,156])
    z80.af().ld(value: 0x004e)
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
    z80.SP = 22168
    z80.opCode(byte: 0xc4)
    XCTAssert(z80.af().value() == 0x004e)
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
    XCTAssert(z80.SP == 22168)
    }


    func testc5() throws {
    loadRam(location: 0, data:[197])
    z80.af().ld(value: 0x53e3)
    z80.bc().ld(value: 0x1459)
    z80.de().ld(value: 0x775f)
    z80.hl().ld(value: 0x1a2f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0
    z80.SP = 60434
    z80.opCode(byte: 0xc5)
    XCTAssert(z80.af().value() == 0x53e3)
    XCTAssert(z80.bc().value() == 0x1459)
    XCTAssert(z80.de().value() == 0x775f)
    XCTAssert(z80.hl().value() == 0x1a2f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.fetchRam(location: 0xec10) == 0x59)
    XCTAssert(z80.fetchRam(location: 0xec11) == 0x14)
    XCTAssert(z80.PC == 1)
    XCTAssert(z80.SP == 60432)
    }


    func testc6() throws {
    loadRam(location: 0, data:[198,111])
    z80.af().ld(value: 0xca00)
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
    z80.opCode(byte: 0xc6)
    XCTAssert(z80.af().value() == 0x3939)
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


    func testc7() throws {
    loadRam(location: 27955, data:[199])
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
    z80.PC = 27955
    z80.SP = 21767
    z80.opCode(byte: 0xc7)
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
    XCTAssert(z80.fetchRam(location: 0x5505) == 0x34)
    XCTAssert(z80.fetchRam(location: 0x5506) == 0x6d)
    XCTAssert(z80.PC == 0)
    XCTAssert(z80.SP == 21765)
    }


    func testc8_1() throws {
    loadRam(location: 0, data:[200])
    loadRam(location: 17399, data:[233,175])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 17399
    z80.opCode(byte: 0xc8)
    XCTAssert(z80.af().value() == 0x0098)
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
    XCTAssert(z80.SP == 17399)
    }


    func testc8_2() throws {
    loadRam(location: 0, data:[200])
    loadRam(location: 17399, data:[233,175])
    z80.af().ld(value: 0x00d8)
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
    z80.SP = 17399
    z80.opCode(byte: 0xc8)
    XCTAssert(z80.af().value() == 0x00d8)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 45033)
    XCTAssert(z80.SP == 17401)
    }


    func testc9() throws {
    loadRam(location: 0, data:[201])
    loadRam(location: 34942, data:[54,17])
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
    z80.SP = 34942
    z80.opCode(byte: 0xc9)
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
    XCTAssert(z80.PC == 4406)
    XCTAssert(z80.SP == 34944)
    }


    func testca_1() throws {
    loadRam(location: 0, data:[202,27,225])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xca)
    XCTAssert(z80.af().value() == 0x0087)
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


    func testca_2() throws {
    loadRam(location: 0, data:[202,27,225])
    z80.af().ld(value: 0x00c7)
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
    z80.opCode(byte: 0xca)
    XCTAssert(z80.af().value() == 0x00c7)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 57627)
    XCTAssert(z80.SP == 0)
    }

    func testcc_1() throws {
    loadRam(location: 0x0000, data:[0xcc,0x61,0x9c])
    z80.af().ld(value: 0x004e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcc)
    XCTAssert(z80.af().value() == 0x004e)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x5696) == 0x3)
    XCTAssert(z80.fetchRam(location: 0x5697) == 0x0)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testcc_2() throws {
    loadRam(location: 0x0000, data:[0xcc,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcc)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    func testcd() throws {
    loadRam(location: 0x0000, data:[0xcd,0x5d,0x3a])
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
    z80.PC = 0x0000
    z80.SP = 0xb07d
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcd)
    XCTAssert(z80.af().value() == 0x0)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0xb07b) == 0x3)
    XCTAssert(z80.fetchRam(location: 0xb07c) == 0x0)
    XCTAssert(z80.PC == 0x3a5d)
    XCTAssert(z80.SP == 0xb07b)
    }

    func testce() throws {
    loadRam(location: 0x0000, data:[0xce,0xb2])
    z80.af().ld(value: 0x60f5)
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
    z80.opCode(byte: 0xce)
    XCTAssert(z80.af().value() == 0x1301)
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

    func testcf() throws {
    loadRam(location: 0x6d33, data:[0xcf])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xcf)
    XCTAssert(z80.af().value() == 0x0)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x5505) == 0x34)
    XCTAssert(z80.fetchRam(location: 0x5506) == 0x6d)
    XCTAssert(z80.PC == 0x8)
    XCTAssert(z80.SP == 0x5505)
    }

    func testd0_1() throws {
    loadRam(location: 0x0000, data:[0xd0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd0)
    XCTAssert(z80.af().value() == 0x98)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func testd0_2() throws {
    loadRam(location: 0x0000, data:[0xd0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0099)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd0)
    XCTAssert(z80.af().value() == 0x99)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func testd1() throws {
    loadRam(location: 0x0000, data:[0xd1])
    loadRam(location: 0x4143, data:[0xce,0xe8])
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
    z80.PC = 0x0000
    z80.SP = 0x4143
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd1)
    XCTAssert(z80.af().value() == 0x0)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0xe8ce)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x4145)
    }

    func testd2_1() throws {
    loadRam(location: 0x0000, data:[0xd2,0x1b,0xe1])
    z80.af().ld(value: 0x0086)
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
    z80.opCode(byte: 0xd2)
    XCTAssert(z80.af().value() == 0x86)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0)
    }

    func testd2_2() throws {
    loadRam(location: 0x0000, data:[0xd2,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xd2)
    XCTAssert(z80.af().value() == 0x87)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }

    func testd3_1() throws {
    loadRam(location: 0x0000, data:[0xd3,0xed])
    z80.af().ld(value: 0xa200)
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
    z80.opCode(byte: 0xd3)
    XCTAssert(z80.af().value() == 0xa200)
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

    func testd3_2() throws {
    loadRam(location: 0x0000, data:[0xd3,0xec])
    z80.af().ld(value: 0x4200)
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
    z80.opCode(byte: 0xd3)
    XCTAssert(z80.af().value() == 0x4200)
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

    func testd3_3() throws {
    loadRam(location: 0x0000, data:[0xd3,0xed])
    z80.af().ld(value: 0x4200)
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
    z80.opCode(byte: 0xd3)
    XCTAssert(z80.af().value() == 0x4200)
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

    func testd3_4() throws {
    loadRam(location: 0x0000, data:[0xd3,0xff])
    z80.af().ld(value: 0xa200)
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
    z80.opCode(byte: 0xd3)
    XCTAssert(z80.af().value() == 0xa200)
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

    func testd3() throws {
    loadRam(location: 0x0000, data:[0xd3,0xec])
    z80.af().ld(value: 0xa200)
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
    z80.opCode(byte: 0xd3)
    XCTAssert(z80.af().value() == 0xa200)
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

    func testd4_1() throws {
    loadRam(location: 0x0000, data:[0xd4,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd4)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x5696) == 0x3)
    XCTAssert(z80.fetchRam(location: 0x5697) == 0x0)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testd4_2() throws {
    loadRam(location: 0x0000, data:[0xd4,0x61,0x9c])
    z80.af().ld(value: 0x000f)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd4)
    XCTAssert(z80.af().value() == 0x000f)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    func testd5() throws {
    loadRam(location: 0x0000, data:[0xd5])
    z80.af().ld(value: 0x53e3)
    z80.bc().ld(value: 0x1459)
    z80.de().ld(value: 0x775f)
    z80.hl().ld(value: 0x1a2f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xec12
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd5)
    XCTAssert(z80.af().value() == 0x53e3)
    XCTAssert(z80.bc().value() == 0x1459)
    XCTAssert(z80.de().value() == 0x775f)
    XCTAssert(z80.hl().value() == 0x1a2f)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0xec10) == 0x5f)
    XCTAssert(z80.fetchRam(location: 0xec11) == 0x77)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0xec10)
    }

    func testd6() throws {
    loadRam(location: 0x0000, data:[0xd6,0xdf])
    z80.af().ld(value: 0x3900)
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
    z80.opCode(byte: 0xd6)
    XCTAssert(z80.af().value() == 0x5a1b)
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

    func testd7() throws {
    loadRam(location: 0x6d33, data:[0xd7])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd7)
    XCTAssert(z80.af().value() == 0x0)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x5505) == 0x34)
    XCTAssert(z80.fetchRam(location: 0x5506) == 0x6d)
    XCTAssert(z80.PC == 0x10)
    XCTAssert(z80.SP == 0x5505)
    }

    func testd8_1() throws {
    loadRam(location: 0x0000, data:[0xd8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd8)
    XCTAssert(z80.af().value() == 0x98)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func testd8_2() throws {
    loadRam(location: 0x0000, data:[0xd8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0099)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd8)
    XCTAssert(z80.af().value() == 0x99)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func testd9() throws {
    loadRam(location: 0x0000, data:[0xd9])
    z80.af().ld(value: 0x4d94)
    z80.bc().ld(value: 0xe07a)
    z80.de().ld(value: 0xe35b)
    z80.hl().ld(value: 0x9d64)
    z80.AF2 = 0x1a64
    z80.BC2 = 0xc930
    z80.DE2 = 0x3d01
    z80.HL2 = 0x7d02
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xd9)
    XCTAssert(z80.af().value() == 0x4d94)
    XCTAssert(z80.bc().value() == 0xc930)
    XCTAssert(z80.de().value() == 0x3d01)
    XCTAssert(z80.hl().value() == 0x7d02)
    XCTAssert(z80.af2().value() == 0x1a64)
    XCTAssert(z80.bc2().value() == 0xe07a)
    XCTAssert(z80.de2().value() == 0xe35b)
    XCTAssert(z80.hl2().value() == 0x9d64)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x0)
    }

    func testda_1() throws {
    loadRam(location: 0x0000, data:[0xda,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xda)
    XCTAssert(z80.af().value() == 0x87)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0)
    }

    func testda_2() throws {
    loadRam(location: 0x0000, data:[0xda,0x1b,0xe1])
    z80.af().ld(value: 0x0086)
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
    z80.opCode(byte: 0xda)
    XCTAssert(z80.af().value() == 0x86)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0)
    }
    
    // IN A, (n) - not implemented

//    func testdb_1() throws {
//    loadRam(location: 0x0000, data:[0xdb,0xe3])
//    z80.af().ld(value: 0xc100)
//    z80.bc().ld(value: 0x0000)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xdb)
//    XCTAssert(z80.af().value() == 0xc100)
//    XCTAssert(z80.bc().value() == 0x0)
//    XCTAssert(z80.de().value() == 0x0)
//    XCTAssert(z80.hl().value() == 0x0)
//    XCTAssert(z80.af2().value() == 0x0)
//    XCTAssert(z80.bc2().value() == 0x0)
//    XCTAssert(z80.de2().value() == 0x0)
//    XCTAssert(z80.hl2().value() == 0x0)
//    XCTAssert(z80.ix().value() == 0x0)
//    XCTAssert(z80.iy().value() == 0x0)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0)
//    }
//
//    func testdb_2() throws {
//    loadRam(location: 0x0000, data:[0xdb,0xe2])
//    z80.af().ld(value: 0x7100)
//    z80.bc().ld(value: 0x0000)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xdb)
//    XCTAssert(z80.af().value() == 0x7100)
//    XCTAssert(z80.bc().value() == 0x0)
//    XCTAssert(z80.de().value() == 0x0)
//    XCTAssert(z80.hl().value() == 0x0)
//    XCTAssert(z80.af2().value() == 0x0)
//    XCTAssert(z80.bc2().value() == 0x0)
//    XCTAssert(z80.de2().value() == 0x0)
//    XCTAssert(z80.hl2().value() == 0x0)
//    XCTAssert(z80.ix().value() == 0x0)
//    XCTAssert(z80.iy().value() == 0x0)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0)
//    }
//
//    func testdb_3() throws {
//    loadRam(location: 0x0000, data:[0xdb,0xe3])
//    z80.af().ld(value: 0x7100)
//    z80.bc().ld(value: 0x0000)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xdb)
//    XCTAssert(z80.af().value() == 0x7100)
//    XCTAssert(z80.bc().value() == 0x0)
//    XCTAssert(z80.de().value() == 0x0)
//    XCTAssert(z80.hl().value() == 0x0)
//    XCTAssert(z80.af2().value() == 0x0)
//    XCTAssert(z80.bc2().value() == 0x0)
//    XCTAssert(z80.de2().value() == 0x0)
//    XCTAssert(z80.hl2().value() == 0x0)
//    XCTAssert(z80.ix().value() == 0x0)
//    XCTAssert(z80.iy().value() == 0x0)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0)
//    }
//
//    func testdb() throws {
//    loadRam(location: 0x0000, data:[0xdb,0xe2])
//    z80.af().ld(value: 0xc100)
//    z80.bc().ld(value: 0x0000)
//    z80.de().ld(value: 0x0000)
//    z80.hl().ld(value: 0x0000)
//    z80.AF2 = 0
//    z80.BC2 = 0
//    z80.DE2 = 0
//    z80.HL2 = 0
//    z80.ix().ld(value: 0x0000)
//    z80.iy().ld(value: 0x0000)
//    z80.PC = 0x0000
//    z80.SP = 0x0000
//    z80.MEMPTR = 0x0000
//    z80.opCode(byte: 0xdb)
//    XCTAssert(z80.af().value() == 0xc100)
//    XCTAssert(z80.bc().value() == 0x0)
//    XCTAssert(z80.de().value() == 0x0)
//    XCTAssert(z80.hl().value() == 0x0)
//    XCTAssert(z80.af2().value() == 0x0)
//    XCTAssert(z80.bc2().value() == 0x0)
//    XCTAssert(z80.de2().value() == 0x0)
//    XCTAssert(z80.hl2().value() == 0x0)
//    XCTAssert(z80.ix().value() == 0x0)
//    XCTAssert(z80.iy().value() == 0x0)
//    XCTAssert(z80.PC == 0x2)
//    XCTAssert(z80.SP == 0x0)
//    }

    func testdc_1() throws {
    loadRam(location: 0x0000, data:[0xdc,0x61,0x9c])
    z80.af().ld(value: 0x000f)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdc)
    XCTAssert(z80.af().value() == 0x000f)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.fetchRam(location: 0x5696) == 0x3)
    XCTAssert(z80.fetchRam(location: 0x5697) == 0x0)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testdc_2() throws {
    loadRam(location: 0x0000, data:[0xdc,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdc)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0)
    XCTAssert(z80.de().value() == 0x0)
    XCTAssert(z80.hl().value() == 0x0)
    XCTAssert(z80.af2().value() == 0x0)
    XCTAssert(z80.bc2().value() == 0x0)
    XCTAssert(z80.de2().value() == 0x0)
    XCTAssert(z80.hl2().value() == 0x0)
    XCTAssert(z80.ix().value() == 0x0)
    XCTAssert(z80.iy().value() == 0x0)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    
    func testde() throws {
    loadRam(location: 0x0000, data:[0xde,0xa1])
    z80.af().ld(value: 0xe78d)
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
    z80.opCode(byte: 0xde)
    XCTAssert(z80.af().value() == 0x4502)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testdf() throws {
    loadRam(location: 0x6d33, data:[0xdf])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xdf)
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
    XCTAssert(z80.PC == 0x18)
    XCTAssert(z80.SP == 0x5505)
    }

    func teste0_1() throws {
    loadRam(location: 0x0000, data:[0xe0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe0)
    XCTAssert(z80.af().value() == 0x0098)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func teste0_2() throws {
    loadRam(location: 0x0000, data:[0xe0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x009c)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe0)
    XCTAssert(z80.af().value() == 0x009c)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func teste1() throws {
    loadRam(location: 0x0000, data:[0xe1])
    loadRam(location: 0x4143, data:[0xce,0xe8])
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
    z80.PC = 0x0000
    z80.SP = 0x4143
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe1)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xe8ce)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x4145)
    }

    func teste2_1() throws {
    loadRam(location: 0x0000, data:[0xe2,0x1b,0xe1])
    z80.af().ld(value: 0x0083)
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
    z80.opCode(byte: 0xe2)
    XCTAssert(z80.af().value() == 0x0083)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0000)
    }

    func teste2_2() throws {
    loadRam(location: 0x0000, data:[0xe2,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xe2)
    XCTAssert(z80.af().value() == 0x0087)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func teste3() throws {
    loadRam(location: 0x0000, data:[0xe3])
    loadRam(location: 0x0373, data:[0x8e,0xe1])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0x4d22)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0373
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe3)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xe18e)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x0373)
    }

    func teste4_1() throws {
    loadRam(location: 0x0000, data:[0xe4,0x61,0x9c])
    z80.af().ld(value: 0x000a)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe4)
    XCTAssert(z80.af().value() == 0x000a)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func teste4_2() throws {
    loadRam(location: 0x0000, data:[0xe4,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe4)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    func teste5() throws {
    loadRam(location: 0x0000, data:[0xe5])
    z80.af().ld(value: 0x53e3)
    z80.bc().ld(value: 0x1459)
    z80.de().ld(value: 0x775f)
    z80.hl().ld(value: 0x1a2f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xec12
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe5)
    XCTAssert(z80.af().value() == 0x53e3)
    XCTAssert(z80.bc().value() == 0x1459)
    XCTAssert(z80.de().value() == 0x775f)
    XCTAssert(z80.hl().value() == 0x1a2f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0xec10)
    }

    func teste6() throws {
    loadRam(location: 0x0000, data:[0xe6,0x49])
    z80.af().ld(value: 0x7500)
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
    z80.opCode(byte: 0xe6)
    XCTAssert(z80.af().value() == 0x4114)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func teste7() throws {
    loadRam(location: 0x6d33, data:[0xe7])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe7)
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
    XCTAssert(z80.PC == 0x20)
    XCTAssert(z80.SP == 0x5505)
    }

    func teste8_1() throws {
    loadRam(location: 0x0000, data:[0xe8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe8)
    XCTAssert(z80.af().value() == 0x0098)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func teste8_2() throws {
    loadRam(location: 0x0000, data:[0xe8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x009c)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe8)
    XCTAssert(z80.af().value() == 0x009c)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func teste9() throws {
    loadRam(location: 0x0000, data:[0xe9])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xcaba)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xe9)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xcaba)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xcaba)
    XCTAssert(z80.SP == 0x0000)
    }

    func testea_1() throws {
    loadRam(location: 0x0000, data:[0xea,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xea)
    XCTAssert(z80.af().value() == 0x0087)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0000)
    }

    func testea_2() throws {
    loadRam(location: 0x0000, data:[0xea,0x1b,0xe1])
    z80.af().ld(value: 0x0083)
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
    z80.opCode(byte: 0xea)
    XCTAssert(z80.af().value() == 0x0083)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testeb() throws {
    loadRam(location: 0x0000, data:[0xeb])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0xb879)
    z80.hl().ld(value: 0x942e)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xeb)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x942e)
    XCTAssert(z80.hl().value() == 0xb879)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x0000)
    }

    func testec_1() throws {
    loadRam(location: 0x0000, data:[0xec,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xec)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testec_2() throws {
    loadRam(location: 0x0000, data:[0xec,0x61,0x9c])
    z80.af().ld(value: 0x000a)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xec)
    XCTAssert(z80.af().value() == 0x000a)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }
    
    func testee() throws {
    loadRam(location: 0x0000, data:[0xee,0xd0])
    z80.af().ld(value: 0x3e00)
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
    z80.opCode(byte: 0xee)
    XCTAssert(z80.af().value() == 0xeeac)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testef() throws {
    loadRam(location: 0x6d33, data:[0xef])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xef)
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
    XCTAssert(z80.PC == 0x28)
    XCTAssert(z80.SP == 0x5505)
    }

    func testf0_1() throws {
    loadRam(location: 0x0000, data:[0xf0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0018)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf0)
    XCTAssert(z80.af().value() == 0x0018)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func testf0_2() throws {
    loadRam(location: 0x0000, data:[0xf0])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf0)
    XCTAssert(z80.af().value() == 0x0098)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func testf1() throws {
    loadRam(location: 0x0000, data:[0xf1])
    loadRam(location: 0x4143, data:[0xce,0xe8])
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
    z80.PC = 0x0000
    z80.SP = 0x4143
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf1)
    XCTAssert(z80.af().value() == 0xe8ce)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x4145)
    }

    func testf2_1() throws {
    loadRam(location: 0x0000, data:[0xf2,0x1b,0xe1])
    z80.af().ld(value: 0x0007)
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
    z80.opCode(byte: 0xf2)
    XCTAssert(z80.af().value() == 0x0007)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0000)
    }

    func testf2_2() throws {
    loadRam(location: 0x0000, data:[0xf2,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xf2)
    XCTAssert(z80.af().value() == 0x0087)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testf3() throws {
    loadRam(location: 0x0000, data:[0xf3])
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
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf3)
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
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x0000)
    }

    func testf4_1() throws {
    loadRam(location: 0x0000, data:[0xf4,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf4)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testf4_2() throws {
    loadRam(location: 0x0000, data:[0xf4,0x61,0x9c])
    z80.af().ld(value: 0x008e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf4)
    XCTAssert(z80.af().value() == 0x008e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    func testf5() throws {
    loadRam(location: 0x0000, data:[0xf5])
    z80.af().ld(value: 0x53e3)
    z80.bc().ld(value: 0x1459)
    z80.de().ld(value: 0x775f)
    z80.hl().ld(value: 0x1a2f)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0xec12
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf5)
    XCTAssert(z80.af().value() == 0x53e3)
    XCTAssert(z80.bc().value() == 0x1459)
    XCTAssert(z80.de().value() == 0x775f)
    XCTAssert(z80.hl().value() == 0x1a2f)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0xec10)
    }

    func testf6() throws {
    loadRam(location: 0x0000, data:[0xf6,0xa7])
    z80.af().ld(value: 0x0600)
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
    z80.opCode(byte: 0xf6)
    XCTAssert(z80.af().value() == 0xa7a0)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testf7() throws {
    loadRam(location: 0x6d33, data:[0xf7])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf7)
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
    XCTAssert(z80.PC == 0x30)
    XCTAssert(z80.SP == 0x5505)
    }

    func testf8_1() throws {
    loadRam(location: 0x0000, data:[0xf8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0018)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf8)
    XCTAssert(z80.af().value() == 0x0018)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x43f7)
    }

    func testf8_2() throws {
    loadRam(location: 0x0000, data:[0xf8])
    loadRam(location: 0x43f7, data:[0xe9,0xaf])
    z80.af().ld(value: 0x0098)
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
    z80.SP = 0x43f7
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf8)
    XCTAssert(z80.af().value() == 0x0098)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xafe9)
    XCTAssert(z80.SP == 0x43f9)
    }

    func testf9() throws {
    loadRam(location: 0x0000, data:[0xf9])
    z80.af().ld(value: 0x0000)
    z80.bc().ld(value: 0x0000)
    z80.de().ld(value: 0x0000)
    z80.hl().ld(value: 0xce32)
    z80.AF2 = 0
    z80.BC2 = 0
    z80.DE2 = 0
    z80.HL2 = 0
    z80.ix().ld(value: 0x0000)
    z80.iy().ld(value: 0x0000)
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xf9)
    XCTAssert(z80.af().value() == 0x0000)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0xce32)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0xce32)
    }

    func testfa_1() throws {
    loadRam(location: 0x0000, data:[0xfa,0x1b,0xe1])
    z80.af().ld(value: 0x0087)
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
    z80.opCode(byte: 0xfa)
    XCTAssert(z80.af().value() == 0x0087)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0xe11b)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfa_2() throws {
    loadRam(location: 0x0000, data:[0xfa,0x1b,0xe1])
    z80.af().ld(value: 0x0007)
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
    z80.opCode(byte: 0xfa)
    XCTAssert(z80.af().value() == 0x0007)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfb() throws {
    loadRam(location: 0x0000, data:[0xfb])
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
    z80.PC = 0x0000
    z80.SP = 0x0000
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfb)
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
    XCTAssert(z80.PC == 0x1)
    XCTAssert(z80.SP == 0x0000)
    }

    func testfc_1() throws {
    loadRam(location: 0x0000, data:[0xfc,0x61,0x9c])
    z80.af().ld(value: 0x008e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfc)
    XCTAssert(z80.af().value() == 0x008e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x9c61)
    XCTAssert(z80.SP == 0x5696)
    }

    func testfc_2() throws {
    loadRam(location: 0x0000, data:[0xfc,0x61,0x9c])
    z80.af().ld(value: 0x000e)
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
    z80.SP = 0x5698
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xfc)
    XCTAssert(z80.af().value() == 0x000e)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x3)
    XCTAssert(z80.SP == 0x5698)
    }

    func testfe() throws {
    loadRam(location: 0x0000, data:[0xfe,0x82])
    z80.af().ld(value: 0x6900)
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
    z80.opCode(byte: 0xfe)
    XCTAssert(z80.af().value() == 0x6987)
    XCTAssert(z80.bc().value() == 0x0000)
    XCTAssert(z80.de().value() == 0x0000)
    XCTAssert(z80.hl().value() == 0x0000)
    XCTAssert(z80.af2().value() == 0x0000)
    XCTAssert(z80.bc2().value() == 0x0000)
    XCTAssert(z80.de2().value() == 0x0000)
    XCTAssert(z80.hl2().value() == 0x0000)
    XCTAssert(z80.ix().value() == 0x0000)
    XCTAssert(z80.iy().value() == 0x0000)
    XCTAssert(z80.PC == 0x2)
    XCTAssert(z80.SP == 0x0000)
    }

    func testff() throws {
    loadRam(location: 0x6d33, data:[0xff])
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
    z80.PC = 0x6d33
    z80.SP = 0x5507
    z80.MEMPTR = 0x0000
    z80.opCode(byte: 0xff)
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
    XCTAssert(z80.PC == 0x38)
    XCTAssert(z80.SP == 0x5505)
    }

}
