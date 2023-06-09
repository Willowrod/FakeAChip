//
//  BaseTest.swift
//  inSpeccytorTests
//
//  Created by Mike Hall on 03/01/2021.
//

import XCTest

class BaseTest: XCTestCase {
    
    
    let z80 = RawZ80Processor()

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
        print ("AF: \(z80.af().hex())")
        print ("BC: \(z80.bc().hex())")
        print ("DE: \(z80.de().hex())")
        print ("HL: \(z80.hl().hex())")
        print ("AF2: \(z80.af2().hex())")
        print ("BC2: \(z80.bc2().hex())")
        print ("DE2: \(z80.de2().hex())")
        print ("HL2: \(z80.hl2().hex())")
        print ("IY: \(z80.iy().hex())")
        print ("IX: \(z80.ix().hex())")
        print ("PC: \(z80.PC.hex())")
        print ("SP: \(z80.SP.hex())")
        print ("F: \(Z80.F.value().bin())")
    }
    
    func loadRam(location: Int = 0, data:[UInt8]){
        var count = location
        for dat in data {
            z80.ldRam(location: count, value: dat)
            count += 1
        }
    }

    func loadJson(_ testID: String) -> [TestModel] {
       // let filename = getPath(forFile: "\(testID).json")
        print("Looking for file \(testID).json")
        if let filePath = Bundle.main.path(forResource: testID, ofType: "json") {
            print("Is it in \(filePath)?")
            do {
                guard let disassembly = FileManager.default.contents(atPath: filePath) else {
                    print("Failed to read data")
                    return []
                }
                let json = try JSONDecoder().decode([TestModel].self, from: disassembly) //JSONEncoder().encode(self)
                
                return json
            } catch {
                print("Something bad happened.... \(error.localizedDescription)")
            }
        }
        return []
    }

    func testRun(_ testID: String) {
        let models = loadJson(testID)
        models.forEach { model in


        }
    }

    
  
}
