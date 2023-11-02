import SwiftUI
import Foundation

struct EleveMonProfil: View {
    @State private var isDarkModeEnabled: Bool = false
    @State private var notificationEnabled: Bool = false
    //ce userSession correspond a l'utilisateur qui utilise son téléphone et/ou qui est enregistré
    @EnvironmentObject var eleveSession: Eleve
    
    //comme on va afficher des drink il nous faut appeler tous Drink dans cette vue aussi
    @EnvironmentObject var eleveRequest: EleveAPIRequestViewModel
    //et comme on veut utiliser la même vue de profil, au lieu de l'écrire 2 fois on passe en optionnel un User
    //si on a bien 1 autre utilisateur (différent de celui enregistré) alors on affiche cette utilisateur
    var eleve: Eleve?
    // Switch the app language
    @State private var languageIndex = 0
    var languageOptions = ["Français", "English"]
    
    
    var body: some View {
        NavigationView {
            Form {
                ZStack {
                    //ici on s'assure que le l'autre utilisateur est bien existant (l'optionnel)
                    //si oui on rentre dans cette condition et on stock l'utilisateur existant dans unwrappedUser
                    if let unwrappedUser = eleve {
                        //ensuite on compare l'id de l'autre utilisateur avec l'id de celui connecté
                        //si les id sont différent alors on on rentre dans le if pour afficher les infos du l'utilisateur optionnel
                        if unwrappedUser.id != eleveSession.id {
                            HStack{
                                Spacer()
                                VStack {
                                    
                                    // user informations
                                    if let imageFound = unwrappedUser.image.first {
                                        AsyncImage(url: URL(string: imageFound.url)) {
                                            phase in
                                            if let image = phase.image {
                                                Image("oeoeoe")
                                                    .resizable()
                                                    .frame(width:100, height: 100, alignment: .center)
                                            } else if phase.error != nil {
                                                Text("Image indisponible")
                                            } else {
                                                ProgressView()
                                            }
                                        }
                                        Text("Jonatan diakaté")
                                            .font(.title)
                                        Text("jonnhatan@gmail.com")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Spacer()
                                        
                                        // Edit the profil button
                                        
                                        Button(action: {
                                            print("Edit Profile tapped")
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
                                    Spacer()
                                }
                            }
                            
                            // Personal information section
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
                            .navigationBarTitle("Mon Profil")
                    }
                    
                }
            }
        }
    }
}
        #Preview {
            EleveMonProfil()
//            EleveMonProfil(eleve: Eleve(id: "att9cM7UqgqFVTmwx", 
//                                        name: "Tremblay",
//                                        prenom:"Lida",
//                                        classe: "6emeA",
//                                        carteSelf: "Carte Self",
//                                        carteEntree: "Carte Entree",
//                                        image: [DataBaseImage(id: "2222", width: 1000, height: 1000, url: "", filename: "carte-06.jpg", size: 2800, type: "image/jpeg", thumbnails: Thumbnails(small: .init(url: "", width: 0, height: 0), large: .init(url: "", width: 0, height: 0), full: .init(url: "", width: 1000, height: 1000)))],
//                                        eleve: [String](),
//                                        idFromEleve: [String]()))
        }
