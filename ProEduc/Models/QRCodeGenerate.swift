//
//  QRCodeGenerate.swift
//  ProEduc
//
//  Created by Apprenant 76 on 30/10/2023.
//

//
//  QRCodeGenerate.swift
//  ProEduc
//
//  Created by Apprenant 76 on 30/10/2023.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeGenerate: View {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    let url: String
    
    var body: some View {
        Image(uiImage: imageGenerate(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
    }
    
    func imageGenerate(_ url: String) -> UIImage {
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
        if let qrcodeImage = filter.outputImage {
            if let cgImage = context.createCGImage(qrcodeImage, from: qrcodeImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        return UIImage(systemName: "xmark") ?? UIImage()
    }
}
