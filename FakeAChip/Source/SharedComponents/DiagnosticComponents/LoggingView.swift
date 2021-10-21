//
//  LoggingView.swift
//  LoggingView
//
//  Created by Mike Hall on 13/10/2021.
//

import SwiftUI

struct LoggingView: View {
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        VStack{
            ForEach(settings.diagnosticData.logs, id: \.self){log in
                Text(log)
            }
        }
    }
}

struct LoggingView_Previews: PreviewProvider {
    static var previews: some View {
        LoggingView()
    }
}
