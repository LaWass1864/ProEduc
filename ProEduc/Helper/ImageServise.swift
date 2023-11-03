//
//  ImageServise.swift
//  ProEduc
//
//  Created by apprenant45 on 03/11/2023.
//

import SwiftUI
import Foundation

class ImageService: ObservableObject {
    @Published var image: UIImage?

    func fetchImage(from imageURL: URL) {
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }.resume()
    }
}
//#Preview {
//    ImageService()
//    
//}
