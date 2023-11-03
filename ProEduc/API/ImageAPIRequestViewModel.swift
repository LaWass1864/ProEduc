////
////  ImageAPIRequestViewModel.swift
////  ProEduc
////
////  Created by apprenant45 on 03/11/2023.
////
//
//import Foundation
//
//class AirtableService {
//    let apiKey = "patmkOqfXoropsmNB.3cc177830d05dd32f52f51b828c2ca6dd0a6be91b51153f93b0d28f514f16a5e"
//let baseURL = "https://api.airtable.com/v0/YOUR_APP_ID/YOUR_TABLE_NAME"
//    
//    func fetchStudents(completion: @escaping ([Student]?) -> Void) {
//        guard let url = URL(string: baseURL) else {
//            completion(nil)
//            return
//        }
//        
//        var request = URLRequest(url: url)
//        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
//        
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let data = data {
//                do {
//                    let decodedData = try JSONDecoder().decode(StudentsResponse.self, from: data)
//                    completion(decodedData.records)
//                } catch {
//                    completion(nil)
//                }
//            } else {
//                completion(nil)
//            }
//        }.resume()
//    }
//}
//
//struct StudentsResponse: Decodable {
//    let records: [Student]
//}
