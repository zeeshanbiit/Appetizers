//
//  OrderView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 19/07/2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var isPresented = false
    var body: some View {
        
        NavigationStack{
            Text("Order View")
            Button{
                isPresented = true
            }label: {
                Text("Order Detail")
            }.fullScreenCover(isPresented: $isPresented, content: {
                AccountView()
            })
                .navigationTitle("Order View")
        }
       
    }
}

#Preview {
    OrderView()
}
