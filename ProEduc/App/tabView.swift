
  

import SwiftUI

struct tabView: View {
    @StateObject var eleve = EleveAPIRequestViewModel()
    @StateObject var parent = ParentAPIRequestViewModel()
    @StateObject var prof = ProfAPIRequestViewModel()
    

    @StateObject var eleveSession = Eleve(nom: "Garcia",
                                          prenom: "Hugo",
                                          classe: "4emeB",
                                          professeurs: ["3,1,2"],
                                          adresse: "101 Rue de l'Imagination, Ville Fictive, 78901",
                                          id: "4",
                                          carteEntree: [DataBaseImage(id: "att9cM7UqgqFVTmwx", width: 754, height: 400, url: "https://v5.airtableusercontent.com/v2/22/22/1698948000000/u50pyiT6vBUp3Pp4Ve0Z6g/oZUkzrwQ0kfVObKhrAS3OTc6I2H75ZNnpd1nYfy6FijyBDSTepN6URf-JwH2i9yd-VWH79j74nO2scBaRlOCPIS5ldpsCEn8TJpnnKayW8vtucwmyPq20ihydFdricg0tdTmq1Ru2Lk-okFwsMcLVA/psp-tgrw98TnLqlLSEVw9l45wY7tO97DeBUMcqknaS8", filename: "carte-06.jpg", size: 2800, type: "image/jpeg", thumbnails: Thumbnails(small: .init(url: "", width: 0, height: 0), large: .init(url: "", width: 0, height: 0), full: .init(url: "", width: 1000, height: 1000)))],
                                          carteSelf: [DataBaseImage(id: "att9cM7UqgqFVTmwx", width: 754, height: 400, url: "https://v5.airtableusercontent.com/v2/22/22/1698948000000/u50pyiT6vBUp3Pp4Ve0Z6g/oZUkzrwQ0kfVObKhrAS3OTc6I2H75ZNnpd1nYfy6FijyBDSTepN6URf-JwH2i9yd-VWH79j74nO2scBaRlOCPIS5ldpsCEn8TJpnnKayW8vtucwmyPq20ihydFdricg0tdTmq1Ru2Lk-okFwsMcLVA/psp-tgrw98TnLqlLSEVw9l45wY7tO97DeBUMcqknaS8", filename: "image/jpeg", size: 2800, type: "image/jpeg", thumbnails: Thumbnails(small: .init(url: "", width: 0, height: 0), large: .init(url: "", width: 0, height: 0), full: .init(url: "", width: 1000, height: 1000)))],
                                          idFromEleve: ["recpA7eXWaWZoYT01"],
                                          eleve: ["Hugo"])

                                          
    var body: some View {
        TabView{
            
            ParentMonEspace()
                .tabItem {
                    Text("Mon espace")
                    Image(systemName: "folder")
                        .resizable()
                        .frame(width:90,height:90)
                }
            
            ParentListDoc()
                .tabItem {
                    Text("Document")
                    Image(systemName: "square.and.pencil")
                }
            ParentAnnuaire()
                .tabItem {
                    Text("Annuaire")
                    Image(systemName: "person.3")
                }
            ParentNotification()
                .tabItem {
                    Text("Messagerie")
                    Image(systemName: "bell.and.waves.left.and.right")
                }
          
            
            
        }
        .onAppear {
            Task {
                eleve.allEleve = await eleve.fetchedEleve()
                
            }
        }.environmentObject(eleve)
    }
    
}


#Preview {
    tabView()
}
