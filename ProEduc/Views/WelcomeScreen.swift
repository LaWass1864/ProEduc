import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            Color(Color(.welcomeScreen)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("logo") 
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding()
                
                Text("Bienvenue dans l'application")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer()
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}


