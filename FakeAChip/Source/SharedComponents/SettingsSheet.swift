//
//  SettingsSheet.swift
//  FakeAChip
//
//  Created by Mike Hall on 06/04/2021.
//

import SwiftUI

struct SettingsSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        VStack{
            Button("Press to dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            HStack{
            Text("Current System")
                Menu(settings.emulatedSystem.rawValue){
                    ForEach(ComputerType.allCases, id: \.self){make in
                        Text(make.rawValue)
                        ForEach(ComputerType.allCases, id: \.self){make in
                            Text(make.rawValue)
                            ForEach(make.associatedModels(), id: \.self){model in
                                Button(model.rawValue){
                                    settings.changeEnvironment(model: model)
                                    presentationMode.wrappedValue.dismiss()
                                }
                            }
                            
                            
                            
                        }
                    }
                }
            }
        }
    }
}

struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
    }
}
