//
//  GuideSelection.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//


import SwiftUI

struct GuideSelection: View {
    var recipes: Recipe
    var body: some View {
        //ZStack {
            VStack(alignment: .leading){
                Image(recipes.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height:200)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.horizontal,-18)
                    .padding(.vertical,-18)
                
                Text(recipes.name)
                    .font(.title3)
                    .bold()
                    .padding(.top,30)
                    //.padding(.bottom,-15)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal,-18)
                    .accessibilityHint("This is the name of the dish")
                
                    
                    
            }
            //.clipShape(RoundedRectangle(cornerRadius: 0))
            //.frame(height: 200)
            .padding()
        //}// end Zstack
        
        
        
    }
}

#Preview {
    let recipes = Recipe(name: "Cake", imageName: "Pound_layer_cake", portions: "For 4 people" ,origins: "From America", ingredients: "1 cup white sugar, ½ cup unsalted butter, 2 large eggs, 2 teaspoons vanilla extract, 1 ½ cups all-purpose flour, 1 ¾ teaspoons baking powder, ½ cup milk", process: "Gather all ingredients. Preheat the oven to 350 degrees F (175 degrees C). Grease and flour a 9-inch square cake pan. Cream sugar and butter together in a mixing bowl. Add eggs, one at a time, beating briefly after each addition. Mix in vanilla. Combine flour and baking powder in a separate bowl. Add to the wet ingredients and mix well. Add milk and stir until smooth. Pour batter into the prepared cake pan. Bake in the preheated oven until the top springs back when lightly touched, 30 to 40 minutes. Enjoy!")
    
    return GuideSelection(recipes: recipes)
}
