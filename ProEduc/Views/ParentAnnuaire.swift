//
//  classeParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 23/10/2023.
// Ajouter un select dans lequel il y a les tout les enfants
// Et ensuite on fait apparaitre ses professeurs

import SwiftUI

struct ParentAnnuaire: View {
   
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }


    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        
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
                
           // Ajouter un Picker pour selectionner un enfant
                List{
                    NavigationLink(destination: ParentAnnuaire())
                    Text("1er Enfent")
                    List {
                             NavigationLink(destination: ParentAjoutDoc()) {
                                 Text("Professeur de Francais")
                             }
                             NavigationLink(destination: ParentAjoutDoc()) {
                                 Text("Professeur de mathématique")
                             }
                             NavigationLink(destination: ParentAjoutDoc()) {
                                 Text("Professeur de SVT")
                             }
                         }
                    NavigationLink(destination: ParentAnnuaire())
                    Text("2eme Enfent")
                }
                }
                
            }
            
        }
    }


#Preview {
    ParentAnnuaire()
}
