//
//  Alert.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 06/08/2024.
//

import SwiftUI

struct AlertItem:Identifiable {
   
    let id = UUID()
    let title:Text
    let message:Text
    let dismissButton : Alert.Button
}

struct AlertContext{
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("The data received from the server is Invalid. Please contact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again latter or contact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("There was an issue connvecting to the server. If this presists, please contact support"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("unable to complete your request at this time . Please check your internet connection and try again"), dismissButton: .default(Text("Ok")))
}
