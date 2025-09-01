//
//  RegisterationView.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct RegisterationView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var fullname: String = ""
    @State var username: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack {
                
                Spacer()
                
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())


                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your full name", text: $fullname)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your username", text: $username)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                 
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
    }
}

#Preview {
    RegisterationView()
}
