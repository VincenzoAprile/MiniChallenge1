//
//  RecipeGuide.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//


import SwiftUI

struct RecipeGuide: View {
    
    var recipes: Recipe
    
    var body: some View {
        
            ScrollView {
                VStack(alignment: .leading){
                        
                        Image(recipes.imageName)
                            .resizable()
                            .scaledToFit()
                            
                        
                        Text(recipes.name)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .bold()
                            .padding()
                            
                    Text("Portions: " + recipes.portions)
                        .padding()
                    
                        
                    
                    Text("Ingredients: " + recipes.ingredients)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(5)
                        .padding()
                        
                        Text("Process: " + recipes.process)
                            .multilineTextAlignment(.leading)
                            .font(.callout)
                            .lineSpacing(5)
                            .padding()
                            
                        
                    }
                    
                }
            .background(CustomColor.backgroundColor)
                .cornerRadius(0)
            .ignoresSafeArea()
        }
    }
    


#Preview {
    
    let recipes = Recipe(name: "Cake", imageName: "Pound_layer_cake", portions: "For 4 people" ,origins: "From America", ingredients: "\n1 cup white sugar,\n½ cup unsalted butter,\n2 large eggs,\n2 teaspoons vanilla extract,\n1 ½ cups all-purpose flour,\n1 ¾ teaspoons baking powder,\n½ cup milk", process: "Gather all ingredients. Preheat the oven to 350 degrees F (175 degrees C). Grease and flour a 9-inch square cake pan.\n Cream sugar and butter together in a mixing bowl. Add eggs, one at a time, beating briefly after each addition. Mix in vanilla.\nCombine flour and baking powder in a separate bowl.\nAdd to the wet ingredients and mix well. Add milk and stir until smooth. Pour batter into the prepared cake pan.\nBake in the preheated oven until the top springs back when lightly touched, 30 to 40 minutes.\nEnjoy!")
    
    return RecipeGuide(recipes: recipes)
}
