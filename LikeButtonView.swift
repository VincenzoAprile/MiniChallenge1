//
//  LikeButtonView.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//



import SwiftUI

struct LikeButtonView: View {
    var body: some View {
        Button() {
            print("Recipe added to the favourites!")
        } label: {
            Image(systemName: "heart.fill")
                .font(.title)
                
        }
        .padding(10)
        .background(Color.white)

        .clipShape(Circle())
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing, 50)
        .padding(.top, 70)
        .padding(.horizontal,-20)

        .accessibilityLabel("Favourite button")
        .accessibilityHint("Button to add a recipe to your favourites")
        
    }
}

#Preview {
    LikeButtonView()
}
