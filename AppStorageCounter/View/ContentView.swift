import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CounterView()
                .tabItem {
                    Image(systemName: "plusminus")
                    Text("Counter")
                }
            PickerView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Picker")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
