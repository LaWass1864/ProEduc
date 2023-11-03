//
//  UserListView.swift
//  GitHubExercice
//
//  Created by Zohra Achour on 25/10/2023.
//

import SwiftUI

struct UserListView: View {
    
    //ici on lit la variable observer dans les vues enfants via le @EnvironmentObjet
    @EnvironmentObject var EleveRequete: EleveAPIRequestViewModel
    
    var body: some View {
        NavigationStack {
            LazyVStack {
                ForEach(EleveRequete.allEleve) { eleve in
                    NavigationLink(destination: EleveMonProfil(), label: {
                        Text(eleve.nom)
                    })
                   
                }
            }
        }
    }
}

//struct UserDetail: View {
//
//    @EnvironmentObject var ParentRequest: ParentAPIRequest
//
//    var Parent: Parent
//
//    var body: some View {
//        VStack {
//            Text(Parent.name)
//
//            ForEach(ParentRequest.allParent.filter{ $0.id == parent.idFromParent.first }) { parent in
//                HStack {
//                    if let imageFound = Parent.image.first {
//                        AsyncImage(url: URL(string: imageFound.url)) { phase in
//                            if let image = phase.image {
//                                image
//                                    .resizable()
//                                    .scaledToFill()
//                            } else if phase.error != nil {
////                                    Text("Image indisponible")
//                                Image(systemName: "mug.full")
//                            } else {
//                                ProgressView()
//                            }
//                        }
//                        .frame(width: 100, height: 100)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                    }
//
//                    VStack {
//                        Text(Parent.name)
//
//                    }
//                }
//
//
//            }
//        }
//
//
//    }
//}

#Preview {
    UserListView()
        .environmentObject(EleveAPIRequestViewModel())
}

