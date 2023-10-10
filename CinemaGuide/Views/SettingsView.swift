import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var selectedOption = 0
    @State private var sliderValue = 50.0

    var body: some View {
        Form {
            Section(header: Text("Уведомления")) {
                Toggle("Включить уведомления", isOn: $notificationsEnabled)
            }

            Section(header: Text("Выбор опции")) {
                Picker("Выберите опцию", selection: $selectedOption) {
                    Text("Опция 1").tag(0)
                    Text("Опция 2").tag(1)
                    Text("Опция 3").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
            }

            Section(header: Text("Настройка значения")) {
                Slider(value: $sliderValue, in: 0...100, step: 1)
                Text("Значение: \(Int(sliderValue))")
            }
        }
        .navigationTitle("Настройки")
    }
}
