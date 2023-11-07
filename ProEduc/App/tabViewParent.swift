//
//  tabView.swift
//  proEduc
//
//  Created by Apprenant 76 on 24/10/2023.
//

import SwiftUI

struct tabViewParent: View {
    @StateObject var eleve = EleveAPIRequestViewModel()
    @StateObject var parent = ParentAPIRequestViewModel()
    @StateObject var prof = ProfAPIRequestViewModel()
                       
    var body: some View {
        TabView{
            
            ParentMonEspace()
                .tabItem {
                    Text("Mon espace")
                    Image(systemName: "folder")
                        .resizable()
                        .frame(width:90,height:90)
                }
            
            ParentListDoc()
                .tabItem {
                    Text("Document")
                    Image(systemName: "square.and.pencil")
                }
            ParentAnnuaire()
                .tabItem {
                    Text("Annuaire")
                    Image(systemName: "person.3")
                }
            ParentNotification()
                .tabItem {
                    Text("Messagerie")
                    Image(systemName: "bell.and.waves.left.and.right")
                }
//            EleveContactImportant()
//                .tabItem {
//                    Text("Messagerie")
//                    Image(systemName: "bell.and.waves.left.and.right")
//                }
//            UserListView()
//                .tabItem {
//                    Text("Messagerie")
//                    Image(systemName: "bell.and.waves.left.and.right")
//                }
            
        }
        .onAppear {
            Task {
                eleve.allEleve = await eleve.fetchedEleve()
                
            }
        }.environmentObject(eleve)
            .navigationBarBackButtonHidden()
    }
    
}


#Preview {
    tabViewParent()
}
