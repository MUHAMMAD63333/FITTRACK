import SwiftUI

struct GoalsView: View {
    @AppStorage("goal_steps") private var goalSteps: Int = 10000
    @AppStorage("goal_calories") private var goalCalories: Int = 500
    @AppStorage("goal_minutes") private var goalMinutes: Int = 30

    @State private var tmpSteps = "10000"
    @State private var tmpCalories = "500"
    @State private var tmpMinutes = "30"

    var body: some View {
        Form {
            Section(header: Text("Goals")) {
                TextField("Steps goal", text: $tmpSteps)
                    .keyboardType(.numberPad)
                TextField("Calories goal", text: $tmpCalories)
                    .keyboardType(.numberPad)
                TextField("Workout minutes goal", text: $tmpMinutes)
                    .keyboardType(.numberPad)
            }

            Button("Save Goals") {
                goalSteps = Int(tmpSteps) ?? goalSteps
                goalCalories = Int(tmpCalories) ?? goalCalories
                goalMinutes = Int(tmpMinutes) ?? goalMinutes
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .navigationTitle("Goals")
    }
}
