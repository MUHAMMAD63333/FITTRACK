import SwiftUI

struct ProgressViewScreen: View {
    @AppStorage("goal_steps") var goalSteps = 10000

    let todaySteps = 3500

    var body: some View {
        VStack(spacing: 16) {
            Text("Progress")
                .font(.largeTitle)
                .padding(.bottom, 8)

            Text("Today: \(todaySteps) / \(goalSteps) steps")
        }
        .padding()
    }
}
