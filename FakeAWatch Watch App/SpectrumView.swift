import SwiftUI

struct SpectrumView: View {
    @EnvironmentObject var settings: FakeAChipData
    var body: some View {
        VStack{
            SpectrumEmulationView(computer: settings.currentComputerInstance as! Speccy, host: settings.host)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Sizing.instance.size = UIScreen.main.bounds.size
//        return SpectrumView().environmentObject(mockData)
//    }
//}
