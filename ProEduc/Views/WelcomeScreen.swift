import SwiftUI

struct WelcomeScreen: View {
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
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}


