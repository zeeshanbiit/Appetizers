//
//  ContentView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 13/07/2024.
//

import SwiftUI

struct AppitizersTabView: View {
    var body: some View {
        TabView{
            AppetizerView()
                .tabItem {
                    ItemView(imageName:  "house", itemName: "Home")
                }
            OrderView()
                .tabItem {
                    ItemView(imageName: "bag", itemName: "Order")
                   
                }
            AccountView()
                .tabItem {
                    ItemView(imageName: "person.crop.circle.fill", itemName: "Account")
                }
            
        }.accentColor(Color("DarkGreen"))
    }
}

#Preview {
    AppitizersTabView()
}
