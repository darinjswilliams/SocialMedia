//
//  ContentView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

struct ContentView: View {
    @State private var isFavorite: Bool = true
   
    let title = "Sunset Beach..Aww"
    let description = "The Beach at Ft Lauderdale is the best we had a lovely evening. Nice Company, Great Food"
    
    var body: some View {
        VStack{
            
           PostDescriptView(title: title, description: description)
            List {
                // Add your social media post here
                UserPhotoView()
                UserPhotoView()
                UserPhotoView()
            }
            .listStyle(.plain)
            FavoriteButtonView(isFavorite: $isFavorite)
            
        }
    }

}


struct PostDescriptView: View {
    let title: String
    let description: String
    
    var body: some View {
        HStack{
            VStack{
                Text(title)
                    .bold()
                    .font(.title)
                Text(description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

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


#Preview {
    ContentView()
}
