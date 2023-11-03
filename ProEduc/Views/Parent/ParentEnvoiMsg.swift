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
    @State private var profContact = "Monsieur DEBUISSY"
    @State private var isShowingModal = false
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
                        .foregroundColor(.black)
                        .font(.headline)
                        .border(Color("blue_parent"), width: 2)
                        .cornerRadius(10)
                    Image(systemName: "mail")
                }
                TextEditor(text: $textAbsence)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // Pour occuper tout l'espace disponible
                    .foregroundColor(.black) // Couleur du texte
                    .background(Color.gray) // Couleur d'arrière-plan
                    .padding() // Remplissage
                    .font(.headline) // Taille de la police
                    .border(Color("blue_parent"), width: 2)
                    .cornerRadius(10)
                
                Button(action: {
                           isShowingModal = true
                       }) {
                           Text("Envoyer")
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                               .frame(width: 220, height: 60)
                               .background(Color("blue_parent"))
                               .cornerRadius(35.0)
                       }
                       .alert(isPresented: $isShowingModal) {
                           Alert(
                               title: Text("Votre message a bien été envoyé"),
                              
                               dismissButton: .default(Text("OK"))
                           )
                       }
                   }
            }.padding()
        }
    }

#Preview {
    ParentEnvoiMsg()
}
