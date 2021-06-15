//
//  ZXTapeLoader.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/06/2021.
//

import SwiftUI

struct ZXTapeLoaderView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    let computer: CPU
    var body: some View {
        VStack{
            Text("ZX Spectrum Tape Loader").padding(20)
            tapePlayerData.currentlyLoadedTape.map( {Text("Currently Loaded: \($0)")} ).padding(20)
            Button("Search"){
                hitDL()}
            Spacer()
            Button("Close"){
                tapePlayerData.isShowingTapeSelector = false}
        }
    }
    
    func hitDL(){
        computer.download()
    }
}

struct ZXTapeLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZXTapeLoaderView(tapePlayerData: TapePlayerData(), computer: Speccy())
    }
}
