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
                            .onTapGesture {
                                appetizerViewModel.selectedAppetizer = appetizers
                                appetizerViewModel.isShowingAppetizer = true
                            }
                    }
                }
                    .navigationTitle("Appetizer")
                    .disabled(appetizerViewModel.isShowingAppetizer )
            }.onAppear(){
                appetizerViewModel.getAppetizers()
            }
            .blur(radius: appetizerViewModel.isShowingAppetizer ? 20 : 0)
            if appetizerViewModel.isShowingAppetizer{
                AppetizerDetailView(isShowingAppetizer: $appetizerViewModel.isShowingAppetizer, appetizer: appetizerViewModel.selectedAppetizer)
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


