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
            
            ContentView()
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
            classeParent()
                .tabItem {
                    Text("Annuaire")
                    Image(systemName: "person.3")
                }
            declarationAbsenceParent()
                .tabItem {
                    Text("Messagerie")
                    Image(systemName: "bell.and.waves.left.and.right")
                }
            contactImportant()
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
