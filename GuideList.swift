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
                    
                    let combinedFilteredPlaces = Array(Set(filteredBySearch).intersection(Set(filteredByCategory)))
                    
                    let sortedPlaces = combinedFilteredPlaces.sorted { $0.name < $1.name }
                    
                    ForEach(sortedPlaces){ recipe in
                        NavigationLink{
                            RecipeGuide(recipes: recipe)
                        } label: {
                            ZStack{
                                GuideSelection(recipes: recipe)
                                    .padding()
                                    .background(CustomColor.color)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(5)
                                LikeButtonView()
                            } //End ZStack
                            //End 1
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
            .background(CustomColor.backgroundColor)
        }//End NavigationSayck
    }
}

#Preview {
    GuideList()
}
