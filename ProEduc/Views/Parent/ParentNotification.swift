//
//  notificatioView.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.
//

import SwiftUI

struct ParentNotification: View {
    
    @State private var isWritingMessageViewPresented = false
    
var message = ["Message 1", "Message 2", "Message 3", "Message 4"]
    
    var body: some View {
        
        VStack{
            NavigationView {
                VStack{
                    ZStack{

                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color(.blueParent))
                                .frame(width: 350, height: 120)
                            
                            Text("Mes notifications")
                                .foregroundColor(.white)
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                        }
                            
                    }
                    VStack{
                        
                        List(message, id: \.self) { message in
                            NavigationLink(
                                destination: MessageDetailView(message: message),
                                label: {
                                    Text(message)
                                }
                            )
                            .padding(.vertical, 10.0)
                        }
                        .scrollContentBackground(.hidden)
//                  changing background color of list !!!
                        VStack{
                            Button(action: { self.isWritingMessageViewPresented = true } )
                            {
                                Text("Envoyer un message")
                            }
                            .sheet(isPresented: $isWritingMessageViewPresented) {
                                ParentModalNotification()
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color("blue_parent"))
                            .cornerRadius(35.0)
                        }
                    }
                    .padding(.bottom, 30.0)
                    }
               
                }
            }
        }
    }

    struct ParentNotification_Previews: PreviewProvider {
        static var previews: some View {
            ParentNotification()
        }
    }
