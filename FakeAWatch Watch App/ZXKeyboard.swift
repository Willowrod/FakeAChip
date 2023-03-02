//
//  ZXKeyboard.swift
//  FakeAWatch Watch App
//
//  Created by Mike Hall on 02/03/2023.
//

import Foundation
import SwiftUI

struct ZXKeyboard: View {
    @EnvironmentObject var settings: FakeAChipData
    var symbolLocked: Bool = false
    @State var symButtonText = "SLock\nOFF"

    let keyWidth: CGFloat
    let keyHeight: CGFloat
    let bank0: [String] = ["SP", "SS", "M", "N", "B"]
    let bank1: [String] = ["EN", "L", "K", "J", "H"]
    let bank2: [String] = ["P", "O", "I", "U", "Y"]
    let bank3: [String] = ["0", "9", "8", "7", "6"]
    let bank4: [String] = ["1", "2", "3", "4", "5"]
    let bank5: [String] = ["Q", "W", "E", "R", "T"]
    let bank6: [String] = ["A", "S", "D", "F", "G"]
    let bank7: [String] = ["CS", "Z", "X", "C", "V"]


    var controller = Controller()

    var body: some View {
        return VStack{
            if settings.emulatorData.keyboardShowing {
                HStack{
                    ForEach(bank4.indices, id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank4[key]).font(.system(size: 8))
                                    .padding(0)
                            }
                                .pressAction(onPress: {pressKey(bank: 4, bit: key, pressed: true)}, onRelease: {pressKey(bank: 4, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                    ForEach(bank3.indices.reversed(), id: \.self){ key in
                        HStack{
                            Spacer()

                            Button{} label: {
                                Text(bank3[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 3, bit: key, pressed: true)}, onRelease: {pressKey(bank: 3, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                }
                .padding(2)
                HStack{
                    ForEach(bank5.indices, id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank5[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 5, bit: key, pressed: true)}, onRelease: {pressKey(bank: 5, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                    ForEach(bank2.indices.reversed(), id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank2[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 2, bit: key, pressed: true)}, onRelease: {pressKey(bank: 2, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                }
                .padding(2)
                HStack{
                    ForEach(bank6.indices, id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank6[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 6, bit: key, pressed: true)}, onRelease: {pressKey(bank: 6, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                    ForEach(bank1.indices.reversed(), id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank1[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 1, bit: key, pressed: true)}, onRelease: {pressKey(bank: 1, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                }
                .padding(2)
                HStack{
                    ForEach(bank7.indices, id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank7[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 7, bit: key, pressed: true)}, onRelease: {pressKey(bank: 7, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                    ForEach(bank0.indices.reversed(), id: \.self){ key in
                        HStack{
                            Spacer()
                            Button{} label: {
                                Text(bank0[key]).font(.system(size: 8))
                            }
                                .pressAction(onPress: {pressKey(bank: 0, bit: key, pressed: true)}, onRelease: {pressKey(bank: 0, bit: key, pressed: false)})
                                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                                .border(Color.blue, width: 1)
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                    }
                }
                .padding(2)
            } else {
                VStack{
                    Spacer()
                }
                .onDisappear(perform: {
                    controller.disconnect()
                })
                .onAppear(perform: {
                    controller.connect()
                    controller.handleLeftPad = settings.handleVirtualController
                    controller.handleAButton = settings.handleButtonAPressed
                })
            }
        }
    }

    func pressKey(bank: Int, bit: Int, pressed: Bool) {
        settings.keyboardInteraction(bank: bank, bit: bit, pressed: pressed)
    }

    func pressSymbolLock() {

    }

    func pressStick(bit: Int, pressed: Bool) {
        settings.joyStickInteraction(key: bit, pressed: pressed)
    }

}



struct KeyboardHousing: View {
    @EnvironmentObject var mockData: FakeAChipData
    let keyWidth: CGFloat
    let keyHeight: CGFloat
    var body: some View {
        VStack{
            ZXKeyboard(keyWidth: keyWidth, keyHeight: keyHeight)
                .environmentObject(mockData)
        }
    }
}

