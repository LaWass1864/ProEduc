
//  ProEduc
//
//  Created by elamine heuss on 23/10/2023.
//
import SwiftUI

struct TabViewEleve: View {
    var body: some View {

        TabView{


            EleveMonProfil()
                        .tabItem {
                            Label("Mon espace", systemImage: "person")
                                .background(.black)
                                .tag(0)
                        }

            EleveListDoc()
                        .tabItem {
                            Label("Document", systemImage: "square.and.pencil")
                                .background(.black)
                                .tag(1)
                        }
            EleveContactImportant()
                        .tabItem {
                            Label("Annuaire", systemImage: "person.3")
                                .foregroundColor(.black)
                                .tag(3)
                        }
            EleveNotification()
                        .tabItem {
                            Label("Notification", systemImage: "bell.and.waves.left.and.right")
                                .foregroundColor(.blue)
                                .tag(2)
                        }   .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    TabViewEleve()
}
