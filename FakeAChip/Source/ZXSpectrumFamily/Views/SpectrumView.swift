//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    let ram = Speccy.instance
    var body: some View {
        
        GeometryReader { geometry in
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
            ram.addSettings(settings)
            ram.process()
        }
        }
    }
}

struct SpectrumEmulationView: View {
    let ram: Speccy
    var body: some View {
        VStack{
            SpectrumScreen(screenWidth: Sizing.instance.size.width, screen: ram.screenImage)
        }
        }
    }

struct SpectrumDisassemblyView: View {
    let ram: Speccy
    var body: some View {
        VStack{
          
            SpectrumScreen(screenWidth: Sizing.instance.size.width / 2, screen: ram.screenImage)
            
            RegisterSetView() //(registers: pairs)
        }
        }
    }

struct SpectrumCodeView: View {
    let ram: Speccy
    var body: some View {
        HStack{
            RegisterSetView() //(registers: pairs)
            
              SpectrumScreen(screenWidth: Sizing.instance.size.width / 4, screen: ram.screenImage)
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SpectrumView()
    }
}
