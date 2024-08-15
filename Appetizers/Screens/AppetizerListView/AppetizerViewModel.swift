//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 25/07/2024.
//

import SwiftUI

class AppetizerViewModel : ObservableObject{
    
    @Published var appetizers : [Appetizers] = []
    @Published var alertItem : AlertItem?
    
    @Published var isLoading = false
    @Published var isShowingAppetizer = false
    @Published var selectedAppetizer:Appetizers?
  
    func getAppetizers(){
        
        isLoading = true
        NetworkManager.shared.getAppetizerList {result in
           
            DispatchQueue.main.async {
                self.isLoading = false
                switch result{
                case .success(let appetizer):
                    self.appetizers = appetizer
                case .failure(let error):
                    switch error{
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                    
                }
            }
           
            
        }
    }
}

