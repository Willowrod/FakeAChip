//
//  ZXTapeLoader.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/06/2021.
//

import SwiftUI
import ZXDB_SDK

struct ZXTapeLoaderView: View {
    @ObservedObject var tapePlayerData: TapePlayerData
    @State private var searchItem: String = ""
    @State private var foundItems: [SearchItem] = []
    var offset = 0
    let computer: CPU
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("Close"){
                    tapePlayerData.isShowingTapeSelector = false}
            }
            Text("ZX Spectrum Tape Loader").padding(20)
            tapePlayerData.currentlyLoadedTape.map( {Text("Currently Loaded: \($0)")} ).padding(20)
            
            TextField("Search For:", text: $searchItem)
            HStack{
            Button("Search"){
                hitDL()
            }
                Spacer()
                
                Button("Previous"){
                    hitPrev()
                }
                
                Button("Next"){
                    hitNext()
                }
            }
            ForEach(foundItems, id: \.self){model in
                VStack {
                    HStack{
                        Text(model.data.title ?? "Unknown")
                        Text(" - \(getPublisher(model: model))")
                    }
                    ForEach(getGoodFiles(model: model), id: \.self){file in
                        HStack {
//                            Button("Load \(getFileName(path: file.path))"){
//                                download(file.path!, forceLoad: true)
//                            }
                            Button("Insert Cassette"){
                                tapePlayerData.isShowingTapeSelector = false
                                download(file.path!, forceLoad: false)
                            }
                        }
                    }
                }
            }
        }
    }
    
    func hitDL(){
        ZXDB.shared.search(searchItem) { items in
            sortitems(items: items)
        }
    }
    
    func hitPrev(){
        ZXDB.shared.previous() { items in
            sortitems(items: items)
        }
    }
    
    func hitNext(){
        ZXDB.shared.next() { items in
            sortitems(items: items)
        }
    }
    
    func getFileName(path: String?) -> String {
        if let realPath = path {
            let split = realPath.split(separator: "/")
            if split.count > 0 {
                return split.last!.replacingOccurrences(of: ".tzx.zip", with: "")
            }
        }
        return "Unknown"
    }
    
    func getGoodFiles(model: SearchItem) -> [FileData] {
        if model.data.releases.count > 0 {
            if model.data.releases[0].files.count > 0 {
                return model.data.releases[0].files.filter({$0.format != nil && $0.format!.contains("TZX")})
            }
        }
        return []
    }
    
    func getPath (model: SearchItem) -> String{
        if model.data.releases.count > 0 {
            if model.data.releases[0].files.count > 0 {
                return model.data.releases[0].files[0].path ?? ""
            }
        }
        return ""
    }
    
    func getPublisher (model: SearchItem) -> String{
        if model.data.releases.count > 0 {
            if model.data.releases[0].publishers.count > 0 {
                return model.data.releases[0].publishers[0].name ?? "Unknown"
            }
        }
        return "Unknown"
    }
    
    func sortitems(items: [SearchItem]) {
        var myItems: [SearchItem] = []
        items.forEach{ item in
            if getGoodFiles(model: item).count > 0 {
                myItems.append(item)
            }
        }
        foundItems = myItems
    }
    
    func download(_ path: String, forceLoad: Bool) {
        if forceLoad {
            computer.startLoadingProcess()
        }
        if path.contains("/pub/sinclair") {
            computer.download(url: "https://archive.org/download/World_of_Spectrum_June_2017_Mirror/World%20of%20Spectrum%20June%202017%20Mirror.zip/World%20of%20Spectrum%20June%202017%20Mirror/sinclair\(path.replacingOccurrences(of: "/pub/sinclair", with: ""))")
        } else {
            computer.download(url: "https://spectrumcomputing.co.uk\(path)")
        }
        if forceLoad {
            tapePlayerData.tapePlayerState = .Playing
        } else {
            tapePlayerData.tapePlayerState = .Paused
        }
        tapePlayerData.isShowingTapeSelector = false
    }
}

struct ZXTapeLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZXTapeLoaderView(tapePlayerData: TapePlayerData(), computer: Speccy())
    }
}
