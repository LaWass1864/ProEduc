import SwiftUI

struct ParentNotification: View {
    
    @State private var isWritingMessageViewPresented = false
        @State private var selectedNotification: Notification?
        @State private var isShowingNotificationDetails = false
        
        var messages: [Notification] = [
            Notification(title: "Nouveau message", text: "Vous avez reçu un nouveau message.", background: Color.blue),
                    Notification(title: "Réunion", text: "N'oubliez pas la réunion demain à 18H.", background: Color.green),
                    Notification(title: "Voyage scolaire", text: "Voyage scolaire en Italie du 8/11 au 15/11", background: Color.orange),
                    Notification(title: "Absence professeur", text: "Mme Anglais sera absente du 9/11 au 10/11", background: Color.red)
        ]
        
        var body: some View {
            VStack {
                NavigationView {
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color(.blueParent))
                                .frame(width: 350, height: 120)
                            
                            Text("Mes notifications")
                                .foregroundColor(.white)
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                        }
                        
                        VStack {
                            ForEach(messages.indices, id: \.self) { index in
                                NotificationBubble(notification: messages[index], selectedIndex: index)
                                    .onTapGesture {
                                        selectedNotification = messages[index]
                                        isShowingNotificationDetails = true
                                    }
                            }
                        }
                        .padding(50)
                    }
                }
                .alert(isPresented: $isShowingNotificationDetails) {
                    Alert(
                        title: Text(selectedNotification?.title ?? ""),
                        message: Text(selectedNotification?.text ?? ""),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
        }
        
        struct NotificationBubble: View {
            var notification: Notification
            var selectedIndex: Int
            var body: some View {
                // il faut des couleurs et mettre une pastille rouge dans le coin pour celle qui n'est pas encore ouverte
                notification.background
                                .overlay(
                                    VStack(alignment: .leading) {
                                        Text(notification.title)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        Text(notification.text)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                        
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
                                     
                                    )
                    )
                                .cornerRadius(30)
                                .overlay(
                                Circle()
                                    .fill(selectedIndex == 1 ? Color(.red) : Color(.clear))
                                    .frame(width: 30, height: 30)
                                    .offset(x:140, y: -55)
                                )
            }
            
            struct ParentNotification_Previews: PreviewProvider {
                static var previews: some View {
                    ParentNotification()
                }
            }
        }
        
        struct Notification {
            var title: String
            var text: String
            var background: Color
        }
        
    }

#Preview {
    ParentNotification()
}
