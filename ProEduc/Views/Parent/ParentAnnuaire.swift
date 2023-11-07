//
//  classeParent.swift
//  proEduc
//
//  Created by Apprenant 45 on 23/10/2023.

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
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                
                VStack {
                    
                    List {
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de Francais")
                        }
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de mathématique")
                        }
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de SVT")
                        }
                    }
                    
                }
            }
        }
        
    }
}


#Preview {
    ParentAnnuaire()
}
