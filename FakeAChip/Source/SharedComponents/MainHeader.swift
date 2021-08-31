//
//  MainHeader.swift
//  FakeAChip
//
//  Created by Mike Hall on 15/03/2021.
//

import SwiftUI

struct MainHeader: View {
    @ObservedObject var headerData: HeaderData
    @State private var shouldReboot: Bool = false
    let computer: CPU
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $headerData.environmentTag, label: Text("What are you doing with FakeAChip today?")) {
                    Text("Emulation").tag(0)
                    Text("Disassembly").tag(1)
                    Text("Coding").tag(2)
                }
                .padding(20)
                .pickerStyle(SegmentedPickerStyle())
                .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .leading)
                
                
                Spacer()
                HStack {
                    Button("▶️"){
                        computer.resume()
                    }
                    Button("⏸"){
                        computer.pause()
                    }
                    Button("➡️"){
                        computer.fast()
                    }
                }
                Spacer()
                HStack {
                    Button("⚙️"){
                        headerData.isShowingSettings.toggle()
                    }
                    Button("♻️"){
                        shouldReboot = true
                    }
                }
                Spacer()
                Text("FPS: \(headerData.debugModel.fps)")
                
                Spacer()
            }
            .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 50, alignment: .center)
            
//            Group {
//                switch headerData.environment {
//                case SystemEnvironment.Emulation:
//                    SpectrumEmulationView(computer: computer as! Speccy, host: settings.host)
//                case SystemEnvironment.Disassembly:
//                    SpectrumDisassemblyView(disassembly: settings.disassembly, computer: computer as! Speccy)
//                case SystemEnvironment.Code:
//                    SpectrumCodeView(computer: computer as! Speccy)
//                
//                }
//            }
            
            
//            TapePlayerView(tapePlayerData: headerData.tapePlayerData, computer: computer)
        }
        .frame(minWidth: 600, idealWidth: 600, maxWidth: .infinity, minHeight: 60, idealHeight: 60, maxHeight: 120, alignment: .center)
        
        .sheet(isPresented: $headerData.isShowingSettings) {
            SettingsSheet().environmentObject(headerData)
        }
        
        .sheet(isPresented: $headerData.tapePlayerData.isShowingTapeSelector) {
            ZXTapeLoaderView(tapePlayerData: headerData.tapePlayerData, computer: computer).environmentObject(headerData.tapePlayerData)
        }
        .alert(isPresented: $shouldReboot) {
            computer.pause()
            return Alert(title: Text("Reboot Emulator"), message: Text("Do you really want to reboot?"),
                         primaryButton: .destructive(Text("Yes please!")) {
                            computer.resume()
                            computer.reboot()
                         },
                         secondaryButton: .default(Text("Ah, no, sorry...")){
                            print("Not rebooting.")
                            computer.resume()
                         })
        }
        
    }
    
    func downloadAaargh() {
        computer.download()
    }
    
    func reboot(){
        
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainHeader(headerData: HeaderData(), computer: Speccy())
    }
}
