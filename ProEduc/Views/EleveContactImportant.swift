import SwiftUI

struct EleveContactImportant: View {
    var phoneNumber = "0662892341" // Numéro de téléphone
    
    var body: some View {
        VStack{
            ZStack {
                    RoundedRectangle(cornerRadius: 25)
                    
                        .frame(width: 350.0, height: 120.0)
                        .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                        .padding(.all)
                        .overlay(
                            Text("CONTACTS IMPORTANT")
                                .frame(width: 350.0, height: 120.0)
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                        )
                    
                }
            VStack {
                Text("Cliquez sur le numéro pour envoyer un message")
                    .padding()
                Button(action: {
                    if let url = URL(string: "sms:\(phoneNumber)") {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                })
                {
                    HStack{
                        Text("numéro medecin")
                            .font(.title3)
                            .foregroundColor(.blue)
                        Image(systemName:"envelope")
                    }}
            }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color.gray)
                            VStack {
                                Text("Infirmerie")
                                
                                
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("numéro medecin")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                }
                            }
                    }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color.gray)
                            VStack {
                                Text("Medecin")
                                
                                
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("numéro medecin")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                }
                            }
                         }
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .frame(width: 320, height: 100)
                            .foregroundColor(Color.gray)
                          
                        VStack {
                                Text("Harcelement")
                                
                                
                                Button(action: {
                                    if let url = URL(string: "sms:\(phoneNumber)") {
                                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                    }
                                }) {
                                    Text("numéro medecin")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                }
                            }
                        }
        }
    }
}


#Preview {
    EleveContactImportant()
}
