//
//  ParentModel.swift
//  ProEduc
//
//  Created by Apprenant 76 on 30/10/2023.
//

//
//  ParentModel.swift
//  ProEduc
//
//  Created by wahib zachari on 30/10/2023.
//

import Foundation


// MARK: - Welcome
struct ParentRequete: Codable {
    let records: [ParentRecord]

}

// MARK: - Record
struct ParentRecord: Codable {
    let id, createdTime: String
    let fields: Parent
}

// MARK: - Fields
struct Parent: Codable {
    let eleveID: [String]
    let phone, nom, adresse, prenom: String
    let id: String
   let father: Bool?
    let document: [DataBaseImage]
    let email: String
    let nameOfChildFromEleve: [String]
  let mother: Bool?

    enum CodingKeys: String, CodingKey {
        case eleveID = "Eleve ID"
        case phone, nom, adresse, prenom
        case id = "Id"
        case father = "Father"
        case document, email
        case nameOfChildFromEleve = "name of child (from Eleve)"
        case mother = "Mother"
    }
}
