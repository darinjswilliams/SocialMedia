//
//  ContentView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

struct ContentView: View {
    @State private var isFavorite: Bool = true
    @State private var heartColor = Color.black
    let title = "Sunset Beach..Aww"
    let description = "The Beach at Ft Lauderdale is the best we had a lovely evening. Nice Company, Great Food"
    
    var body: some View {
        VStack{
            
            Text(title)
            List {
                // Add your social media post here
                UserPhotoView()
                UserPhotoView()
                UserPhotoView()
            }
            .listStyle(.plain)
            
            //            You don't need to set .foregroundColor if you use it as Button label. It will automatically pick up
            //            from the parent's accentColor. This is a normal behavior of a button in SwiftUI.
            VStack(alignment: .leading, spacing: 15) {

                HStack{
                    
                    Button(action: {
                        
                        isFavorite.toggle()
                        
                    }, label: {
                        Image(systemName: "heart.fill")
                    })
                    .accentColor(Color(isFavorite ? heartColor: Color.red ))
                    
                    
                }
                Text(description)
                
            }
            
        }
    }

}


#Preview {
    ContentView()
}
