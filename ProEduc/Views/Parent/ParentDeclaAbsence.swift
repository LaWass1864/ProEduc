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
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                
                Text("Déclarer l'absence de mon enfant")
                    .foregroundColor(.white)
                    .font(.system(size: 32))
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
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .border(Color.yellow, width: 1)
                    .font(.title)
                
                // TextArea Motif de l'absence
                Text("Motif de l'absence")
                    .font(.callout)
                    .bold()
                
                TextEditor(text: $textAbsence)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // Pour occuper tout l'espace disponible
                    .foregroundColor(.black) // Couleur du texte
                    .background(Color.gray) // Couleur d'arrière-plan
                    .cornerRadius(10) // Coins arrondis
                    .padding() // Remplissage
                    .font(.title) // Taille de la police
                    .border(Color.yellow, width: 1) // border jaune
            
                // Bouton upload document
                Button(action: {
                    // Action à exécuter lorsque le bouton est appuyé
                }) {
                    Text("Ajouter une attestation")
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: 250, height: 50) // Réglage de la largeur et la hauteur
                .background(Color("green_btn")) // Modification de la couleur d'arrière-plan du bouton
                .cornerRadius(10) // Ajoutez des coins arrondis si nécessaire
            }.padding()
    }
    }

#Preview {
    ParentDeclaAbsence()
}
