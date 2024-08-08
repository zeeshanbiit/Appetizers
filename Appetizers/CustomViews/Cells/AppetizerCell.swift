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
            AppetizerRemoteImageView(urlString: appetizerImageName)
                .frame(width:60,height: 60)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8.0)
            Text(appetizerName)
            
        }
    }
    
    
}
