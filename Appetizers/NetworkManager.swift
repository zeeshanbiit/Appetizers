//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 01/08/2024.
//

import Foundation

class NetworkManager {
    
    static let stared = NetworkManager()
    static let BaseURL = ""
    private let AppetizerURL =  BaseURL + ""
    
    init(){
        
    }
    
    
    func getAppetizerList(completed: @escaping(Result<[Appetizers], APError>) -> Void){
        
        guard let url = URL(string: AppetizerURL)else{
            completed(.failure(.InvalidURL))
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {(data , response , error) in
            
            
            guard let error = error else{
                completed(.failure(.InvalidError))
                return
            }
            
            guard let response = response as? HTTPURLResponse , response.statusCode == 200 else{
                completed(.failure(.InvalidError))
                return
            }
            guard let data = data else{
                completed(.failure(.InvalidData))
                return
            }
            
            
            
            
        }
        
        
        
        
    }
    
}
