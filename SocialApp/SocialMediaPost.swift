//
//  SocialMediaPost.swift
//  SocialApp
//
//  Created by Darin Williams on 9/8/24.
//

import SwiftUI

struct SocialMediaPost: View {

        @State private var isFavorite: Bool = false
       
        var body: some View {
            VStack{
                UserPhotoView()
                HStack{
                    PostDescriptView(title: "Sunset Beach..Aww",
                                     description:
                                        "The Beach at Ft Lauderdale is the best we had a lovely evening. Nice Company, Great Food")
                    
                    FavoriteButtonView(isFavorite: $isFavorite)
                }
                
            }
        }
}

#Preview {
    SocialMediaPost()
}
