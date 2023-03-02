//
//  TypeSelector.swift
//  FakeAWatch Watch App
//
//  Created by Mike Hall on 02/03/2023.
//

import SwiftUI

struct TypeSelector: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
//        Menu(section.type.rawValue){
//            ForEach(DataType.allCases, id: \.self){type in
//                Button(type.rawValue){
//                    section.type = type
//                }
//            }
//        }

        Text("Type Selector")
    }
}
