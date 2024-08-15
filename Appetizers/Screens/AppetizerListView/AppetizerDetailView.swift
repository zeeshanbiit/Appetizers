//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 13/08/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("appetizerdetaildummy")
                    .resizable()
                    .frame(width: 390,height: 250)
                VStack(alignment:.center, spacing:30){
                    Text("Appetizer Title")
                        .font(.title)
                        .fontWeight(.medium)
                    Text("This is the appetizer Description that we will use for the multiple purpose")
                        .font(.body)
                        .multilineTextAlignment(.center)
                    HStack(alignment:.center, spacing: 50){
                        Text("Calories")
                        Text("Carbs")
                        Text("Protien")
                    }
                    HStack(alignment:.center, spacing: 50){
                        Text("100")
                        Text("80")
                        Text("50")
                    }
                }.padding(.all)
                Spacer()
                Button{
                    
                }label: {
                    Text("$ 11.99  -  Add to Order")
                        .frame(width: 300, height: 70)
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .background(.green)
                        .cornerRadius(8.0)
                }
            }
        }.overlay(alignment: .topTrailing, content: {
            Button{
                
            }label: {
                Image(systemName: "x.circle")
                    .foregroundColor(.black)
                    .padding(.all)
            }
        })
       
    }
}

#Preview {
    AppetizerDetailView()
}
