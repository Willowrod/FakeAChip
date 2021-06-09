//
//  ZXTapeLoader.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/06/2021.
//

import SwiftUI

struct ZXTapeLoaderView: View {
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        VStack{
            Text("ZX Spectrum Tape Loader").padding(20)
            settings.currentlyLoadedTape.map( {Text("Currently Loaded: \($0)")} ).padding(20)
            Spacer()
        }
    }
}

struct ZXTapeLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZXTapeLoaderView()
    }
}
