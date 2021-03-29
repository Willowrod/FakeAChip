//
//  ZXKeyboard.swift
//  FakeAChip
//
//  Created by Mike Hall on 22/03/2021.
//

import SwiftUI

struct ZXKeyboard: View {
    @EnvironmentObject var settings: FakeAChipData
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

    var body: some View {
        VStack{
            HStack{
                ForEach(bank4.indices, id: \.self){ key in
                    HStack{
                        Spacer()
                        Button(bank4[key]){}
                        .pressAction(onPress: {pressKey(bank: 4, bit: key, pressed: true)}, onRelease: {pressKey(bank: 4, bit: key, pressed: false)})
                            .frame(width: keyWidth, height: keyHeight, alignment: .center)
                            .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                ForEach(bank3.indices.reversed(), id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank3[key]){}
                        .pressAction(onPress: {pressKey(bank: 3, bit: key, pressed: true)}, onRelease: {pressKey(bank: 3, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                
            }
            .padding(2)
            
            HStack{
                
                ForEach(bank5.indices, id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank5[key]){}
                        .pressAction(onPress: {pressKey(bank: 5, bit: key, pressed: true)}, onRelease: {pressKey(bank: 5, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                ForEach(bank2.indices.reversed(), id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank2[key]){}
                        .pressAction(onPress: {pressKey(bank: 2, bit: key, pressed: true)}, onRelease: {pressKey(bank: 2, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                
            }
            .padding(2)
            
            HStack{
                ForEach(bank6.indices, id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank6[key]){}
                        .pressAction(onPress: {pressKey(bank: 6, bit: key, pressed: true)}, onRelease: {pressKey(bank: 6, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                ForEach(bank1.indices.reversed(), id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank1[key]){}
                        .pressAction(onPress: {pressKey(bank: 1, bit: key, pressed: true)}, onRelease: {pressKey(bank: 1, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                
            }
            .padding(2)
            
            HStack{
                ForEach(bank7.indices, id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank7[key]){}
                        .pressAction(onPress: {pressKey(bank: 7, bit: key, pressed: true)}, onRelease: {pressKey(bank: 7, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                ForEach(bank0.indices.reversed(), id: \.self){ key in
                    HStack{
                        Spacer()
                    Button(bank0[key]){}
                        .pressAction(onPress: {pressKey(bank: 0, bit: key, pressed: true)}, onRelease: {pressKey(bank: 0, bit: key, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                    Spacer()
                    }
                }
                
            }
            .padding(2)
            
            HStack{
                Button("⏫"){}
                    .pressAction(onPress: {pressStick(bit: 4, pressed: true)}, onRelease: {pressStick(bit: 4, pressed: false)})
                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                    .border(Color.blue, width: 1)
                
                    Button("◀️"){}
                        .pressAction(onPress: {pressStick(bit: 0, pressed: true)}, onRelease: {pressStick(bit: 0, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                 
    
                    Button("▶️"){}
                        .pressAction(onPress: {pressStick(bit: 1, pressed: true)}, onRelease: {pressStick(bit: 1, pressed: false)})
                    .frame(width: keyWidth, height: keyHeight, alignment: .center)
                        .border(Color.blue, width: 1)
                 
            Spacer()
            VStack{
                Button("🔼"){}
                    .pressAction(onPress: {pressStick(bit: 2, pressed: true)}, onRelease: {pressStick(bit: 2, pressed: false)})
                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                    .border(Color.blue, width: 1)
                    .padding(10)
           

                Button("🔽"){}
                    .pressAction(onPress: {pressStick(bit: 3, pressed: true)}, onRelease: {pressStick(bit: 3, pressed: false)})
                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                    .border(Color.blue, width: 1)
                    .padding(10)
           
                }
                
                Button("⏫"){}
                    .pressAction(onPress: {pressStick(bit: 4, pressed: true)}, onRelease: {pressStick(bit: 4, pressed: false)})
                .frame(width: keyWidth, height: keyHeight, alignment: .center)
                    .border(Color.blue, width: 1)
                
            }
            .padding(20)
                
        }
        }
    
    func pressKey(bank: Int, bit: Int, pressed: Bool) {
        settings.keyboardInteraction(bank: bank, bit: bit, pressed: pressed)
    }

func pressStick(bit: Int, pressed: Bool) {
    settings.joyStickInteraction(key: bit, pressed: pressed)
}

}

struct ZXKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        ZXKeyboard(keyWidth: 60, keyHeight: 40)
    }
}
