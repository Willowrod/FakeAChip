//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    let ram = Speccy()
    var body: some View {
        VStack{
            MainHeader()
            Spacer()
            Text("Viewed on \(settings.host.rawValue)")
            Group {
                switch settings.environment {
                case SystemEnvironment.Emulation:
                SpectrumEmulationView(ram: ram)
                case SystemEnvironment.Disassembly:
                SpectrumDisassemblyView(ram: ram)
                case SystemEnvironment.Code:
                SpectrumCodeView(ram: ram)
                
                }
            }
            
            Spacer()
            
            Text("Running in  \(settings.environment.rawValue) mode").padding(30)
        }
        .onAppear(){
            ram.process()
        }
    }
}

struct SpectrumEmulationView: View {
    let ram: Speccy
    var body: some View {
        VStack{
            UIImage.init(bitmap: ram.screenImage).map({Image(uiImage: $0)})?.resizable().frame(width: 800, height: 600, alignment: .center)
        }
        }
    }

struct SpectrumDisassemblyView: View {
    let ram: Speccy
    var body: some View {
        VStack{
            UIImage.init(bitmap: ram.screenImage).map({Image(uiImage: $0)})?.resizable().frame(width: 400, height: 300, alignment: .center)
        }
        }
    }

struct SpectrumCodeView: View {
    let ram: Speccy
    var body: some View {
        VStack{
            UIImage.init(bitmap: ram.screenImage).map({Image(uiImage: $0)})?.resizable().frame(width: 200, height: 150, alignment: .center)
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SpectrumView()
    }
}
