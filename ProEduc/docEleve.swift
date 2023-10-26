//
//  docEleve.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.


import SwiftUI

struct docEleve: View {
    var body: some View {
        
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

struct ExtractedView: View {
    var body: some View {
        List{
            NavigationLink(destination: besoinAide()) {
                Text("Attestation maladie")
            }
            NavigationLink(destination: besoinAide()) {
                Text("Justificatif de domicile")
            }
            NavigationLink(destination:besoinAide ()) {
                Text("Documents tiers")
            }
            NavigationLink(destination: besoinAide()) {
                Text("Les cartes")
            }
        }
    }
}




#Preview {
    docEleve()
}

