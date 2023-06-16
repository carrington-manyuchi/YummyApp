//
//  Dish.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import Foundation


struct Dish: Decodable {
    let id: String?
    let name: String?
    let description: String?
    let image: String?
    let calories: Int?
    
    
    var formattedCalories: String {
           return "\(calories ?? 0) calories"
       }
}


