//
//  RecipeList.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 20/11/23.
//

import Foundation

class RecipeList: ObservableObject{
    
    var recipes: [Recipe] = [Recipe(name: "Cake", imageName: "Pound_layer_cake", portions: "For 4 people" ,origins: "From America", ingredients: "\n1 cup white sugar,\n ½ cup unsalted butter,\n 2 large eggs,\n 2 teaspoons vanilla extract,\n 1 ½ cups all-purpose flour,\n 1 ¾ teaspoons baking powder,\n ½ cup milk", process: "Gather all ingredients. Preheat the oven to 350 degrees F (175 degrees C). Grease and flour a 9-inch square cake pan. Cream sugar and butter together in a mixing bowl. Add eggs, one at a time, beating briefly after each addition. Mix in vanilla. Combine flour and baking powder in a separate bowl. Add to the wet ingredients and mix well. Add milk and stir until smooth. Pour batter into the prepared cake pan. Bake in the preheated oven until the top springs back when lightly touched, 30 to 40 minutes. Enjoy!", category: "Desserts"),
                             
        Recipe(name: "Easy oven-baked pork ribs", imageName: "", portions: "For 5 people" ,origins: "From America", ingredients: "\n500g baby back pork ribs,\n 1 tbsp cumin,\n 1 tbsp smoked paprika,\n 1 tsp cayenne pepper,\n 4 tbsp ketchup,\n 2 tbsp light brown soft sugar,\n 2 tbsp Worcestershire sauce,\n 1 tbsp apple cider vinegar,\n 1 tsp garlic powder,\n dash of hot sauce (optional)", process: "Heat the oven to 160/140 fan/gas 3. Use a small sharp knife to remove any white membrane from the ribs, being careful not to cut the flesh, then put on a baking tray. Combine the cumin, paprika and cayenne in a small bowl with a big pinch of salt, then rub all over the ribs. Add 3 tbsp of water to the tray, cover tightly with foil and bake for 3 hrs until the meat is falling off the bone. When the ribs are nearly done, combine the remaining ingredients in a small pan and bring to a simmer. Cook for 1-2 mins until combined and reduced slightly. Brush all over the ribs and bake again, uncovered for 10 mins until sticky. Serve straightaway.", category: "2° Courses")
    
    ]
}
