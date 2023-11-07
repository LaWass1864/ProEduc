

import SwiftUI


struct ParentEnvoiMsg: View {
    @State private var usernameChild = "DUPONT Lucie"
    @State private var textAbsence = "Taper votre texte ici"
    @State private var profContact = "Monsieur DEBUISSY"
    @State private var isShowingModal = false
    var body: some View {
        
        VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(.blueParent))
                    .frame(width: 350, height: 120)
                    .padding(.all)
                
                Text("Envoyer un message à \(profContact)")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            
            VStack{
                HStack {
                    ZStack {
                        TextField("Nom et prenom de votre enfant", text: $usernameChild)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.bottom, 20)
                        
                        Image(systemName: "mail")
                            .foregroundColor(.gray) // Couleur de l'image
                            .offset(x: 140, y: -10) // Ajustez cette valeur pour déplacer l'image à droite
                    }
                }
                TextEditor(text: $textAbsence)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                           isShowingModal = true
                       }) {
                           Text("Envoyer")
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                               .frame(width: 220, height: 60)
                               .background(Color("blue_parent"))
                               .cornerRadius(35.0)
                       }
                       .alert(isPresented: $isShowingModal) {
                           Alert(
                               title: Text("Votre message a bien été envoyé"),
                              
                               dismissButton: .default(Text("OK"))
                           )
                       }
                   }
            }.padding(25)
        }
    }

#Preview {
    ParentEnvoiMsg()
}
