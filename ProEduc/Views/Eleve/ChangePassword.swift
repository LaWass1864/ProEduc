import SwiftUI

struct ChangePassword: View {
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @State private var passwordChangeSuccess = false
    @State private var showingAlert = false

    var body: some View {
        NavigationView {
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350.0, height: 120.0)
                        .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                        .padding(.top, 11.0)
                        .overlay(
                            Text("Changer le mot de passe")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .bold()
                                .foregroundColor(.white)
                        )
                    
                }
                Form {
                    Section(header: Text("Changer le mot de passe")) {
                        SecureField("Mot de passe actuel", text: $currentPassword)
                        SecureField("Nouveau mot de passe", text: $newPassword)
                        SecureField("Confirmer le mot de passe", text: $confirmPassword)
                    }
                  
                    Button(action: changePassword)
                       {
                        Text("Enregistrer")
                            .foregroundColor(.white)
                           
                    }
                    .frame(width: 250, height: 50) // Réglage de la largeur et la hauteur
                    .background(Color("green_btn")) // Modification de la couleur d'arrière-plan du bouton
                    .cornerRadius(10) // Ajoutez des coins arrondis si nécessaire
//                    Button(action: changePassword) {
//                        Text("Enregistrer")
//                    }
                }
              
                .alert(isPresented: $showingAlert) {
                    if passwordChangeSuccess {
                        return Alert(title: Text("Succès"), message: Text("Le mot de passe a été modifié avec succès."), dismissButton: .default(Text("OK")))
                    } else {
                        return Alert(title: Text("Échec"), message: Text("Le mot de passe actuel est incorrect ou les nouveaux mots de passe ne correspondent pas."), dismissButton: .default(Text("OK")))
                    }
                }
            }
        }
    }
    func changePassword() {
        // Add your password change logic here, similar to the previous example.
        if currentPassword == "123" && newPassword == confirmPassword {
            // Password change logic here
            passwordChangeSuccess = true
        } else {
            passwordChangeSuccess = false
        }
        showingAlert = true
    }
}

struct ChangePassword_Previews: PreviewProvider {
    static var previews: some View {
        ChangePassword()
    }
}
