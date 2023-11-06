
//  ProfilsView.swift
//  ProEduc
//
//  Created by elamine heuss on 19/10/2023.
//

//
//  ContentView.swift
//  GiveGood
//
//  Created by Louise Ta on 21/09/2023.
//


import SwiftUI
import Foundation

struct EleveMonProfil: View {
    @State private var DeclarationAbsence: Bool = false
    @State private var isDarkModeEnabled: Bool = false
    @State private var notificationEnabled: Bool = false
    @State private var languageIndex = 0
    var languageOptions = ["Français", "English"]
    var body: some View {
        NavigationView {
            Form {
                ZStack {
                    HStack {
//                        Spacer()
                        VStack {
                            Spacer()
                            UserImage()
                            Text("Garcia Hugo")
                                .font(.title)
                                
                            Text("garciahugo@gmail.com")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                }
               
                HStack{
                    NavigationLink(destination: ChangePassword()){
                        Image(systemName: "key")
                        Text("Mot de passe et sécurité")
                    }
                }
                HStack{
                    NavigationLink(destination: EleveCarts()){
                        
                        Image(systemName: "person.text.rectangle")
                        Text("Les cartes")
                    }
                }
                HStack{
                    NavigationLink(destination: EleveBesoinAide()) {
                        Image(systemName: "book")
                        Text("Besoin d’aide")
                    }
                }
                
                Section(header: Text("Parametres"), content: {
                    HStack{
                        Image(systemName: "globe")
                        Picker(selection: $languageIndex, label: Text("Language")) {
                            ForEach(0 ..< languageOptions.count) {
                                Text(self.languageOptions[$0])
                            }
                        }
                    }
                    HStack{
                        Image(systemName: "moon")
                        Toggle(isOn: $isDarkModeEnabled) {
                            Text("Mode Sombre")
                        }
                    }
                    HStack{
                        Image(systemName: "bell")
                        Toggle(isOn: $notificationEnabled){
                            Text("Notifications")
                        }
                    }
                })
                Button(action: {
                    print("Edit Profile tapped")
                })
                {
                    Text("Editer le profil")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                .background(Color.blue)
                .cornerRadius(25)
            }
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
//                    .padding(.top)
            }
        }
}

#Preview {
   EleveMonProfil()
}
