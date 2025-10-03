import SwiftUI

@main
struct FITTRACKApp: App {
    @StateObject private var store = FitTrackStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
