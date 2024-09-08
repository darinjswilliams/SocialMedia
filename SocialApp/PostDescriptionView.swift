//
//  PostDescriptionView.swift
//  SocialApp
//
//  Created by Darin Williams on 9/8/24.
//

import SwiftUI

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

#Preview {
    PostDescriptView( title: "Love the Beach", description: "Enjoying Ft. Lauderdale")
}
