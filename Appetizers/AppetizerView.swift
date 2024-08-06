//
//  AppetizerView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 19/07/2024.
//

import SwiftUI

struct AppetizerView: View {
    
    @StateObject var appetizerViewModel:AppetizerViewModel = AppetizerViewModel()
    
    var body: some View {
        ZStack{
           
            NavigationStack{
                
                List{
                    ForEach(appetizerViewModel.appetizers){appetizers in
                        AppetizerCell(appetizerImageName: appetizers.strMealThumb, appetizerName: appetizers.strMeal)
                    }
                }
                    .navigationTitle("Appetizer")
            }.onAppear(){
                appetizerViewModel.getAppetizers()
            }
            if appetizerViewModel.isLoading{
                LoadingView()
            }
        }.alert(item: $appetizerViewModel.alertItem){alertitem in
            Alert(title: alertitem.title,message: alertitem.message,dismissButton: alertitem.dismissButton)
            
        }
        
    }
}

#Preview {
    AppetizerView()
}


