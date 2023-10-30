//
//  QrCode.swift
//  ProEduc
//
//  Created by Apprenant 76 on 30/10/2023.
//

import SwiftUI

struct QrCode: View {
    var body: some View {
        Text("Scannez votre QRCode")
            .padding()
        
        QRCodeGenerate(url: "www.google.com")
    }
}

#Preview {
    QrCode()
}
