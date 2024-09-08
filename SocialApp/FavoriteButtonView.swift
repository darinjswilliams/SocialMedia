//
//  FavoriteButtonView.swift
//  SocialApp
//
//  Created by Darin Williams on 9/8/24.
//

import SwiftUI

struct FavoriteButtonView: View {
    
    @Binding var isFavorite: Bool
    
    var body: some View {
        VStack {

            HStack{
                
                // You don't need to set .foregroundColor if you use it as Button label. It will automatically pick up
                // from the parent's accentColor. This is a normal behavior of a button in SwiftUI.
                // This can be updated
                
                Button(action: {
                    
                    isFavorite.toggle()
                    
                }, label: {
                    Image(systemName: "heart")
                        .symbolVariant(isFavorite ? .fill : .none)
                        .imageScale(.large)
                        .foregroundColor(.red)
                })
                .buttonStyle(.plain)
            }
           
        }
    }
}

//#Preview {
//    FavoriteButtonView(isFavorite: .constant(true) )
//    FavoriteButtonView(isFavorite: .constant(false) )
//}
