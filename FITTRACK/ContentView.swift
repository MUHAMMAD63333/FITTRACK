import SwiftUI

// MARK: - Root
struct ContentView: View {
    var body: some View {
        NavigationStack {
            LoginView()
        }
    }
}

// MARK: - Login Screen
struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var goHome = false

    var body: some View {
        VStack(spacing: 16) {
            Text("FitTrack")
                .font(.system(size: 36, weight: .bold))
                .padding(.top, 24)

            TextField("Username", text: $username)
                .textInputAutocapitalization(.never)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            Button {
                goHome = true
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }

            NavigationLink("Create an account", destination: SignUpView())
                .font(.footnote)
                .padding(.top, 8)
        }
        .padding(.horizontal)

        // Hidden Navigation to Dashboard
        .background(
            NavigationLink("", isActive: $goHome) {
                DashboardView()
            }
            .opacity(0)
        )
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
