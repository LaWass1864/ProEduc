//
//  classeParent.swift
//  proEduc
//
//  Created by Apprenant 76 on 23/10/2023.

import SwiftUI

struct ParentAnnuaire: View {
    @State private var isChildDetailActive: Bool = false
    @State var selectedChild: String? = nil
    var placeholder = "Selectionner un enfant"
    var dropDownList = ["Lida", "Wassila", "Zachari", "Sofian"]
   
    var body: some View {
        
        NavigationStack {
            VStack{
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(.blueParent))
                        .frame(width: 350, height: 120)
                        .padding(.all)
                    
                    Text("Les classes")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                }
                
                VStack {
                   
                    NavigationLink(
                        destination: ChildDetail(childName: $selectedChild),
                        isActive: $isChildDetailActive,
                        label: { EmptyView() }
                    )
                   
                    
                    // Ajouter un Picker pour selectionner un enfant
                    List {
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de Francais")
                        }
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de mathématique")
                        }
                        NavigationLink(destination: ParentContactprof()) {
                            Text("Professeur de SVT")
                        }
                    }
                    
                }
            }
            var selectedChildBinding: Binding<Bool> {
                Binding(
                    get: { selectedChild != nil },
                    set: { newValue in
                        if !newValue {
                            selectedChild = nil
                            
                        }
                    }
                )
            }
        }
        
    }
    
    struct ChildDetail: View {
        @Binding var childName: String?
        // *** The selected child's name is passed to the ChildDetail view using a @Binding variable. ***
        var body: some View {
            Text("Child Detail for \(childName ?? "")")
                .navigationBarTitle("Child Detail", displayMode: .inline)
        }
        
    }
}


#Preview {
    ParentAnnuaire()
}
