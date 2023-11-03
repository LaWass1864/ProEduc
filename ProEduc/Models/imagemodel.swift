//
//  imagemodel.swift
//  ProEduc
//
//  Created by Apprenant 76 on 30/10/2023.
//

//
//  imagemodel.swift
//  ProEduc
//
//  Created by wahib zachari on 30/10/2023.
//

import Foundation
// MARK: - Carte
struct DataBaseImage: Codable {
    let id: String
    let width, height: Int
    let url: String
    let filename: String
    let size: Int
    let type: String
    let thumbnails: Thumbnails
}

// MARK: - Thumbnails
struct Thumbnails: Codable {
    let small, large, full: Full
}

// MARK: - Full
struct Full: Codable {
    let url: String
    let width, height: Int
}
struct Student {
    let name: String
    let imageURL: URL?
}
