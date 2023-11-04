import SwiftUI

struct SelectUser2: View {
    let imageCornerRadius: CGFloat = 20

    var body: some View {
        VStack{
            NavigationView {
                ZStack{
                    VStack {
                        NavigationLink(destination: EleveConnexion()){
                            HStack {
                                ImageView("eleve", label: "Eleves")
                                ImageView("viescolaire", label: "Vie scolaire")
                            }
                        }
                        NavigationLink(destination: EleveConnexion()){
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
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .cornerRadius(imageCornerRadius)
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
    SelectUser2()
}
