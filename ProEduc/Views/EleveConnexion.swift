//
//  ParentConnexion.swift
//  ProEduc
//
//  Created by Apprenant 76 on 31/10/2023.
//

import SwiftUI

let blue = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsernameEleve = "U"
let storedPasswordEleve = "u"

struct EleveConnexion: View {
    
    @State var username: String = "U"
    @State var password: String = "u"
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    
                    HelloText()
                    UserImage()
                    UsernameTextField(username: $username)
                    PasswordSecureField(password: $password)
                    if authenticationDidFail {
                        Text("Information incorrecte. Réessayez.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    
                    
                    Button(action: {
                        if self.username == storedUsernameEleve && self.password == storedPasswordEleve {
                            self.authenticationDidSucceed = true
                            self.authenticationDidFail = false
                        } else {
                            self.authenticationDidFail = true
                            self.authenticationDidSucceed = false
                        }
                    }) {
                        LoginButtonContent()
                    }
                }
                .padding()
                if authenticationDidSucceed {
                    NavigationLink(destination: ParentAnnuaire()) {
                        
                        
                        Text("Connexion réussie !")
                            .font(.headline)
                            .frame(width: 250, height: 80)
                            .background(Color(.blueParent))
                            .cornerRadius(20.0)
                        
                    }
                }
            }
        }
        
    }
    
    
    struct HelloText: View {
        var body: some View {
            Text("Bonjour!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Spacer()
            ZStack{
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.11, green: 0.518, blue: 0.799))
                    .frame(width:300, height: 100)
                Text("Bienvenue sur mon espace")
                    .foregroundColor(.white)
            }
        }
    }
    
    
    
    struct UserImage: View {
        var body: some View {
            Image("userImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
    
    struct LoginButtonContent: View {
        var body: some View {
            Text("CONNEXION")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.greenStudent)
                .cornerRadius(35.0)
        }
    }
    
    struct UsernameTextField: View {
        
        @Binding var username: String
        
        var body: some View {
            TextField(("Pseudo"), text: $username)
                .padding()
                .background(blue)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        }
    }
    
    struct PasswordSecureField: View {
        
        @Binding var password: String
        
        var body: some View {
            SecureField("Mot de passe", text: $password)
                .padding()
                .background(blue)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        }
    }
    
}

#Preview {
    EleveConnexion()
}

