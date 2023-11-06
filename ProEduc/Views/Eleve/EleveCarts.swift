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
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .padding(.top, 11.0)
                    .overlay(
                        Text("Les Cartes")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                    )
            }
            Spacer()
            .padding(.vertical)
            VStack{
                Section{
                    Image("carte jeune")
                        .resizable()
                        .frame(width:350, height: 180)
                    Text("Carte jeune")
                        .font(.title2)
                        .fontWeight(.regular)
                    
//                    Spacer()
                    Image("carte self")
                        .resizable()
                        .frame(width:350, height: 180)
                    Text("Carte Self")
                        .font(.title2)
                        .fontWeight(.regular)
                }
            }
        }.padding(30)
    }
}

#Preview {
    EleveCarts()
}
