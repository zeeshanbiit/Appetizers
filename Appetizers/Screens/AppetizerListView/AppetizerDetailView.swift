//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 13/08/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @Binding var isShowingAppetizer:Bool
    let  appetizer:Appetizers?
    
    var body: some View {
            VStack{
                AppetizerRemoteImageView(urlString: appetizer!.strMealThumb)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300,height: 240)
                
                VStack(alignment:.center){
                    Text(appetizer!.strMeal)
                        .font(.title)
                        .fontWeight(.medium)
                    Text(appetizer!.strInstructions)
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                
                HStack(spacing:40){
                    VStack(alignment:.center, spacing: 5){
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text(appetizer!.MealID)
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    VStack(alignment:.center, spacing: 5){
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text(appetizer!.id)
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(alignment:.center, spacing: 5){
                        Text("Protien")
                            .bold()
                            .font(.caption)
                        Text(appetizer!.MealID)
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
               
                
                Button{
                    
                }label: {
                    Text("$ 11.99  -  Add to Order")
                        .frame(width: 260, height: 50)
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .background(.green)
                        .cornerRadius(12.0)
                }.padding(.bottom,30)
            }.frame(width: 300,height: 525)
            .background(Color(.systemBackground))
            .cornerRadius(12.0)
            .shadow(radius: 40)
        .overlay(alignment: .topTrailing, content: {
            Button{
                isShowingAppetizer = false
            }label: {
                ZStack{
                    Circle()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 44,height: 44)
                        .foregroundColor(.black)
                    
                }
                
               
            }
        })
       
    }
}

#Preview {
    AppetizerDetailView(isShowingAppetizer: .constant(false), appetizer: MockData.simpleAppetizer)
}
