//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    let computer = Speccy.instance
    var body: some View {
        
        GeometryReader { geometry in
        VStack{
            MainHeader()
            Spacer()
            Text("Viewed on \(settings.host.rawValue)")
            Group {
                switch settings.environment {
                case SystemEnvironment.Emulation:
                SpectrumEmulationView(computer: computer)
                case SystemEnvironment.Disassembly:
                    SpectrumDisassemblyView(computer: computer)
                case SystemEnvironment.Code:
                SpectrumCodeView(computer: computer)
                
                }
            }
            
            Spacer()
            
            Text("Running in  \(settings.environment.rawValue) mode").padding(30)
        }
        .onAppear(){
            computer.addSettings(settings)
            computer.startProcessing()
        }
        }
    }
}

struct SpectrumEmulationView: View {
    let computer: Speccy
    var body: some View {
        VStack{
            SpectrumScreen(screenWidth: Sizing.instance.size.width)//, screen: computer.screenImage)
        }
        }
    }

struct SpectrumDisassemblyView: View {
    let computer: Speccy
    var body: some View {
        VStack{
          
            SpectrumScreen(screenWidth: Sizing.instance.size.width / 2)//, screen: computer.screenImage)
            
            RegisterSetView() //(registers: pairs)
        }
        }
    }

struct SpectrumCodeView: View {
    let computer: Speccy
    var body: some View {
        HStack{
            RegisterSetView() //(registers: pairs)
            
              SpectrumScreen(screenWidth: Sizing.instance.size.width / 4)//, screen: computer.screenImage)
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SpectrumView()
    }
}
