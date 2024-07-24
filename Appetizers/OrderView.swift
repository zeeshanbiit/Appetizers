//
//  OrderView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 19/07/2024.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var appetizerViewModel = AppetizerViewModel()
    
    var body: some View {
        
        NavigationStack{
            Text("Order View")
            Button{
                appetizerViewModel.isPresented = true
            }label: {
                Text("Click me")
            }.sheet(isPresented: $appetizerViewModel.isPresented, content: {
                AccountView()
            })
                .navigationTitle("Order View")
        }
       
    }
}

#Preview {
    OrderView()
}
