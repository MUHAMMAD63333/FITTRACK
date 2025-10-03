import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            GoalsView()
                .tabItem { Label("Goals", systemImage: "target") }
            ProgressViewScreen()
                .tabItem { Label("Progress", systemImage: "chart.bar.fill") }
            SummaryView()
                .tabItem { Label("Summary", systemImage: "list.bullet.rectangle") }
        }
    }
}
