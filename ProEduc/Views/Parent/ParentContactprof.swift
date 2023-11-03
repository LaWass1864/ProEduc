//
//  contactProfesseur.swift
//  proEduc
//
//  Created by Apprenant 76 on 24/10/2023.
//

import SwiftUI

struct ParentContactprof: View {
    
    // Input text nom de l'enfant
    @State var usernameChild: String = ""
    // textarea description
    @State private var textAbsence = "Enfant 1"
    
    var body: some View {
        VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                
                Text("Professeur de Francais")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
            }
            
            VStack{
                HStack{
                    TextField("Nom et prenom de votre enfant", text: $usernameChild)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                        .border(Color.yellow, width: 2)
                    Image(systemName: "envelope")
                }
                TextEditor(text: $textAbsence)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // Pour occuper tout l'espace disponible
                    .foregroundColor(.black) // Couleur du texte
                    .background(Color.gray) // Couleur d'arrière-plan
                    .cornerRadius(10) // Coins arrondis
                    .padding() // Remplissage
                    .font(.headline) // Taille de la police
                    .border(Color.yellow, width: 2)
            }.padding()
        }
    }
}
#Preview {
    ParentContactprof()
}
