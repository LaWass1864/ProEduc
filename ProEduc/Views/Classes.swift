
//
//  Classes.swift
//  ProEduc
//
//  Created by apprenant45 on 26/10/2023.
//

import SwiftUI

struct Classes: View {
    @State private var isChildDetailActive: Bool = false
    @State var selectedChild: String? = nil
    var placeholder = "Selectioner Enfent"
    var dropDownList = ["Lida", "Wassila", "Zachari", "Sofian"]
    
    var body: some View {
        
        //        VStack{
        
        NavigationStack {
            VStack {
                Text("Selectioner votre enfant")
                NavigationLink(
                    destination: ChildDetail(childName: $selectedChild),
                    isActive: $isChildDetailActive,
                    label: { EmptyView() }
                )
                Menu {
                    ForEach(dropDownList, id: \.self) { child in
                        Button(child) {
                            self.selectedChild = child
                            self.isChildDetailActive = true                        }
                    }
                } label: {
                    VStack(spacing: 20) {
                        HStack {
                            Text(selectedChild ?? placeholder)
                                .foregroundColor(selectedChild == nil ? .gray : .black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                        }
                        .padding(.horizontal)
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 2)
                    }
                    .padding()
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
    
    // *** The ChildDetail view is presented when the NavigationLink is activated. It displays information about the selected child.***
    
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
    Classes()
}
