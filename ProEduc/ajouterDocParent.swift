//
//  ajouterDocParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 20/10/2023.
//

import SwiftUI

struct ajouterDocParent: View {
    // Déclaration State pour le toggle absence d'enfant
    @State private var studentAbsent = true
    // Input text nom de l'enfant
    @State var docName: String = ""
    // textarea description
    @State private var textAbsence = "Entrer la raison de cette absence"
    
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(.blueParent))
                        .frame(width: 350, height: 120)
                        .padding(.all)
                    
                    Text("Nouveau document")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                }
                
                VStack{
                    // Input text avec le nom de l'enfant
                    Text("Nom du document")
                        .font(.title3)
                        .bold()
                    TextField("Nom du document", text: $docName)
                        .font(.title3)
                        .padding(.bottom,25)
                        .border(Color.yellow, width: 2)
                    
                    // textArea Motif de l'absence
                    Text("Description")
                        .font(.title3)
                        .bold()
                        .padding(.bottom,25)
                    TextEditor(text: $textAbsence)
                        .font(.body)
                        .padding(.top, 20)
                        .border(Color.yellow, width: 2)
                    
                    // Bouton upload document
                    Image(systemName: "camera")
                        .padding(90)
                    // Bouton valider le document
                    Button(action: {
                        // Action à exécuter lorsque le bouton est appuyé
                    }) {
                        Text("Valider")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(width: 250, height: 50) // Réglage de la largeur et la hauteur
                    .background(Color("green_btn")) // Modification de la couleur d'arrière-plan du bouton
                    .cornerRadius(10) // Ajoutez des coins arrondis si nécessaire
                }
            }
            .padding(25)
        }
    }
}

#Preview {
    ajouterDocParent()
}
