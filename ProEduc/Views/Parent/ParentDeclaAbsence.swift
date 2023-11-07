//
//  declarationAbsenceParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 20/10/2023.
//

import SwiftUI

struct ParentDeclaAbsence: View {
    // Déclaration State pour le toggle absence d'enfant
    @State private var isToggled = false
    // Input text nom de l'enfant
    @State var username: String = ""
    // textarea description
    @State private var textAbsence = "Saisissez votre texte ici"
    
    var body: some View {
        NavigationStack {
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(.blueParent))
                        .frame(width: 350, height: 120)
                    
                    Text("Déclarer l'absence de mon enfant")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                }
                
                VStack{
                    
                    // Déclaration de l'absence de mon enfant
                    Toggle(isOn: $isToggled) {
                        Text("Déclarer mon enfant absent")
                    }
                    .padding()
                }
                
                // Input text avec le nom de l'enfant
                Text("Nom et prénom de votre enfant")
                    .font(.callout)
                    .bold()
                TextField("Nom et prenom de votre enfant", text: $username)
                    .padding()
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.906))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                // TextArea Motif de l'absence
                Text("Motif de l'absence")
                    .font(.callout)
                    .bold()
                
                TextEditor(text: $textAbsence)
                    .padding()
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.906))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                // Bouton upload document
                Button(action: {
                    // Action à exécuter lorsque le bouton est appuyé
                }) {
                    NavigationLink(destination: ParentAjoutDoc()) {
                        Text("Ajouter un document")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color("blue_parent"))
                    .cornerRadius(35.0)
                }
            }.padding(25)
            
        }
//        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    ParentDeclaAbsence()
}
