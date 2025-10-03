import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        Form {
            Section("Create Account") {
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $password)
            }

            Button("Sign Up") {
                // TODO: implement
            }
        }
        .navigationTitle("Sign Up")
    }
}

#Preview {
    NavigationStack { SignUpView() }
}
