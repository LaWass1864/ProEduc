//
//  besoinAide.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.
//

import SwiftUI

struct EleveBesoinAide: View {
    var body: some View {
        VStack {
            // Push content to the top
//            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .padding(.top, 11.0)
                    .overlay(
                        Text("Besoin D'aide")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                    )
                
            }
            .padding()
            VStack {
                Text("Pour contacter l'établissement")
                Text("Nous vous proposons ce numéro ")
                Spacer()
                Rectangle()
                    .cornerRadius(25)
                    .frame(width: 350, height: 100)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .overlay(
                        HStack {
                            Text("0768989090")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding(20)
                           Image(systemName: "phone.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .background(
                                    Circle()
                                        .foregroundColor(.white)
                                        .frame(width: 70, height: 70)
                                    
                                )
                        }
                    )
            }
//            Spacer()
                        .padding()
        }
       
    }
}

#Preview {
    EleveBesoinAide()
}
