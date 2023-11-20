//
//  Recipe.swift
//  MiniChallenge1
//
//  Created by Vincenzo Aprile on 19/11/23.
//

import Foundation
import SwiftUI

struct Recipe:  Identifiable, Equatable, Hashable{
    
    var id: UUID = UUID()
    var name:String
    var imageName: String = "noImage"
    var portions: String = "null"
    var origins: String = "No origins"
    var ingredients: String = "No ingredients"
    var process: String = "No description"
    var category: String = "No category"
    var isSaved: Bool = false

}
