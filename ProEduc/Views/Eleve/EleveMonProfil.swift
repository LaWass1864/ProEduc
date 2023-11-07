import SwiftUI
import Foundation

struct EleveMonProfil: View {
    @State private var DeclarationAbsence: Bool = false
    @State private var isDarkModeEnabled: Bool = false
    @State private var notificationEnabled: Bool = false
    @State private var languageIndex = 0
    var languageOptions = ["Français", "English"]
    var body: some View {
        NavigationView {
            Form {
                ZStack {
                    HStack {
                        //                        Spacer()
                        VStack {
                            Spacer()
                            UserImage()
                                .padding(.top, 20)
                                .frame(maxWidth: .infinity)
                            Spacer()
                            Text("Garcia Hugo")
                                .font(.title)
                            
                            Text("garciahugo@gmail.com")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        Spacer()
                    }
                }
                
                HStack{
                    NavigationLink(destination: ChangePassword()){
                        Image(systemName: "key")
                        Text("Mot de passe et sécurité")
                    }
                }
                HStack{
                    NavigationLink(destination: EleveCarts()){
                        
                        Image(systemName: "person.text.rectangle")
                        Text("Les cartes")
                    }
                }
                HStack{
                    NavigationLink(destination: EleveBesoinAide()) {
                        Image(systemName: "book")
                        Text("Besoin d’aide")
                    }
                }
                
                Section(header: Text("Parametres"), content: {
                    HStack{
                        Image(systemName: "globe")
                        Picker(selection: $languageIndex, label: Text("Language")) {
                            ForEach(0 ..< languageOptions.count) {
                                Text(self.languageOptions[$0])
                            }
                        }
                    }
                    HStack{
                        Image(systemName: "moon")
                        Toggle(isOn: $isDarkModeEnabled) {
                            Text("Mode Sombre")
                        }
                    }
                    HStack{
                        Image(systemName: "bell")
                        Toggle(isOn: $notificationEnabled){
                            Text("Notifications")
                        }
                    }
                })
            }
        }
    }
        struct UserImage: View {
            var body: some View {
                Image("avatarEleve")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
            }
        }
}

#Preview {
   EleveMonProfil()
}
