//
//  WelcomeScreen.swift
//  ProEduc
//
//  Created by apprenant45 on 07/11/2023.
//
import SwiftUI

struct WelcomeScreen: View {
    @State private var showSelectUser = false
    var body: some View {
        ZStack {
            Color(Color(.welcomeScreen)).edgesIgnoringSafeArea(.all)
            
            VStack {
               
                
                Text("Bienvenue dans l'application")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding()
            }
            .onAppear {
                // Use a delay to automatically navigate to the userSelect screen after a few seconds.
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    self.showSelectUser = true
                                }
            }
                       .background(
                           NavigationLink("", destination: SelectUser(), isActive: $showSelectUser)
                               .opacity(0) // Hide the actual link; navigation is controlled by the binding
                       )            }
        }
    }


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

