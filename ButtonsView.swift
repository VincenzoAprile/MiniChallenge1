//
//  ButtonsView.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//


import SwiftUI


struct ButtonsView: View {
    @Binding var selectedCategory: String?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action: { selectedCategory = nil }) {
                    Image(systemName: "xmark")
                        .padding(4)
                }
                .foregroundColor(CustomColor.textColor)
                .accessibilityLabel("Button to reset filtered tags")
                .accessibilityHint("Button used to filter your favourites")
                
                Button(action: { selectedCategory = "Favourites" }) {
                    HStack {
                        Text("Favourites")
                    }
                    .padding(4)
                    .background(selectedCategory == "Favourites" ? Color.accentColor : CustomColor.backgroundColorDark)
                    .cornerRadius(20)
                }
                .foregroundColor(selectedCategory == "Favourites" ? CustomColor.cardColor : Color.accentColor)
                .accessibilityLabel("Favourites")
                .accessibilityHint("Button to select your favourite recipes")

                Button(action: { selectedCategory = "Appetizers" }) {
                    HStack {
                        Text("Appetizers")
                    }
                    .padding(4)
                    .background(selectedCategory == "Appetizers" ? Color.accentColor : CustomColor.backgroundColorDark)
                    .cornerRadius(25)
                }
                .foregroundColor(selectedCategory == "Appetizers" ? CustomColor.cardColor : Color.accentColor)
                .accessibilityLabel("Appetizers")
                .accessibilityHint("Button used to select appetizers")

                Button(action: { selectedCategory = "1° Courses" }) {
                    HStack {
                        Text("1° Courses")
                    }
                    .padding(4)
                    .background(selectedCategory == "1° Courses" ? Color.accentColor : CustomColor.backgroundColorDark)
                    .cornerRadius(25)
                }
                .foregroundColor(selectedCategory == "1° Courses" ? CustomColor.cardColor : Color.accentColor)
                .accessibilityLabel("First courses")
                .accessibilityHint("Button used to select the main courses")

                Button(action: { selectedCategory = "2° Courses" }) {
                    HStack {
                        Text("2° Courses")
                    }
                    .padding(4)
                    .background(selectedCategory == "2° Courses" ? Color.accentColor : CustomColor.backgroundColorDark)
                    .cornerRadius(25)
                }
                .foregroundColor(selectedCategory == "2° Courses" ? CustomColor.cardColor : Color.accentColor)
                .accessibilityLabel("Second Courses")
                .accessibilityHint("Button used to select the second courses")

                Button(action: { selectedCategory = "Desserts" }) {
                    HStack {
                        Text("Desserts")
                    }
                    .padding(4)
                    .background(selectedCategory == "Desserts" ? Color.accentColor : CustomColor.backgroundColorDark)
                    .cornerRadius(20)
                }
                .foregroundColor(selectedCategory == "Desserts" ? CustomColor.cardColor : Color.accentColor)
                .accessibilityLabel("Button desserts")
                .accessibilityHint("Button used to select desserts")
                
                
            }
            .padding(.horizontal)
            
        }
        .accessibilityLabel("List of scrollable tags")
    }
}


#Preview {

    ButtonsView(selectedCategory: .constant("xmark"))
}
