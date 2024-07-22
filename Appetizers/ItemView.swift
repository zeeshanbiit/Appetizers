//
//  ItemView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 23/07/2024.
//

import SwiftUI

struct ItemView: View {
    
    var imageName:String
    var itemName:String
    var body: some View {
        Image(systemName: imageName)
        Text(itemName)
    }
}

#Preview {
    ItemView(imageName: "house", itemName: "Home")
}
