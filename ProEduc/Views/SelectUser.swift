
import SwiftUI

struct SelectUser: View {


    var body: some View {
        VStack{

            NavigationView {
                ZStack{
                    VStack {
                        Text("Sélectionner un utilisateur")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                        NavigationLink(destination: EleveConnexion()){
                            HStack {
                                ImageView("eleve", label: "Eleves")
                                ImageView("viescolaire", label: "Vie scolaire")
                            }
                        }
                        NavigationLink(destination: ParentConnexion()){
                            HStack {
                                ImageView("parents", label: "Parent")
                                ImageView("professeurs", label: "Professeur")
                            }
                        }
                    }
                    .ignoresSafeArea()
                }
            }
        }
    }

    func ImageView(_ imageName: String, label: String) -> some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(
                Text(label)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .offset(x: 5, y: -50)
            )
            .padding()
    }
}


#Preview {
    SelectUser()
}
