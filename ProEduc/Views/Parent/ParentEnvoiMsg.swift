//
//  envoiMsgprof.swift
//  proEduc
//
//  Created by Apprenant 76 on 24/10/2023.
// Cet écran est en trop

import SwiftUI


struct ParentEnvoiMsg: View {
    @State private var usernameChild = "Enfant 1"
    @State private var textAbsence = "Texte"
    @State private var profContact = "Mister DEBUISSY"
    var body: some View {
        VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                
                Text("Envoyer un message à \(profContact)")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            
            VStack{
                HStack{
                    TextField("Nom et prenom de votre enfant", text: $usernameChild)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                        .border(Color.yellow, width: 1)
                    Image(systemName: "mail")
                }
                TextEditor(text: $textAbsence)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // Pour occuper tout l'espace disponible
                    .foregroundColor(.black) // Couleur du texte
                    .background(Color.gray) // Couleur d'arrière-plan
                    .cornerRadius(10) // Coins arrondis
                    .padding() // Remplissage
                    .font(.headline) // Taille de la police
                    .border(Color.yellow, width: 1)
                
                Button(action: {
                    // Action à exécuter lorsque le bouton est appuyé
                }) {
                    Text("Envoyer")
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: 250, height: 50) // Réglage de la largeur et la hauteur
                .background(Color("green_btn")) // Modification de la couleur d'arrière-plan du bouton
                .cornerRadius(10) // Ajoutez des coins arrondis si nécessaire
            }.padding()
        }
    }
}
#Preview {
    ParentEnvoiMsg()
}
