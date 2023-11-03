import SwiftUI

struct UserListView: View {
    @EnvironmentObject var eleveRequete: EleveAPIRequestViewModel

    var body: some View {
        NavigationView {
            List(eleveRequete.allEleve, id: \.id) { eleve in
                NavigationLink(destination: EleveMonProfil(eleve: eleve)) {
                    Text(eleve.nom)
                        .foregroundColor(.blue)
                }
            }
            .navigationBarTitle("Liste des élèves")
        }
    }
}

struct EleveMonProfil2: View {
    let eleve: Eleve // Assurez-vous d'avoir un modèle Eleve approprié
    
    var body: some View {
        Text("Profil de \(eleve.nom)")
            .navigationBarTitle("Profil")
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
            .environmentObject(EleveAPIRequestViewModel()) // Assurez-vous que EleveAPIRequestViewModel est initialisé
    }
}
