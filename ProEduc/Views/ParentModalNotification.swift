//
//  WritingMessage.swift
//  proEduc
//
//  Created by Apprenant 76 on 26/10/2023.
//

import SwiftUI

struct ParentModalNotification: View {
    
    @State private var messageTitle = ""
    @State private var newMessage = ""
    
    var body: some View {
        
        VStack{
            
            RoundedRectangle(cornerRadius: 25)
            
                .frame(width: 350.0, height: 120.0)
                .foregroundColor(.blue)
                .padding(.all)
                .overlay(
                    Text("Message")
                        .frame(width: 350.0, height: 120.0)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                )
            Section {
                TextField("Title", text: $messageTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.gray, width: 1)
                TextEditor(text: $newMessage)
                    .frame(minHeight: 200)
                    .border(Color.gray, width: 1)
            }.padding()
            Spacer()
            
            Button("Envoyer") {
                //             action of the button
                print("Message sent:  \(messageTitle) , \(newMessage) ")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .scrollContentBackground(.hidden)
        }
        
        //        Spacer()
    }
}
#Preview {
    ParentModalNotification()
}

