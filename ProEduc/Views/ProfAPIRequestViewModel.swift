//
//  ParentAPIRequestViewModel.swift
//  ProEduc
//
//  Created by wahib zachari on 31/10/2023.
//



import Foundation

class ProfAPIRequestViewModel: ObservableObject {
    
    @Published var allProf = [Prof]()
    
    func fetchedProf() async -> [Prof] {
        var fetchedProf = [Prof]()
        
        guard let baseURL = URL(string: "https://api.airtable.com/v0/appx5SW9jo6zJQImo/Professeurs") else {
            print("wrong url")
            return fetchedProf
        }
        
        var ProfRequest = URLRequest(url: baseURL)
        ProfRequest.httpMethod = "GET"
        ProfRequest.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        do {
            let (serverData, serverResponse) = try await URLSession.shared.data(for: ProfRequest)
            guard let httpResp = serverResponse as? HTTPURLResponse, httpResp.statusCode == 200 else {
                print("bad server response")
                return fetchedProf
            }
            
            let parsedRecord = try JSONDecoder().decode(ProfRequete.self, from: serverData)
       print(parsedRecord)
        parsedRecord.records.forEach { ProfR in
            fetchedProf.append(ProfR.fields)
       }
            
            return fetchedProf
            
            
        } catch let error {
            print("ERROR:", error)
        }
        
        return fetchedProf
        
    }
    
    
}



