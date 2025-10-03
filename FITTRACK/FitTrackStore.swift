import SwiftUI

final class FitTrackStore: ObservableObject {
    // Persisted goals
    @AppStorage("goal_steps") var goalSteps: Int = 10_000
    @AppStorage("goal_cal")   var goalCalories: Int = 500
    @AppStorage("goal_min")   var goalMinutes: Int = 30

    // Today’s progress (in-memory demo)
    @Published var stepsToday: Int = 3_500
    @Published var caloriesToday: Int = 220
    @Published var minutesToday: Int = 20

    // Convenience
    var remainingSteps: Int { max(goalSteps - stepsToday, 0) }
    var remainingCalories: Int { max(goalCalories - caloriesToday, 0) }
    var remainingMinutes: Int { max(goalMinutes - minutesToday, 0) }
}
