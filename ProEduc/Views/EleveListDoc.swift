//
//  docEleve.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.


import SwiftUI

struct EleveListDoc: View {
    var body: some View {
        VStack{
            ZStack{
                
                Rectangle()
                    .cornerRadius(50)
                    .frame(width:350, height: 100)
                    .foregroundColor(Color("green_student"))
                Text("Documents")
                    .font(.title)
            }
            
            NavigationView {
                ExtractedView()
            }
            
        }
        
    }
}
struct ExtractedView: View {
    var body: some View {
        List{
            NavigationLink(destination: EleveBesoinAide()) {
                Text("Attestation maladie")
            }
            NavigationLink(destination: EleveBesoinAide()) {
                Text("Justificatif de domicile")
            }
            NavigationLink(destination:EleveBesoinAide ()) {
                Text("Documents tiers")
            }
            NavigationLink(destination: EleveBesoinAide()) {
                Text("Les cartes")
            }
        }
    }
}




#Preview {
    EleveListDoc()
}

