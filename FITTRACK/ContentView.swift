import SwiftUI

// Root
struct ContentView: View {
    var body: some View {
        NavigationStack {
            LoginView()
        }
    }
}

// MARK: - Login
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
                .padding(.horizontal)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Button {
                goHome = true
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }

            NavigationLink("Create an account", destination: SignUpView())
                .padding(.top, 4)

            NavigationLink("", destination: DashboardView(), isActive: $goHome)
                .hidden()
        }
    }
}
