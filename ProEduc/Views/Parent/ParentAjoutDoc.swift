import SwiftUI
import UIKit
import MobileCoreServices

struct DocumentPickerView: UIViewControllerRepresentable {
    @Binding var documentURL: URL?
    
    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let documentPicker = UIDocumentPickerViewController(documentTypes: [String(kUTTypePDF), String(kUTTypeText)], in: .import)
        documentPicker.delegate = context.coordinator
        return documentPicker
    }
    
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPickerView
        
        init(_ parent: DocumentPickerView) {
            self.parent = parent
        }
        
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            if let url = urls.first {
                parent.documentURL = url
            }
        }
        
        func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        }
    }
}



struct ParentAjoutDoc: View {
    @State private var docName: String = ""
    @State private var textAbsence = "Entrer la raison de cette absence"
    @State private var isShowingModal = false
    @State private var documentURL: URL?
    @State private var isDocumentSent = false
    @State private var isShowingAlert = false
    
    let lightGreyColor = Color.gray.opacity(0.4)
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(.blueParent))
                        .frame(width: 350, height: 120)
                        .padding(.all)
                    
                    Text("Nouveau document")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                }
                
                VStack {
                    Text("Nom du document")
                        .font(.title3)
                        .bold()
                    TextField("Nom du document", text: $docName)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                   
                    Text("Description")
                        .font(.title3)
                        .bold()
                        
                    TextEditor(text: $textAbsence)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .foregroundColor(lightGreyColor)
                    // Bouton upload un document
                    Button(action: {
                        // Ouvrir l'explorateur de documents
                        isShowingModal = true
                    }) {
                        ZStack{
                            Circle()
                                .fill(Color("blue_parent"))
                                .frame(width: 80, height: 80)
                            Image(systemName: "plus.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                        }
                    }
                    // Bouton envoyer
                    Button(action: {
                        isShowingAlert = true
                    }) {
                        Text("Envoyer")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color("blue_parent"))
                            .cornerRadius(35.0)
                    }
                    .alert(isPresented: $isShowingAlert) {
                        Alert(
                            title: Text("Votre document a bien été pris en compte"),
                            
                            dismissButton: .default(Text("OK"))
                        )
                    }
                    
                }
                .padding(25)
            }
        }
        .sheet(isPresented: $isShowingModal) {
            DocumentPickerView(documentURL: $documentURL)
        }
        
    }
}

#Preview {
  
        ParentAjoutDoc()
    }

