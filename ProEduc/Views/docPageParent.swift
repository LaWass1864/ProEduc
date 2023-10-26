//
//  docPageParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 25/10/2023.
//

import SwiftUI

struct docPageParent: View {
    var body: some View {
        
        ZStack{
            NavigationView {
                // EncadrÃ© Mon espace
                VStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(red: -0.092, green: 0.514, blue: 0.766))
                        .frame(width: 350, height: 120)
                        .padding(.all)
                        .overlay(
                            Text("Documents")
                                .foregroundColor(.white)
                                .font(.system(size: 36))
                                .fontWeight(.bold)
                        )
                    VStack{
                        List {
                            NavigationLink(destination: ajouterDocParent()) {
                                
                                Image(systemName: "bandage")
                                    .foregroundColor(.green)
                                Text("Certificat médical")
                                
                            }
                            NavigationLink(destination: ajouterDocParent()) {
                                Image(systemName: "house")
                                    .foregroundColor(.pink)
                                Text("Justificatif de domicile")
                            }
                            NavigationLink(destination: ajouterDocParent()) {
                                Image(systemName: "doc")
                                    .foregroundColor(.indigo)
                                Text("Document tiers")
                                
                            }
                            NavigationLink(destination: ajouterDocParent()) {
                                Image(systemName: "ticket")
                                    .foregroundColor(.orange)
                                Text("Cartes jeune")
                            }
                            NavigationLink(destination: ajouterDocParent()) {
                                Image(systemName: "doc.viewfinder")
                                    .foregroundColor(.mint)
                                Text("Les documents")
                                
                                
                                
                            }
                            
                        } .scrollContentBackground(.hidden)
                        Button("Ajouter un document") { }
                            .foregroundColor(.white)
                            .controlSize(.large)
                            .padding(50)
                            .frame(width: 280, height: 50) // Réglage de la largeur et la hauteur
                            .background(Color("green_btn")) // Modification de la couleur d'arrière-plan du bouton
                            .cornerRadius(10) // Ajoutez des coins arrondis si nécessaire
                    }
                }
            }
            
        }
    }
}

#Preview {
    docPageParent()
}
