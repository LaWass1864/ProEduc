//
//  docEleve.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.


import SwiftUI

struct EleveListDoc: View {
    var body: some View {
        NavigationView{
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .padding(.all)
                    .overlay(
                        Text("Documents")
                            .frame(width: 350.0, height: 120.0)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    )
                
            }
            
            VStack{
                List{
                   
                    NavigationLink(destination: teste()) {
                        Image(systemName: "house")
                            .foregroundColor(.pink)
                        Text("Justificatif de domicile")
                    }
                    NavigationLink(destination:EleveBesoinAide ()) {
                        Image(systemName: "doc")
                            .foregroundColor(.indigo)
                        Text("Document tiers")
                    }
                    NavigationLink(destination: EleveBesoinAide()) {
                        Image(systemName: "bandage")
                       .foregroundColor(.green)
                        Text("Certificat médical")
                    }
                }
             }
            }
        }
    }
}

#Preview {
    EleveListDoc()
}

