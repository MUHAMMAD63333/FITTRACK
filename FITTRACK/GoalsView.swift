import SwiftUI

struct GoalsView: View {
    @EnvironmentObject var store: FitTrackStore
    var body: some View {
        VStack(spacing: 12) {
            Text("Goals Screen").font(.largeTitle).padding(.bottom, 8)
            Text("• Steps goal: \(store.stepGoal)")
            Text("• Calories goal: \(store.calorieGoal)")
            Text("• Workout goal: \(store.workoutMinutesGoal) min")
        }
        .padding()
    }
}
