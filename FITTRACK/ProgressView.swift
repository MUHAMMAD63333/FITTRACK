import SwiftUI

struct ProgressViewScreen: View {
    @EnvironmentObject var store: FitTrackStore
    var body: some View {
        VStack(spacing: 12) {
            Text("Progress Screen").font(.largeTitle).padding(.bottom, 8)
            Text("Steps: \(store.steps) / \(store.stepGoal)")
            Text("Calories: \(store.calories) / \(store.calorieGoal)")
            Text("Workout: \(store.workoutMinutes) / \(store.workoutMinutesGoal) min")
        }
        .padding()
    }
}
