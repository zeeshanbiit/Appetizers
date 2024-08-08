//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Muhammad Zeshan on 07/08/2024.
//

import SwiftUI


final class ImageLoader:ObservableObject{
    
    @Published var image:Image? = nil
    
    func load(fromURLString:String){
        
        NetworkManager.shared.downloadImageFromURL(urlString: fromURLString){uiImage in
            
            guard let uiImage = uiImage else{
                
                return
            }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
           
        }
    }
    
}


struct RemoteImage:View {
    
    var image: Image?
    var body: some View {
        
        image?.resizable() ?? Image("appetizerdummy").resizable()
    }
}


struct AppetizerRemoteImageView:View {
    
    @StateObject var imageLoader:ImageLoader = ImageLoader()
   
    let urlString:String
    
    var body: some View {
        
        RemoteImage(image: imageLoader.image)
            .onAppear(){
                
                imageLoader.load(fromURLString: urlString)
            }
        
    }
}
