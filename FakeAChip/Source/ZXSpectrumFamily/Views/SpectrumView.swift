//
//  ContentView.swift
//  FakeAChip
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
   // @ObservedObject var disassembly = DisassemblyModel()
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
                    SpectrumDisassemblyView(disassembly: settings.disassembly, computer: computer as! Speccy)
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
                    ZXKeyboard(keyWidth: Sizing.instance.width() / 11, keyHeight: Sizing.instance.width() / 16)
                case .Mac:
                    Spacer()
            }
            }
        }
        }
    }

struct SpectrumDisassemblyView: View {
    @ObservedObject var disassembly: DisassemblyModel
    let computer: Speccy
    var body: some View {
        VStack{
            HStack{
            SpectrumScreen(screenWidth: Sizing.instance.size.width / 2)//, screen: computer.screenImage)
            
            RegisterSetView() //(registers: pairs)
            }
            DisassemblyList(disassembly: disassembly, computer: computer)
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
