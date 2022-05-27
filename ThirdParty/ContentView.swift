import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ExampleLink(destination: ChartsView())
                ExampleLink(destination: WebImageView())
            }
            .listStyle(.plain)
            .navigationTitle("Third Party Examples")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    struct ExampleLink<Destination: View>: View {
        let destination: Destination
        var body: some View {
            NavigationLink(destination: destination) {
                Text(String("\(Destination.self)"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
