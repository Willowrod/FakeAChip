//
//  DisassemblerValueSection.swift
//  DisassemblerValueSection
//
//  Created by Mike Hall on 15/08/2021.
//

import SwiftUI

struct DisassemblerValueSection: View {
    @ObservedObject var section: DisassemblySectionModel
    var body: some View {
        let myVal = section.valueOutput()
        print (myVal)
        return Text(myVal)
 //           .fixedSize(horizontal: false, vertical: true)
    }
}

//struct DisassemblerValueSection_Previews: PreviewProvider {
//    static var previews: some View {
//        DisassemblerValueSection()
//    }
//}
