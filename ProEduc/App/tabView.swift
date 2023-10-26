//
//  tabView.swift
//  proEduc
//
//  Created by Apprenant 76 on 24/10/2023.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
            
            monEspaceParent()
                .tabItem {
                    Text("Mon espace")
                    Image(systemName: "folder")
                        .resizable()
                        .frame(width:90,height:90)
                }
            
            docPageParent()
                .tabItem {
                    Text("Document")
                    Image(systemName: "square.and.pencil")
                }
            ParentAnnuaire()
                .tabItem {
                    Text("Annuaire")
                    Image(systemName: "person.3")
                }
            ParentDeclaAbsence()
                .tabItem {
                    Text("Messagerie")
                    Image(systemName: "bell.and.waves.left.and.right")
                }
            EleveContactImportant()
                .tabItem {
                    Text("Messagerie")
                    Image(systemName: "bell.and.waves.left.and.right")
                }
        }
    }
}


#Preview {
    tabView()
}
