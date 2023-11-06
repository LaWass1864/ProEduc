//
//  monEspaceEleve.swift
//  proEduc
//
//  Created by Apprenant 45 on 26/10/2023.
//


import SwiftUI

struct EleveCarts: View {
    @State private var DeclarationAbsence: Bool = false
    
    // Pull API des Eleves
    //mais aussi de l'utilisateur renseigné car seul lui peut voir ses informations
    @EnvironmentObject var eleveRequest: EleveAPIRequestViewModel
    @EnvironmentObject var userSession: Eleve
    
    @State var showTabView = false
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    ZStack{
                       
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .padding(.top, 11.0)
                    .overlay(
                        Text("Mon Space")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            )
                    }
                }
           Spacer()
             VStack{
                    Rectangle()
                        .cornerRadius(25)
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width:350, height: 150)
//                        .overlay(
//                            Image("Carte Jeune")
//                            Text("Carte jeune")
//                                .font(.title2)
//                                .fontWeight(.regular)
                            
//                        )
                    
                }

                ZStack{
                    Rectangle()
                        .cornerRadius(25)
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width:350, height: 150)
                    VStack{
                        Image("recto_min")
                        Text("Carte Self")
                            .font(.title2)
                            .fontWeight(.regular)
                    }
                }
            }
            
            Spacer()
            
            
                .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    EleveCarts()
}
