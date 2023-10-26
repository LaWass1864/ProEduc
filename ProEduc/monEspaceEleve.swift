//
//  monEspaceEleve.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.
//

//
//  MonEspaceView.swift
//  ProEduc
//
//  Created by elamine heuss on 18/10/2023.
//

import SwiftUI

struct monEspaceEleve: View {
    @State private var isDarkModeEnabled: Bool = false
    
    
    @State var showTabView = false
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    HStack{
                        Text("Mon Espace")
                            .padding()
                        Spacer()
                        
                        
                        NavigationLink(destination:ProfilesView()) {
                            VStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                Text("Profils")
                            }.padding()
                            
                        }
                        
                        
                    }
                    
                    
                    ZStack{
                        Rectangle()
                            .cornerRadius(20)
                            .foregroundColor(.blue)
                            .frame(width:300, height: 100)
                        Text("Bienvenue sur mon espace")
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    
                    
                }
                
                HStack{// déclarer mon absens
                    
                    ZStack{
                        
                        Rectangle()
                            .cornerRadius(20)
                            .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                            .frame(width:350, height: 70)
                        
                        
                        Toggle(isOn: $isDarkModeEnabled){
                            Text(" je déclare mon Absens")
                            
                            
                            
                        }.padding(50)
                        
                        
                        
                    }
                    
                }
                
                
                
                ZStack{
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width:360, height: 220)
                    VStack{
                        Image("Carte Jeune")
                        Text("Carte jeune")
                            .font(.title2)
                            .fontWeight(.regular)
                        
                    }
                    
                }
                
                
                
                
                
                ZStack{
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width:360, height: 220)
                    VStack{
                        Image("recto_min")
                        Text(" carte Self")
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
    monEspaceEleve()
}
