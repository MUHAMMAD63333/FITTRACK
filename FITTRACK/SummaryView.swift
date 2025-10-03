import SwiftUI

struct SummaryView: View {
    @AppStorage("goal_steps") var goalSteps = 10000
    @AppStorage("goal_calories") var goalCalories = 500
    @AppStorage("goal_minutes") var goalMinutes = 30

    var body: some View {
        VStack(spacing: 12) {
            Text("Summary")
                .font(.largeTitle)
                .padding(.bottom, 8)

            Text("Steps goal: \(goalSteps)")
            Text("Calories goal: \(goalCalories)")
            Text("Workout goal: \(goalMinutes) min")
        }
        .padding()
    }
}
