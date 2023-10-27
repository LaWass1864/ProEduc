//
//  Classes.swift
//  ProEduc
//
//  Created by apprenant45 on 26/10/2023.
//

import SwiftUI

struct Classes: View {
    @State var selectedChild: String? = nil
    //    @State var value = ""
    var placeholder = "Selectioner Enfent"
    var dropDownList = ["Lida", "Wassila", "Zachari", "Sofian"]
    
    var body: some View {
        
        VStack{
            NavigationView {
                VStack {
                    Text("Selectioner votre enfant")
                    Menu {
                        ForEach(dropDownList, id: \.self) { child in
                            Button(child) {
                                self.selectedChild = child
                            }
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
                    NavigationLink(
                        
                        destination: ChildDetail(childName: $selectedChild),
                        isActive: Binding(
                            get: { selectedChild != nil },
                            set: { newValue in
                                if !newValue {
                                    selectedChild = nil
                                }
                            }
                        )
                    ) {
                        EmptyView()
                    }
                }
            }
        }
    }
}
    
    
//    NavigationView{
//            VStack{
//                
//                Text("Selectioner votre enfent")
//                NavigationLink(
//                                    destination: ChildDetail(childName: $selectedChild),
//                                    tag: true,
//                                    selection: $selectedChild,
//                                    label: { EmptyView() }
//             )
//// *** The isActive binding for the NavigationLink is set up to control when the link is activated based on the selected child.
//                
//            Menu {
//                    ForEach(dropDownList, id: \.self){ Child in
//                        Button(Child) {
//                            self.selectedChild = Child
//                        }
//                    }
//                } label: {
//                    VStack(spacing: 20){
//                        HStack{
//                            Text(selectedChild ?? placeholder)
//                                .foregroundColor(selectedChild == nil ? .gray : .black)
//                            
////                            Text(value.isEmpty ? placeholder : value)
////                                .foregroundColor(value.isEmpty ? .gray : .black)
//                            Spacer()
//                            Image(systemName: "chevron.down")
//                                .foregroundColor(Color.orange)
//                                .font(Font.system(size: 20, weight: .bold))
//                        }
//                        .padding(.horizontal)
//                        Rectangle()
//                            .fill(Color.orange)
//                            .frame(height: 2)
//                    }.padding()
//                }
//            }
//        }
//    }
//}

// *** The ChildDetail view is presented when the NavigationLink is activated. It displays information about the selected child.***

struct ChildDetail: View {
    @Binding var childName: String?
// *** The selected child's name is passed to the ChildDetail view using a @Binding variable. ***
    var body: some View {
        Text("Child Detail for \(childName ?? "")")
            .navigationBarTitle("Child Detail", displayMode: .inline)
    }
}

#Preview {
    Classes()
}
