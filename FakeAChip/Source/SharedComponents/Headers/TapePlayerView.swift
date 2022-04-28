//
//  TapePlayerView.swift
//  FakeAChip
//
//  Created by Mike Hall on 20/06/2021.
//

import SwiftUI
import ZXLoaderSDK

struct TapePlayerView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    let computer: CPU
    var body: some View {
        HStack {
            Menu("Load Snapshot"){
                
                ForEach(tapePlayerData.listOfGames(extensions: ["sna", "z80", "zip"]), id: \.self){ item in
                    if item.contains("128") {
                        Button("128K: \(item)"){
                            loadData(item)
                        }
                    } else {
                        Button(item){
                            loadData(item)
                        }
                    }
                }
            }
            .padding(20)
            
            Spacer()
            
            Text("Tape Block: \(tapePlayerData.blockName)")
            
            Spacer()
            
            Text("Tape Player:")
            
            HStack {
                    if buttonSelected(state: .Rewound) {
                        Text("🟥")
                    } else {
                Button("⏪"){
                    print("Rewind Tape")
                    tapePlayerData.tape?.rewind()
                }
                .foregroundColor(fetchColourForButtonState(state: .Rewound))
                    }
                //.tint(fetchColourForButtonState(state: .Rewound))
                if buttonSelected(state: .Playing) {
                    Button("➡"){
                        tapePlayerData.tapePlayerState = .Paused
                        eject()
                    }
                } else {
                Button("▶️"){
                    print("Play Tape")
                    tapePlayerData.tapePlayerState = .Playing
                }
                .foregroundColor(fetchColourForButtonState(state: .Playing))
                }
                Button("⏩"){
                    print("Fast Forward Tape")
                    tapePlayerData.tape?.fastForward()
                }
                .foregroundColor(fetchColourForButtonState(state: .Ended))
                if buttonSelected(state: .Paused) {
                    Button("‼️"){
                        tapePlayerData.tapePlayerState = .Playing
                    }
                } else {
                Button("⏸"){
                    print("Pause Tape")
                    tapePlayerData.tapePlayerState = .Paused
                }
                    //     .foregroundColor(fetchColourForButtonState(state: .Paused))
                }
                
                        if buttonSelected(state: .Empty) {
                            Button("⏏"){
                                eject()
                            }
                        } else {
                Button("⏏️"){
                    eject()
                }
     //           .foregroundColor(fetchColourForButtonState(state: .Empty))
                        }
            }
            .padding([.trailing], 20)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .leading)
    }
    
    func fetchColourForButtonState(state: TapePlayerState) -> Color{
        if state == tapePlayerData.tapePlayerState {
            return .red
        }
        return .blue
    }
    
    func buttonSelected(state: TapePlayerState) -> Bool{
        return state == tapePlayerData.tapePlayerState
    }
    
    func eject(){
        tapePlayerData.isShowingTapeSelector = true
    }
    
    func loadData(_ file: String){
        computer.load(file: file)
    }
}

struct TapePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TapePlayerView(tapePlayerData: TapePlayerData(), computer: Speccy())
    }
}
