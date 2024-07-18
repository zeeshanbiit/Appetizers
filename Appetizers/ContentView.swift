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
                    Image(systemName: "house")
                    Text("Home")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }
            
        }
    }
}

#Preview {
    AppitizersTabView()
}
