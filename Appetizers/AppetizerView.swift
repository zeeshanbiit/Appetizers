//
//  AppetizerView.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 19/07/2024.
//

import SwiftUI

struct AppetizerView: View {
    
    @StateObject private var appetizerViewModel:AppetizerViewModel = AppetizerViewModel()
    
    var body: some View {
        ZStack{
            NavigationStack{
                List{
                    ForEach(appetizerViewModel.appetizers){appetizer in
                        AppetizerCell(appetizerImageName: appetizer.strMealThumb, appetizerName: appetizer.strMeal)
                    }
                }
                .navigationTitle(appetizerViewModel.title)
            }.onAppear(){
                appetizerViewModel.getAppetizers()
            }
            if appetizerViewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $appetizerViewModel.alertItem){alertItem in
            Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerView()
}


