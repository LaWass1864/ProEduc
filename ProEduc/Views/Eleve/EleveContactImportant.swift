import SwiftUI

struct EleveContactImportant: View {
    
    
    @State private var isWritingMessageViewPresented = false
    @State private var selectedNotification: Notification?
    @State private var isShowingNotificationDetails = false
    var phoneNumber = "0662892341"

    
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350.0, height: 120.0)
                    .foregroundColor(Color(red: 0.013, green: 0.78, blue: 0.778))
                    .padding(.all)
                    .overlay(
                        Text("CONTACTS IMPORTANTS")
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
                }) {
                    HStack {
                        Text("Numéro médecin")
                            .font(.title3)
                            .foregroundColor(.blue)
                        Image(systemName: "envelope")
                    }
                }
            }
            // Infirmerie
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(width: 320, height: 100)
                    .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                VStack {
                    Text("Infirmerie")
                    
                    Button(action: {
                        if let url = URL(string: "sms:\(phoneNumber)") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    }) {
                        Text("Numéro médecin")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                }
            }
            // Médecin
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(width: 320, height: 100)
                    .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                VStack {
                    Text("Médecin")
                    
                    Button(action: {
                        if let url = URL(string: "sms:\(phoneNumber)") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    }) {
                        Text("Numéro médecin")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                }
            }
            // Harcèlement
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(width: 320, height: 100)
                    .foregroundColor(Color(red: 0.877, green: 0.887, blue: 0.904))
                VStack {
                    Text("Harcèlement")
                    
                    Button(action: {
                        if let url = URL(string: "sms:\(phoneNumber)") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    }) {
                        Text("Numéro médecin")
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
