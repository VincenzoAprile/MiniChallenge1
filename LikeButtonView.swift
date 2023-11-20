//
//  LikeButtonView.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//


import SwiftUI

struct LikeButtonView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.title2)
            .controlSize(.small)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color.accentColor)

            .clipShape(Circle())
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 50)
            .padding(.top, 70)
            .padding(.horizontal,-20)
        
    }
}

#Preview {
    LikeButtonView()
}
