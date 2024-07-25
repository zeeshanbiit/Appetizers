//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 25/07/2024.
//

import SwiftUI

class AppetizerViewModel : ObservableObject{
    
    @Published var isPresented = false
    
}

extension AppetizerViewModel{
    
    func CheckExtension(){
        
        print("Test Extension")
    }
}

extension Color{
    
    func DarkBlack(){
        print("dark black")
    }
}
