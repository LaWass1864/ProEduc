//
//  ParentConnexion.swift
//  ProEduc
//
//  Created by Apprenant 76 on 31/10/2023.
//

import SwiftUI

//let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
//
//let storedUsername = "Dupont"
//let storedPassword = "qqq"

struct EleveConnexion: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingtabViewEleve = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                VStack {
                    
                    Text("Bonjour")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    UserImage()
                    TextField("Pseudo", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    SecureField("Mot de passe", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Connexion") {
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .cornerRadius(10)
                    NavigationLink(destination:TabViewEleve(), isActive: $showingtabViewEleve) {
                        EmptyView()
                    }
                }
            }.navigationBarHidden(true)
        }
      }
    
    func authenticateUser(username: String, password: String) {
        if username == "Garcia" {
            wrongUsername = 0
            if password == "1234" {
                wrongPassword = 0
                showingtabViewEleve = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    struct UserImage: View {
        var body: some View {
            Image("avatarEleve")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
}


#Preview {
    EleveConnexion()
}
