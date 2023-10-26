//
//  notificatioView.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.
//

import SwiftUI

struct notificationView: View {
    
    @State private var isWritingMessageViewPresented = false
    
var message = ["Message 1", "Message 2", "Message 3", "Message 4"]
    
    var body: some View {
        
        VStack{
            NavigationView {
                VStack{
                    ZStack{
//                        Spacer()
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350.0, height: 120.0)
                            .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                            .padding(.top, 11.0)
                            .overlay(
                                Text("Message")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(.white)
                            )
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
                                WritingMessage()
                            }
                            .padding()
                            .background(Color(red: -0.192, green: 0.857, blue: 0.048))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.bottom, 30.0)
                    }
                .background(Image("BG"))
                }
            }
        }
    }
    struct MessageDetailView: View {
        var message: String
        var body: some View {
            Text("selected message.")
                .font(.headline)
                .padding()
        }
    }
//}
    struct NotificationView_Previews: PreviewProvider {
        static var previews: some View {
            notificationView()
        }
    }
