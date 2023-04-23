//
//  ContentView.swift
//  TrainingDay
//
//  Created by user230964 on 4/22/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
                VStack {
                    Group {
                        TextField("Email", text: $email)
                        .padding()
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .submitLabel(.next)
                        .background(Color.white.cornerRadius(90))
                        .foregroundColor(.white)
                    
                    
                    
                    
                        SecureField("Password", text: $password)
                        .textInputAutocapitalization(.never)
                        .padding()
                        .submitLabel(.done)
                        .background(Color.white.cornerRadius(90))
                        .foregroundColor(.white)
                }
                .textFieldStyle(.plain)
                .overlay {
                    Capsule()
                        .stroke(.red.opacity(1.0), lineWidth: 5)
                    
                }
                
                    HStack {
                        Button {
                            //TODO
                        } label: {
                            Text("First Time User?")
                                .font(Font.custom("helvetica-neue", size: 20))
                                .italic()
                        }
                        .tint(.red)
                        .foregroundColor(.black)
                        .padding(.trailing)
                        .buttonStyle(.bordered)
                        
                        
                        Button {
                            //TODO
                        } label: {
                            Text("Log In")
                        }
                        .font(Font.custom("helvetica-neue", size: 20))
                        .padding(.leading)
                        .buttonStyle(.borderedProminent)
                        .tint(.red)

                    }
                    .padding()
                    
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
