//
//  TypeSelector.swift
//  FakeAChip
//
//  Created by Mike Hall on 31/03/2021.
//

import SwiftUI

struct TypeSelector: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        Menu(section.type.rawValue){
            ForEach(DataType.allCases, id: \.self){type in
                Button(type.rawValue){
                    section.type = type
                }
            }
        }
    }
}

//struct TypeSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        TypeSelector()
//    }
//}
