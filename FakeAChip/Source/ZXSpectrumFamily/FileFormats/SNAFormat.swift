//
//  SNAFormat.swift
//  inSpeccytor
//
//  Created by Mike Hall on 12/01/2021.
//

import UIKit

class SNAFormat: BaseFileFormat {
    var snaData: [UInt8] = []

    init(data: [UInt8]){
        super.init()
        snaData = data
        process()
    }
    
    init(data: String?){
        super.init()
        guard let dataString = data else{
            importSuccessful = false
            return
        }
        
        importDataFromString(data: dataString)
        process()
        registers.shouldReturn = true
    }
    
    
    
    init(fileName: String){
        super.init()
        if let filePath = Bundle.main.path(forResource: fileName, ofType: "sna"){
            print("File found - \(filePath)")
            let contents = NSData(contentsOfFile: filePath)
            let data = contents! as Data
            let dataString = data.hexString
            if let dataString = dataString{
            importDataFromString(data: dataString)
            }
            process()
        } else {
            print("file not found")
        }
    }
    
    func process(){
        sortHeaderData()
        ramBanks = []
        ramBanks.append(Array(snaData[27...]))
        let stackStart = registers.registerSP &- 0x4000
        registers.registerPC = registers.registerPair(l: ramBanks[0][Int(stackStart)], h: ramBanks[0][Int(stackStart)+1])//Int(stackStart.intValue)
        importSuccessful = true
    }
    
    func importDataFromString(data: String){
            data.splitToBytes(separator: " ").forEach {byte in
                snaData.append(UInt8(byte, radix: 16) ?? 0x00)
            }
    }
    
    func sortHeaderData(){
        
        /*
            Standard 48k header
            0        1      byte   I
            1        8      word   HL',DE',BC',AF'
            9        10     word   HL,DE,BC,IY,IX
            19       1      byte   Interrupt (bit 2 contains IFF2, 1=EI/0=DI)
            20       1      byte   R
            21       4      words  AF,SP
            25       1      byte   IntMode (0=IM0/1=IM1/2=IM2)
            26       1      byte   BorderColor (0..7, not used by Spectrum 1.7)
            27       49152  bytes  RAM dump 16384..65535
         */
        
        registers.registerI = snaData[0]
        registers.swap.registerL = snaData[1]
        registers.swap.registerH = snaData[2]
        registers.swap.registerE = snaData[3]
        registers.swap.registerD = snaData[4]
        registers.swap.registerC = snaData[5]
        registers.swap.registerB = snaData[6]
        registers.swap.registerF = snaData[7]
        registers.swap.registerA = snaData[8]
        registers.primary.registerL = snaData[9]
        registers.primary.registerH = snaData[10]
        registers.primary.registerE = snaData[11]
        registers.primary.registerD = snaData[12]
        registers.primary.registerC = snaData[13]
        registers.primary.registerB = snaData[14]
        registers.registerIY = registers.registerPair(l:snaData[15], h:snaData[16])
        registers.registerIX = registers.registerPair(l:snaData[17], h:snaData[18])
        let interuptFlag = snaData[19]
        registers.interuptEnabled = interuptFlag.isSet(bit: 2)
        registers.registerR = snaData[20]
        registers.primary.registerF = snaData[21]
        registers.primary.registerA = snaData[22]
        registers.registerSP = registers.registerPair(l:snaData[23], h:snaData[24])
        registers.interuptMode = Int(snaData[25])
        registers.borderColour = snaData[26]
        registers.shouldReturn = true
        
    }
        
}
