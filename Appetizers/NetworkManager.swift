//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 01/08/2024.
//

import Foundation

class NetworkManager {
    
    static let stared = NetworkManager()
    static let BaseURL = "www.themealdb.com/api/json/v1/1/search.php?f=a"
    private let AppetizerURL =  BaseURL + ""
    
    init(){
        
    }
    
    
    func getAppetizerList(completed: @escaping(Result<[Appetizers], APError>) -> Void){
        
        guard let url = URL(string: AppetizerURL)else{
            completed(.failure(.invalidURL))
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {(data , response , error) in
            
            
            guard let error = error else{
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse , response.statusCode == 200 else{
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode(AppetizerMeals.self, from: data)
                completed(.success(decoderResponse.meals))
            }catch{
                completed(.failure(.invalidData))
            }
           
        }
        task.resume()
    }
    
}
