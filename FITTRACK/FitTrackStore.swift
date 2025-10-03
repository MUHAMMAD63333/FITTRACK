import SwiftUI

final class FitTrackStore: ObservableObject {
    // Goals
    @Published var stepGoal = 10_000
    @Published var calorieGoal = 500
    @Published var workoutMinutesGoal = 30

    // Today’s values (start with mock numbers)
    @Published var steps = 3_500
    @Published var calories = 220
    @Published var workoutMinutes = 20
}
