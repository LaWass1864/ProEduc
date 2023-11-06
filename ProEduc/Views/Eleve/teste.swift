//
//  teste.swift
//  ProEduc
//
//  Created by elamine heuss on 06/11/2023.
//

import SwiftUI

struct teste: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Doccuments ")
                .padding()
           
        }
        HStack{ // des méditation
            
           
                ZStack {    // pour superposer
                    Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.049, brightness: 0.603, opacity: 0.588))
                //.multilineTextAlignment (.center)
                    .frame(width: 350, height: 100)
               
                    VStack(alignment: .leading){
                  
//                        Text(" ")
//                        .foregroundColor(.black)
//                       // Text(" ")
                        
                            ZStack{
                                Rectangle()
                        
                           
                            . cornerRadius(40)
                            .foregroundColor(Color(.white))
                            .frame(width: 220, height: 40)
                            Text("Justificatif de domicile 🏠")
                                

                                }
                                            }
                    
                        }
       
            
        
            
//                ZStack{
//
//                Rectangle()
//                    .cornerRadius(40)
//                    .foregroundColor(Color(hue: 1.0, saturation: 0.049, brightness: 0.603, opacity: 0.588))
//                    //.multilineTextAlignment (.center)
//                    .frame(width: 180, height: 170)
//
//
//                    }
            
            }//fin des méditation
        Spacer()
        Image("Unknown")
        ZStack {
            Rectangle()
                .cornerRadius(40)
                .foregroundColor(Color(hue: 1.0, saturation: 0.049, brightness: 0.603, opacity: 0.588))
            //.multilineTextAlignment (.center)
                .frame(width: 200, height: 45)
            HStack{
                Text("Enregistrer")
                Image(systemName: "square.and.arrow.down")
                    .foregroundColor(.black)
            }
        }
        Spacer()
    }
}

#Preview {
    teste()
}
