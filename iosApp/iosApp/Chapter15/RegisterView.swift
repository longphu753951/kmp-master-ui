//
//  RegisterView.swift
//  iosApp
//
//  Created by User on 24/11/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String
    @State var password: String
    @State var verifyPassword: String
    var body: some View {
        VStack {
            Text("Create an account")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding(.bottom, 30)
            TextField("Username", text: $username)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .padding(.horizontal)
            RequirementText(text: "A minimum of 4 characters").padding()
            SecureField("Password", text: $password)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .padding(.horizontal)
            VStack(alignment: .leading) {
                RequirementText(iconName: "lock.open", iconColor: Color.secondary, text: "A minimum of 8 characters", isStrikeThrough: true)
                RequirementText(iconName: "lock.open", iconColor: Color.secondary, text: "One uppercase letter", isStrikeThrough: true)
            }.padding()
                
            SecureField("Confirm password", text: $verifyPassword)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .padding(.horizontal)
            RequirementText(text: "Your confirm password should be the same as the password", isStrikeThrough: false)
            .padding()
            .padding(.bottom, 50)
            Button{
                
            } label:{
                Text("Sign up")
                    .font(.system(.body, design: .rounded))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
            }
            
            HStack {
                Text("Already have an account ?")
                    .font(.system(.body, design: .rounded))
                    .bold()
                
                Button {
                    
                } label: {
                    Text("Sign in")
                        .font(.system(.body, design: .rounded))
                        .bold()
                        .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                }
            }.padding(.top, 50)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RegisterView(username: "", password: "", verifyPassword: "")
}
