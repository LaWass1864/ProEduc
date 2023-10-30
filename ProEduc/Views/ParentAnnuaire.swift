//
//  classeParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 23/10/2023.
// Ajouter un select dans lequel il y a les tout les enfants
// Et ensuite on fait apparaitre ses professeurs

import SwiftUI

struct ParentAnnuaire: View {
    
    
    var body: some View {
        
        NavigationStack {
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
                
                // Ajouter un Picker pour selectionner un enfant
                List {
                    NavigationLink(destination: ParentContactprof()) {
                        Text("Professeur de Francais")
                    }
                    NavigationLink(destination: ParentAjoutDoc()) {
                        Text("Professeur de mathématique")
                    }
                    NavigationLink(destination: ParentAjoutDoc()) {
                        Text("Professeur de SVT")
                    }
                }
                
            }
            
        }
        
    }
}


#Preview {
    ParentAnnuaire()
}
