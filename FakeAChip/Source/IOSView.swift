//
//  ContentView.swift
//  Shared
//
//  Created by Mike Hall on 11/03/2021.
//

import SwiftUI

struct IOSView: View {
    let ram = Speccy()
    var body: some View {
        VStack{
            Text("The Stack")

        Image(uiImage: UIImage.init(bitmap: ram.screenImage)!)
        }
    }
}

struct IOSView_Previews: PreviewProvider {
    static var previews: some View {
        SpectrumView()
    }
}
