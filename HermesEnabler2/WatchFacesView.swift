import SwiftUI

struct WatchFacesView: View {
    let model: ContentModel

    var body: some View {
        List {
            Section {
                Toggle("Hermès Faces", isOn: Binding(
                    get: { model.hermesEnabled },
                    set: { model.perform(.hermes($0)) }
                ))
            } footer: {
                Text("Restart Carousel after changing the Hermès face capability. Ultra Faces and other MobileGestalt tweaks are intentionally not exposed in this fork.")
            }
        }
        .navigationTitle("Hermès Faces")
    }
}
