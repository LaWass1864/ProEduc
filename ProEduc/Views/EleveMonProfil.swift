import SwiftUI
import Foundation

struct EleveMonProfil: View {
    @State private var isDarkModeEnabled: Bool = false
    @State private var notificationEnabled: Bool = false
    //ce userSession correspond a l'utilisateur qui utilise son téléphone et/ou qui est enregistré
    @EnvironmentObject var eleveSession: Eleve
    
    //comme on va afficher des drink il nous faut appeler tous Drink dans cette vue aussi
    @EnvironmentObject var EleveRequete: EleveAPIRequestViewModel
    //et comme on veut utiliser la même vue de profil, au lieu de l'écrire 2 fois on passe en optionnel un User
    //si on a bien 1 autre utilisateur (différent de celui enregistré) alors on affiche cette utilisateur
    var eleve: Eleve?
    // Switch the app language
    @State private var languageIndex = 0
    var languageOptions = ["Français", "English"]
    
    
    var body: some View {
        Form{
            VStack{
                
                
                //ici on s'assure que le l'autre utilisateur est bien existant (l'optionnel)
                //si oui on rentre dans cette condition et on stock l'utilisateur existant dans unwrappedUser
                if let unwrappedEleve = eleve {
                    //ensuite on compare l'id de l'autre utilisateur avec l'id de celui connecté
                    //si les id sont différent alors on on rentre dans le if pour afficher les infos du l'utilisateur optionnel
                    if unwrappedEleve.id != eleveSession.id {
                        
                        
                        VStack {
                            
                            // user informations
                            if let imageFound = unwrappedEleve.carteSelf.first {
                                AsyncImage(url: URL(string: imageFound.url)) { phase in
                                    switch phase {
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .frame(width: 400, height: 400, alignment: .center)
                                    case .failure(_):
                                        Text("Image indisponible")
                                    case .empty:
                                        ProgressView()
                                    }
                                }
                                .frame(width: 200, height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                            Text(unwrappedEleve.nom)
                                .font(.title)
                            Text("jonnhatan@gmail.com")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            
                            // Edit the profil button
                            
                            Button(action: {
                                print("Hugo GARCIA")
                            }) {
                                Text("Editer le profil")
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 18))
                                    .padding()
                                    .foregroundColor(.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.white, lineWidth: 2)
                                    )
                            }
                            .background(Color.blue)
                            .cornerRadius(25)
                        }
                        
                    }
                }
                
                // Section Informations personnelles
                Section(header: Text("INFORMATIONS PERSONNELLES"), content: {
                    HStack{
                        Image(systemName: "bookmark")
                        Text("Mes documents")
                    }
                    
                    HStack{
                        NavigationLink(destination:EleveBesoinAide()) {
                            Image(systemName: "book")
                            Text("FAQ")
                        }
                    }})
                
                
                // Section mes préférences
                Section(header: Text("PREFERENCES"), content: {
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
}
    

#Preview {
    EleveMonProfil()
    //
}
