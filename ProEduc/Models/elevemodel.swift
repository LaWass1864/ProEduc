// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation


// MARK: - Welcome
struct EleveRequete: Codable {
    let records: [EleveRecord]

}

// MARK: - Record
struct EleveRecord: Codable {
    let id, createdTime: String
    let fields: Eleve
}

// MARK: - Fields
struct Eleve: Codable, Identifiable {
    let parent: [String]
    let carteEntree: [DataBaseImage]
    let prenom: String
    let carteSelf: [DataBaseImage]
    let classe, id, nom: String
    let adresseFromParent: [String]

    enum CodingKeys: String, CodingKey {
        case parent = "Parent"
        case carteEntree = "Carte Entree"
        case prenom
        case carteSelf = "Carte Self"
        case classe
        case id = "Id"
        case nom
        case adresseFromParent = "adresse (from Parent)"
    }
}
