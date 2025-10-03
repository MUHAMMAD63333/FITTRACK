import SwiftUI

struct SummaryView: View {
    @EnvironmentObject var store: FitTrackStore
    var body: some View {
        VStack(spacing: 12) {
            Text("Summary Screen").font(.largeTitle).padding(.bottom, 8)
            Text("Steps: \(store.steps) / \(store.stepGoal)")
            Text("Calories burned: \(store.calories)")
            Text("Workout: \(store.workoutMinutes) min")
        }
        .padding()
    }
}
