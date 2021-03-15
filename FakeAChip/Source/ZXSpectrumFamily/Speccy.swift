//
//  Speccy.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import Foundation

class Speccy{
    
    init() {
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
            if count % 10000000 == 0 {
                print("Count reached \(count)")
            }
        }
    }
}
