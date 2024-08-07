//
//  OrderView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 19/07/2024.
//

import SwiftUI

struct OrderView: View {
    
  
    
    var body: some View {
        
        NavigationStack{
            Text("Order View")
            Button{
               
               
            }label: {
                Text("Click me")
            }
            .navigationTitle("Order View")
        }
       
    }
}

#Preview {
    OrderView()
}
