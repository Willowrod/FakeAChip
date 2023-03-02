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
    @Binding var showTapePlayer: Bool
    let computer: CPU
    var body: some View {
        ViewThatFits {
            TapePlayerWide(tapePlayerData: tapePlayerData, showTapePlayer: $showTapePlayer, computer: computer)
            TapePlayerThin(tapePlayerData: tapePlayerData, showTapePlayer: $showTapePlayer, computer: computer)
        }
    }


}

struct TapePlayerWide: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    @Binding var showTapePlayer: Bool
    let computer: CPU
    var body: some View {
        HStack {
            TapeBlockView(tapePlayerData: tapePlayerData)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            TapeControlsView(tapePlayerData: tapePlayerData, computer: computer, showTapePlayer: $showTapePlayer)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
    }
}

struct TapePlayerThin: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    @Binding var showTapePlayer: Bool
    let computer: CPU
    var body: some View {
        VStack {
            TapeBlockView(tapePlayerData: tapePlayerData)
            Spacer().frame(minWidth: 20, maxWidth: 40)
            TapeControlsView(tapePlayerData: tapePlayerData, computer: computer, showTapePlayer: $showTapePlayer)
        }
        .frame(minWidth: 300, idealWidth: 300, maxWidth: Sizing.instance.actualWidth(), minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
    }
}

struct TapeBlockView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    var body: some View {
        HStack {
            tapePlayerData.currentlyLoadedTape.map( {Text("Currently Loaded: \($0)")} ).padding(20)
            Text("Tape Block: \(tapePlayerData.blockName)")
        }
    }
}


struct TapeControlsView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    let computer: CPU
    @Binding var showTapePlayer: Bool
    var body: some View {
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
                            print("Eject Tape")
                            eject()
                        }
                    } else {
            Button("⏏️"){
                eject()
            }
 //           .foregroundColor(fetchColourForButtonState(state: .Empty))
                    }
        }

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
        computer.pause()
        showTapePlayer = true
    }
}

struct TapePlayerView_Previews: PreviewProvider {
    @State static var showTapePlayer: Bool = true
    static var previews: some View {
        TapePlayerView(tapePlayerData: TapePlayerData(), showTapePlayer: $showTapePlayer, computer: Speccy())
    }
}
