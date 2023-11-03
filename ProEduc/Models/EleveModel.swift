

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


// Les classes
class Eleve: Codable, Identifiable, ObservableObject {
    @Published var nom: String
    @Published var prenom: String
    @Published var classe: String
    @Published var professeurs: [String]
//    @Published var adresse: String
    @Published var id: String
    @Published var parent: [String]
    @Published var adresseFromParent: [String]
    @Published var prenomFromParent: [String]

    //si vous utilisez des attachements sur Airtable toutes vos images vont venir de la même manière
    //donc on utilise un type global d'image, ici DataBaseImage que ce soit utiliser partout et éviter d'avoir 3-4 structures d'images différentes
    //alors que la donnée  reçu reste la même
   
   
    @Published var carteEntree: [DataBaseImage]
    @Published var carteSelf : [DataBaseImage]
    //si on souhaite faire une connexion un Bool qui change en fonction de l'action est utile
    //on le met ici au cas où, si il n'est pas utile, on l'enlèvera
    @Published var loggedIn: Bool?
    
    //ce truc là c'est pour nous aider a coder et decoder
    //ça communique les infos envoyer avec ce style pour se conformer au attentes de Airtable
    enum CodingKeys: String, CodingKey {
            case professeurs = "Professeurs"
            case parent = "Parent"
            case carteEntree = "Carte Entree"
            case prenom
            case carteSelf = "Carte Self"
            case classe
            case id = "Id"
            case nom
            case adresseFromParent = "adresse (from Parent)"
            case prenomFromParent = "prenom (from Parent)"
        }
    
    //vue qu'on est maintenant dans une class on doit init (mettre prêt à l'emploi) les propriétés de class
    init(nom: String, prenom: String, classe: String, professeurs: [String], id: String, parent: [String], adresseFromParent: [String], prenomFromParent: [String], carteEntree: [DataBaseImage], carteSelf: [DataBaseImage]) {
        self.nom = nom
        self.prenom = prenom
        self.classe = classe
        self.professeurs = professeurs
//        self.adresse = adresse
        self.id = id
        self.parent = parent
        self.adresseFromParent = adresseFromParent
        self.prenomFromParent = prenomFromParent
        self.carteEntree = carteEntree
        self.carteSelf = carteSelf
//        self.loggedIn = loggedIn
    }
    //ensuite on leur explique comment elles vont être décodées
    //en utilisant l'enum de CodingKeys on va lui dire quoi décoder
    //il faut comprendre à quoi correspondent ces CodingKeys, pour cela il faut le JSON de votre data
    //chacun de ces keys correspond a une propriété dans votre table Airtable
    //et on donne l'info au décoder.container
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        //ensuite on décode chaque propriété en fonction de sa CodingKey et de son type
        self.nom = try container.decode(String.self, forKey: .nom)
        self.prenom = try container.decode(String.self, forKey: .prenom)
        self.classe = try container.decode(String.self, forKey: .classe)
        self.professeurs = try container.decode([String].self, forKey: .professeurs)
        self.adresseFromParent = try container.decode([String].self, forKey: .adresseFromParent)
        self.id = try container.decode(String.self, forKey: .id)
        self.parent = try container.decode([String].self, forKey: .parent)
        self.prenomFromParent = try container.decode([String].self, forKey: .prenomFromParent)
//        self.loggedIn = try container.decode(Bool.self, forKey: .loggedIn)
        self.carteEntree = try container.decode([DataBaseImage].self, forKey: .carteEntree)
        self.carteSelf = try container.decode([DataBaseImage].self, forKey: .carteSelf)
    }
    
    //Le principle pour encoder est le même, on utilise les CodingKeys pour ciblé la bonne propriété
    //et on lui comment encoder
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nom, forKey: .nom)
        try container.encode(prenom, forKey: .prenom)
        try container.encode(adresseFromParent, forKey: .adresseFromParent)
        try container.encode(professeurs, forKey: .professeurs)
        try container.encode(parent, forKey: .parent)
        try container.encode(id, forKey: .id)
        try container.encode(prenomFromParent, forKey: .prenomFromParent)
//        try container.encode(eleve, forKey: .eleve)
        try container.encode(classe, forKey: .classe)
        try container.encode(carteEntree, forKey: .carteEntree)
        try container.encode(carteSelf, forKey: .carteSelf)
    }
    
}

