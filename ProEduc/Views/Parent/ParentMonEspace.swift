//
//  ContentView.swift
//  proEduc
//
//  Created by Apprenant 76 on 19/10/2023.
//

import SwiftUI

struct ParentMonEspace: View {
    var body: some View {
        NavigationStack {
        
            // Encadré Mon espace
            VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                
                Text("Mon espace")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
            }.padding(.vertical, 12.0)
            
            List {
                NavigationLink(destination: ParentAnnuaire()) {
                    Text("Classes")
                }
                NavigationLink(destination: ParentDeclaAbsence()) {
                    Text("Déclaration d'absence")
                }
                NavigationLink(destination: ParentListDoc()) {
                    Text("Les documents")
                }
            } .scrollContentBackground(.hidden)
        }
            .background(.white)
    }
}
}

#Preview {
    ParentMonEspace()
}

