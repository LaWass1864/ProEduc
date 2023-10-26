//
//  classeParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 23/10/2023.
// Ajouter un select dans lequel il y a les tout les enfants
// Et ensuite on fait apparaitre ses professeurs

import SwiftUI

struct classeParent: View {
    var body: some View {
        // l'encadré va rester au dessus, et changer les pages sans les encadrés.
        NavigationView {
           
            VStack{
                ZStack{
                   
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(.blueParent))
                        .frame(width: 350, height: 120)
                        .padding(.all)
                    
                    Text("Les classes")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                }
                
                
                List {
                    NavigationLink(destination: ajouterDocParent()) {
                        Text("Professeur de Francais")
                    }
                    NavigationLink(destination: ajouterDocParent()) {
                        Text("Professeur de mathématique")
                    }
                    NavigationLink(destination: ajouterDocParent()) {
                        Text("Professeur de SVT")
                    }
                }
               
            }
            
        }
       
    }
}


#Preview {
    classeParent()
}
