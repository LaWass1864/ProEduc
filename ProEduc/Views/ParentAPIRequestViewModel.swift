//
//  ParentAPIRequestViewModel.swift
//  ProEduc
//
//  Created by wahib zachari on 31/10/2023.
//



import Foundation

class ParentAPIRequestViewModel: ObservableObject {
    
    @Published var allParent = [Parent]()
    
    func fetchedParent() async -> [Parent] {
        var fetchedParent = [Parent]()
        
        guard let baseURL = URL(string: "https://api.airtable.com/v0/appx5SW9jo6zJQImo/Parent") else {
            print("wrong url")
            return fetchedParent
        }
        
        var ParentRequest = URLRequest(url: baseURL)
        ParentRequest.httpMethod = "GET"
        ParentRequest.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        do {
            let (serverData, serverResponse) = try await URLSession.shared.data(for: ParentRequest)
            guard let httpResp = serverResponse as? HTTPURLResponse, httpResp.statusCode == 200 else {
                print("bad server response")
                return fetchedParent
            }
            
            let parsedRecord = try JSONDecoder().decode(ParentRequete.self, from: serverData)
            
            parsedRecord.records.forEach { drink in
                fetchedParent.append(drink.fields)
            }
            
            return fetchedParent
            
            
        } catch let error {
            print("ERROR:", error)
        }
        
        return fetchedParent
    }
    
    
}


