//
//  Listingview.swift
//  discospot
//
//  Created by Davide Tavelli on 03/01/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView{
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Tony Boy, Madera club")
                        .fontWeight(.semibold)
                    
                    Text("13km")
                        .foregroundStyle(.gray)
                    
                    Text("6 gennaio")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4){
                        Text("25€")
                            .fontWeight(.semibold)
                        Text("all night")
                    }
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
