

import Foundation

class EleveAPIRequestViewModel: ObservableObject {
    
    @Published var allEleve = [Eleve]()
    
    func fetchedEleve() async -> [Eleve] {
        var fetchedEleve = [Eleve]()
        
        guard let baseURL = URL(string: "https://api.airtable.com/v0/appx5SW9jo6zJQImo/Eleve") else {
            print("wrong url")
            return fetchedEleve
        }
        
        var EleveRequest = URLRequest(url: baseURL)
        EleveRequest.httpMethod = "GET"
        EleveRequest.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        do {
            let (serverData, serverResponse) = try await URLSession.shared.data(for: EleveRequest)
            guard let httpResp = serverResponse as? HTTPURLResponse, httpResp.statusCode == 200 else {
                print("bad server response")
                return fetchedEleve
            }
            
            let parsedRecord = try JSONDecoder().decode(EleveRequete.self, from: serverData)
            
            parsedRecord.records.forEach { drink in
                fetchedEleve.append(drink.fields)
            }
            
            return fetchedEleve
            
            
        } catch let error {
            print("ERROR:", error)
        }
        
        return fetchedEleve
    }
    
    
}
