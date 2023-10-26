//
//  ContentView.swift
//  proEduc
//
//  Created by Apprenant 76 on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            //Back en doublon
            // Encadré Mon espace
            VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                
                Text("Mon espace")
                    .foregroundColor(.white)
                    .font(.system(size: 36))
                    .fontWeight(.bold)
            }
            
            List {
                NavigationLink(destination: classeParent()) {
                    Text("Classes")
                }
                NavigationLink(destination: declarationAbsenceParent()) {
                    Text("Déclaration d'absence")
                }
                NavigationLink(destination: docPageParent()) {
                    Text("Les documents")
                }
            } .scrollContentBackground(.hidden)
        }
            .background(.white)
    }
}
}

#Preview {
    ContentView()
}

