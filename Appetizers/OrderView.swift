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
                .navigationTitle("Order View")
        }
       
    }
}

#Preview {
    OrderView()
}
