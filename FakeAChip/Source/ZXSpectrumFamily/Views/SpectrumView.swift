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
    //let computer: CPU = Speccy.instance
    var body: some View {
   //     if #available(macCatalyst 15.0, *) {
            
//                  if #available(iOS 15.0, *) {
//            Self._printChanges()
//        }
      return GeometryReader { geometry in
        VStack{
            MainHeader(headerData: settings.headerData,computer: settings.currentComputerInstance)
            Spacer()
            Group {
                switch settings.headerData.environment {
                case SystemEnvironment.Emulation:
                    SpectrumEmulationView(computer: settings.currentComputerInstance as! Speccy, host: settings.host)
                case SystemEnvironment.Disassembly:
                    SpectrumDisassemblyView(disassembly: settings.disassembly, computer: settings.currentComputerInstance as! Speccy)
                case SystemEnvironment.Code:
                    SpectrumCodeView(computer: settings.currentComputerInstance as! Speccy)
                
                }
            }
            
            Spacer()
            
        }
//        .onAppear(){
//            settings.delegate = settings.currentComputerInstance
//            settings.currentComputerInstance.addSettings(settings)
//            settings.currentComputerInstance.startProcessing()
//        }
        }
    }
}

struct SpectrumEmulationView: View {
    let computer: Speccy
    let host: HostSystem
    
    @State private var orientation = UIDeviceOrientation.unknown
    var body: some View {
            
            Group {
                switch host {
                case .iOS:
            Spacer()
                    Group {
                        if orientation.isLandscape || orientation.isFlat {
                        ZStack{
                            VStack {
                    SpectrumScreen(screenWidth: Sizing.instance.widthforLandscape())
                                Spacer()
                            }
                            VStack {
                                Spacer()
                    ZXKeyboard(keyWidth: Sizing.instance.height() / 11, keyHeight: Sizing.instance.width() / 16)
                            }
                        }
                    } else {
                        
                            VStack{
                        SpectrumScreen(screenWidth: Sizing.instance.width())
                        ZXKeyboard(keyWidth: Sizing.instance.width() / 11, keyHeight: Sizing.instance.width() / 16)
                            }
                    }
                }
                .onRotate { newOrientation in
                    orientation = newOrientation
                }
       
                case .Mac:
                    SpectrumScreen(screenWidth: Sizing.instance.width())
                    Spacer()
            }
            }
        }
    }

struct SpectrumDisassemblyView: View {
    @ObservedObject var disassembly: DisassemblyModel
    @State private var showingSheet = false
    let computer: Speccy
    var body: some View {
        VStack{
            Button("Show Sheet") {
            showingSheet.toggle()
        }
            HStack{
            SpectrumScreen(screenWidth: Sizing.instance.size.width / 3)
            
            RegisterSetView()
            }
            DisassemblyList(disassembly: disassembly, computer: computer)
        }
        .sheet(isPresented: $showingSheet) {
            DisassemblySheet()
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
