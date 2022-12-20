//
//  SettingsSheet.swift
//  FakeAChip
//
//  Created by Mike Hall on 06/04/2021.
//

import SwiftUI

struct SettingsSheet: View {
    @ObservedObject var settings: HeaderData
    let dismiss: () -> Void
    var body: some View {
        VStack{
            Button("Press to dismiss") {
                dismiss()
            }
            
            Spacer()
            Text("Current System")
                Menu(settings.emulatedSystem.rawValue){
                    ForEach(ComputerType.allCases, id: \.self){make in
                        Text(make.rawValue)
                            ForEach(make.associatedModels(), id: \.self){model in
                                Button(model.rawValue){
                                    settings.changeEnvironment(model: model)
                                    dismiss()
                                }
                            
                            
                            
                        }
                    }
            }
            Spacer()
            VStack{
            HStack{
                Spacer()
                Text("Pre processor debugging:")
                Toggle("", isOn: $settings.debugPreProcessing).labelsHidden()
                Spacer()
            }
            HStack{
                Spacer()
                Text("Post processor debugging:")
                Toggle("", isOn: $settings.debugPostProcessor).labelsHidden()
                Spacer()
            }
            HStack{
                Spacer()
                Text("Memory debugging:")
                Toggle("", isOn: $settings.debugMemoryData).labelsHidden()
                Spacer()
            }
            HStack{
                Spacer()
                Text("Miscellaneous debugging:")
                Toggle("", isOn: $settings.debugMiscellaneousData).labelsHidden()
                Spacer()
            }
            HStack{
                Spacer()
                Text("Opcode debugging:")
                Toggle("", isOn: $settings.debugOpcodes).labelsHidden()
                Spacer()
            }
            }
            Spacer()
        }
    }
}

//struct SettingsSheet_Previews: PreviewProvider {
//
//    static var previews: some View {
//        SettingsSheet(settings: HeaderData()){}
//    }
//}
