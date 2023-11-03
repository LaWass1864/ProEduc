//
//  ajouterDocParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 20/10/2023.
//

import SwiftUI

struct ParentAjoutDoc: View {
    // Déclaration State pour le toggle absence d'enfant
    @State private var studentAbsent = true
    // Input text nom de l'enfant
    @State var docName: String = ""
    // textarea description
    @State private var textAbsence = "Entrer la raison de cette absence"
    @State private var isShowingModal = false
    
    var body: some View {
        NavigationStack {
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
                        .border(Color("blue_parent"), width: 2)
                        .cornerRadius(10)
                    
                    // textArea Motif de l'absence
                    Text("Description")
                        .font(.title3)
                        .bold()
                        .padding(.bottom,25)
                    TextEditor(text: $textAbsence)
                        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray.opacity(0.2))
                        )
                        .padding()
                        .border(Color("blue_parent"), width: 2)
                        .cornerRadius(10)
                }
                
                // Bouton upload document
                Image(systemName: "camera")
                    .padding(90)
                // Bouton valider le document
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
                        title: Text("Votre document a bien été pris en charge"),
                        
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .padding(25)
        }
    }
}
#Preview {
    ParentAjoutDoc()
}
