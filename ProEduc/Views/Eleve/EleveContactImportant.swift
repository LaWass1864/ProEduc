import SwiftUI

struct EleveContactImportant: View {
    var phoneNumber = "0662892341" // Numéro de téléphone
    
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                HStack{
                   Image("eleve")
                        .resizable()
                        .frame(width: 160.0, height: 160.0)
                        .padding()
                    Text("Contact important")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .bold()
                                .foregroundColor(.white)
                }
                .padding(.trailing)
//                Spacer()
            }
            VStack {
                Text("Cliquez sur le numéro pour envoyer un message")
                    .padding()
                              
            }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                        VStack {
                            Text("Infirmerie")
                            HStack{
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("06 55 66 43 21")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    Image(systemName:"envelope")
                                }
                            }
                        }
                    }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                            VStack {
                                Text("Medecin")
                                
                                
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("07 84 64 64 44")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    Image(systemName:"envelope")
                                }
                            }
                         }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                        VStack {
                                Text("Harcelement")
                                
                                
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("01 33 33 33 33")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    Image(systemName:"envelope")
                                }
                            }
                        }
        }
    }
}


#Preview {
    EleveContactImportant()
}
