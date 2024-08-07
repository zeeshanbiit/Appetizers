//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 01/08/2024.
//

import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    static let BaseURL = "https://www.themealdb.com/api/json/v1/1/search.php?f=a"
    private let AppetizerURL =  BaseURL + ""
    private let cache = NSCache<NSString, UIImage>()

    
    init(){
        
    }
    
    
    func getAppetizerList(completed: @escaping(Result<[Appetizers], APError>) -> Void){
        
        guard let url = URL(string: AppetizerURL)else{
            completed(.failure(.invalidURL))
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {(data , response , error) in
            
            
            if let _ = error{
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
    
    
    
    func downloadImage(fromURLString urlString:String ,completed: @escaping(UIImage?)-> Void){
        
        let cacheKey = NSString(string: urlString)
        
        if let image = self.cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString)else{
            completed(nil)
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {(data , response , error) in
            
            guard let data = data , let image = UIImage(data: data)else{
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
            
        }
        task.resume()
        
         
           
    }
}
