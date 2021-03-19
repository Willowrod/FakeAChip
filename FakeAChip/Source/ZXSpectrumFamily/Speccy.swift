//
//  Speccy.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation

class Speccy: CPU {
    
    static var instance = Speccy()
    
    
    override init() {
        super.init()
        loadZ80(z80Snap: "middleoflakecheat")
        if ram.count > 6911 {
            screenImage.setAttributes(bytes: ram[6144...6911], flashing: false)
            screenImage.blit(bytes: ram[0...6143])
        } else {
            print ("Ram not populated")
        }
    }
    
    var ram: [UInt8] = []
    var screenImage = ZXBitmap(width: 256, height: 192, color: .blue)
    
    var AF = RegisterPair("AF", highValue: 0x00, lowValue: 0x00, id: 0)
    var BC = RegisterPair("BC", highValue: 0x00, lowValue: 0x00, id: 1)
    var DE = RegisterPair("DE", highValue: 0x00, lowValue: 0x00, id: 2)
    var HL = RegisterPair("HL", highValue: 0x00, lowValue: 0x00, id: 3)
    var IX = RegisterPair("IX", highValue: 0x00, lowValue: 0x00, id: 4)
    var IY = RegisterPair("IY", highValue: 0x00, lowValue: 0x00, id: 5)
    
    func loadZ80(z80Snap: String, path: String? = nil){
        let snapShot = Z80Format(fileName: z80Snap, path: path)
        let banks = snapShot.retrieveRam()
        if (banks.count > 0){
            if banks.count == 1{
                // ram = Array(repeating: 0x00, count: 0x4000)
                ram.removeAll()
                banks[0].forEach{ byte in
                    ram.append(byte)
                }
            }
        }
    }
    
    func process() {
        DispatchQueue.background(background: {
            self.countOutTime()
        }, completion:{
            // when background job finished, do something in main thread
        })
    }
    
    func countOutTime(){
        var count = 0
        while count >= 0 {
            count += 1
       //     if count % 10 == 0 {
                update()
             //   print ("AF value = \(AF.value())")
       //     }
            if count % 100000 == 0 {
                let pairs = [AF.registerPair, BC.registerPair]//, DE.registerPair, HL.registerPair, IX.registerPair, IY.registerPair]
                DispatchQueue.main.sync {
                    data?.registerPairs = RegisterSetModel(registerPairs: pairs)
                }
                
            }
        }
    }
    
    func update(){
        AF.inc()
        if AF.value() == 0x00 {
            BC.inc()
            if BC.value() == 0x00 {
                DE.inc()
                if DE.value() == 0x00 {
                    HL.inc()
                    if HL.value() == 0x00 {
                        IX.inc()
                        if IX.value() == 0x00 {
                            IY.inc()
                        }
                    }
                }
            }
        }
    }
}
