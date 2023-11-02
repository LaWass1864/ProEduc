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

// Les classes
class User: Codable, Identifiable, ObservableObject {
    @Published var nom: String
    @Published var prenom: String
    @Published var classe: String
    @Published var professeurs: String
    @Published var adresse: String
    @Published var id: String
    
    //si vous utilisez des attachements sur Airtable toutes vos images vont venir de la même manière
    //donc on utilise un type global d'image, ici DataBaseImage que ce soit utiliser partout et éviter d'avoir 3-4 structures d'images différentes
    //alors que la donnée  reçu reste la même
    @Published var image: [DataBaseImage]
    @Published var idFromEleve: [String]
    @Published var eleve: [String]
    
    //si on souhaite faire une connexion un Bool qui change en fonction de l'action est utile
    //on le met ici au cas où, si il n'est pas utile, on l'enlèvera
    @Published var loggedIn: Bool?
    
    //ce truc là c'est pour nous aider a coder et decoder
    //ça communique les infos envoyer avec ce style pour se conformer au attentes de Airtable
    enum CodingKeys: String, CodingKey {
        case name, status, id, notes, image
        case drink = "Drink"
        case idFromDrink = "id (from Drink)"
    }
    
    //vue qu'on est maintenant dans une class on doit init (mettre prêt à l'emploi) les propriétés de class
    init(id: String, nom: String, prenom: String, classe: String, image: [DataBaseImage], professeur: [String]) {
        self.id = id
        self.nom = nom
        self.prenom = prenom
        self.classe = classe
        self.image = image
        self.professeurs = professeurs
    
    }
    
    //ensuite on leur explique comment elles vont être décodées
    //en utilisant l'enum de CodingKeys on va lui dire quoi décoder
    //il faut comprendre à quoi correspondent ces CodingKeys, pour cela il faut le JSON de votre data
    //chacun de ces keys correspond a une propriété dans votre table Airtable
    //et on donne l'info au décoder.container
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        //ensuite on décode chaque propriété en fonction de sa CodingKey et de son type
        self.idFromDrink = try container.decode([String].self, forKey: .idFromDrink)
        self.name = try container.decode(String.self, forKey: .name)
        self.status = try container.decode(String.self, forKey: .status)
        self.id = try container.decode(String.self, forKey: .id)
        self.notes = try container.decode(String.self, forKey: .notes)
        self.image = try container.decode([DataBaseImage].self, forKey: .image)
        self.drink = try container.decode([String].self, forKey: .drink)
    }
    
    //Le principle pour encoder est le même, on utilise les CodingKeys pour ciblé la bonne propriété
    //et on lui comment encoder
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(idFromDrink, forKey: .idFromDrink)
        try container.encode(name, forKey: .name)
        try container.encode(status, forKey: .status)
        try container.encode(id, forKey: .id)
        try container.encode(notes, forKey: .notes)
        try container.encode(image, forKey: .image)
        try container.encode(drink, forKey: .drink)
    }
    
}
