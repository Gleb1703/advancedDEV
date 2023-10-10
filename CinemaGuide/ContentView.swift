import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("Фильмы", systemImage: "film.fill")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "person.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Настройки", systemImage: "gear")
                }
        }
    }
}
