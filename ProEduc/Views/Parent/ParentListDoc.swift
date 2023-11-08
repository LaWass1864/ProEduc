//
//  docPageParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 25/10/2023.
//

import SwiftUI

struct ParentListDoc: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(red: -0.092, green: 0.514, blue: 0.766))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                    .overlay(
                        Text("Documents")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                    )
                VStack{
                    List {
                        NavigationLink(destination: CertificatMedical()) {
                            
                            Image(systemName: "bandage")
                                .foregroundColor(.green)
                            Text("Certificat médical")
                            
                        }
                        NavigationLink(destination: JustificatifDeDomicile()) {
                            Image(systemName: "house")
                                .foregroundColor(.pink)
                            Text("Justificatif De Domicile")
                        }
                        //                        NavigationLink(destination: ParentAjoutDoc())
                        HStack{
                            Image(systemName: "doc")
                                .foregroundColor(.indigo)
                            Text("Document tiers")
                            
                        }
                        NavigationLink(destination: EleveCarts()) {
                            Image(systemName: "ticket")
                                .foregroundColor(.orange)
                            Text("Les cartes d'élève")
                        }
                        
                    }
                    .padding()
                    .scrollContentBackground(.hidden)
                    NavigationLink(destination: ParentAjoutDoc()) {
                        Text("Ajouter un document")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color("blue_parent"))
                            .cornerRadius(35.0)
                    }.padding()
                }
            }
        }
//        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    ParentListDoc()
}
