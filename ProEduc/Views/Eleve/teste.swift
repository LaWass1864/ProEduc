import SwiftUI

struct teste: View {
    var body: some View {
        NavigationStack {
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color("green_student"))
                        .frame(width: 350, height: 80) // Réduire la hauteur du rectangle

                    Text("Justificatif de domicile 🏠")
                        .foregroundColor(Color(.white))
                        .frame(height: 80)
                        .font(.title)
                }

            }
Spacer()
            Image("Unknow")
                .resizable()
                .frame(width: 400, height: 550) // Agrandir l'image

            ZStack {
                Rectangle()
                    .cornerRadius(40)
                    .foregroundColor(Color("green_student"))
                    .frame(width: 200, height: 45)

                HStack {
                    Text("Enregistrer")
                        .foregroundColor(.white)

                    Image(systemName: "square.and.arrow.down")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    teste()
}
