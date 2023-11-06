////
////  selectUser.swift
////  proEduc
////
////  Created by Apprenant 76 on 26/10/2023.
////
//
////
////  selectUser.swift
////  proEduc
////
////  Created by Apprenant 76 on 26/10/2023.
////
//
//import SwiftUI
//
//struct SelectUser: View {
//    var body: some View {
//        VStack{
//            NavigationView {
//                
//                ZStack(){
//                    
//                    VStack {
//                        //                        NavigationLink(destination: tabView()) {
//                        NavigationLink(destination: EleveConnexion()){
//                            Image("student")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100, height:100)
//                                .overlay(
//                                    Text("Eleves")
//                                        .font(.headline)
//                                        .foregroundColor(.white)
//                                        .padding(5)
//                                        .offset(x: 5, y: -32)
//                                ).padding()
//                        }
//                        NavigationLink(destination: ParentConnexion()){
//                            Image("school")
//                            
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 100, height:100)
//                                .overlay(
//                                    Text("Vie scolaire")
//                                        .font(.headline)
//                                        .bold()
//                                        .foregroundColor(.white)
//                                        .offset(x: 5, y: -32)
//                                )
//                        }
//                        NavigationLink(destination: EleveConnexion()){
//                            Image("parent")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100, height: 100)
//                                .overlay(
//                                    Text("Parent")
//                                        .font(.headline)
//                                        .bold()
//                                        .foregroundColor(.white)
//                                        .padding(5)
//                                        .offset(x: 5, y: -32)
//                                    
//                                ) .padding()
//                        }
//                        NavigationLink(destination: EleveConnexion()){
//                            Image("prof")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100, height: 100)
//                                .overlay(
//                                    Text("Prof")
//                                        .font(.headline)
//                                        .bold()
//                                        .foregroundColor(.white)
//                                        .padding(5)
//                                        .offset(x: 5, y: -32)
//                                ).padding()
//                            
//                        }
//                    }
//                    .background(Image("bg"))
//                    .ignoresSafeArea()
//                }
//                
//            }
//        }
//    }
//}
//#Preview {
//    SelectUser()
//}
