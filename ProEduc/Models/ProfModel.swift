//
//  ProfModel.swift
//  ProEduc
//
//  Created by Apprenant 76 on 31/10/2023.
//
import Foundation

// MARK: - Welcome
struct ProfRequete: Codable {
    let records: [ProfRecord]

}

// MARK: - Record
struct ProfRecord: Codable {
    let id, createdTime: String
    let fields: Prof
}

// MARK: - Fields
struct Prof: Codable {
    let id, nom, prénom, domaine: String
    let email: String
    let eleve: [String]

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case nom = "Nom"
        case prénom = "Prénom"
        case domaine = "Domaine"
        case email = "Email"
        case eleve = "Eleve"
    }
}
