//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    let computer: CPU = Speccy.instance
    var body: some View {
        
        GeometryReader { geometry in
        VStack{
            MainHeader(computer: computer)
            Spacer()
            Group {
                switch settings.environment {
                case SystemEnvironment.Emulation:
                    SpectrumEmulationView(computer: computer as! Speccy)
                case SystemEnvironment.Disassembly:
                    SpectrumDisassemblyView(computer: computer as! Speccy)
                case SystemEnvironment.Code:
                    SpectrumCodeView(computer: computer as! Speccy)
                
                }
            }
            
            Spacer()
            
        }
        .onAppear(){
            settings.delegate = computer
            computer.addSettings(settings)
            computer.startProcessing()
        }
        }
    }
}

struct SpectrumEmulationView: View {
    let computer: Speccy
    @EnvironmentObject var settings: FakeAChipData

    var body: some View {
        VStack{
            SpectrumScreen(screenWidth: Sizing.instance.width())
            
            Group {
                switch settings.host {
                case .iOS:
            Spacer()
            ZXKeyboard()
                case .Mac:
                    Spacer()
            }
            }
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
