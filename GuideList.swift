//
//  GuideList.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//
import SwiftUI
import UIKit

struct GuideList: View {
    
    
    @State private var searchText = ""
    @State private var selectedCategory: String?
    var recipeList = RecipeList()
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack {
                    
                    ButtonsView(selectedCategory: $selectedCategory)
                    
                    
                    let filteredBySearch = recipeList.recipes.filter { searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText) }
                    
                    let filteredByCategory = selectedCategory != nil ? recipeList.recipes.filter { $0.category == selectedCategory } : recipeList.recipes
                    
                    let combinedFilteredRecipes = Array(Set(filteredBySearch).intersection(Set(filteredByCategory)))
                    
                    let sortedRecipes = combinedFilteredRecipes.sorted { $0.name < $1.name }
                    
                    ForEach(sortedRecipes){ recipe in
                        NavigationLink{
                            RecipeGuide(recipes: recipe)
                        } label: {
                            ZStack{
                                GuideSelection(recipes: recipe)
                                    .padding()
                                    .background(CustomColor.cardColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(5)
                                LikeButtonView()
                                    .accessibilityLabel("Favourite button")
                            }
                             //End ZStack
                        } //End label
                        .padding(.horizontal, 10)
                    } //End ForEach
                    .shadow(radius: 10)
                } //End VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                //.padding(.all)
                .searchable(text: $searchText, prompt: "Search places")
                .navigationTitle("All Recipes")
            } //End ScrollView
            .background(CustomColor.backgroundColorDark)
        }//End NavigationSayck
    }
}

#Preview {
    GuideList()
}
