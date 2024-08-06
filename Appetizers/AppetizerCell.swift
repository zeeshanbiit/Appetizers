//
//  AppetizerCell.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 06/08/2024.
//

import SwiftUI

struct AppetizerCell:View{
    
    var appetizerImageName:String
    var appetizerName:String
    
    var body: some View{
       
        HStack{
            Image(appetizerImageName)
                .resizable()
                .frame(width:60,height: 60)
            Text(appetizerName)
            
        }
    }
    
    
}
