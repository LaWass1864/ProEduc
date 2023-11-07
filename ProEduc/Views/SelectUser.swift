//
//  selectUser.swift
//  proEduc
//
//  Created by Apprenant 45 on 26/10/2023.
//

import SwiftUI

struct SelectUser: View {
  

    var body: some View {
        VStack{
            NavigationView {
                ZStack{
                    VStack {
                        HStack {
                            NavigationLink(destination: EleveConnexion()){
                                ImageView("eleve 1", label: "Eleves")
                            }
                                ImageView("viescolaire", label: "Vie scolaire")
                            }
                        HStack {
                            NavigationLink(destination: ParentConnexion()){
                                ImageView("parents", label: "Parent")
                            }
                                ImageView("professeurs", label: "Professeur")
                            }
                        }
                    .ignoresSafeArea()
                }
            }
        }
    }

    func ImageView(_ imageName: String, label: String) -> some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(
                Text(label)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .offset(x: 5, y: -50)
            )
            .padding()
    }
}


#Preview {
    SelectUser()
}
