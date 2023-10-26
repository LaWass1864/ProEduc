//
//  Classes.swift
//  ProEduc
//
//  Created by apprenant45 on 26/10/2023.
//

import SwiftUI

struct Classes: View {

    @State var value = ""
    var placeholder = "Selectioner Enfent"
    var dropDownList = ["Lida", "Wassila", "Zachari", "Sofian"]
    var body: some View {
        NavigationStack{
            VStack{
                
                Text("Selectioner votre enfent")
                Menu {
                    ForEach(dropDownList, id: \.self){ Child in
                        Button(Child) {
                            self.value = Child
                        }
                    }
                } label: {
                    VStack(spacing: 20){
                        HStack{
                            Text(value.isEmpty ? placeholder : value)
                                .foregroundColor(value.isEmpty ? .gray : .black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                        }
                        .padding(.horizontal)
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 2)
                    }.padding()
                }
            }
        }
    }
}



#Preview {
    Classes()
}
