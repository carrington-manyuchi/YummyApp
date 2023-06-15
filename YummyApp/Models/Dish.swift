//
//  Dish.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import Foundation


struct Dish {
    let id: String?
    let name: String?
    let descrption: String
    let image: String?
    let calories: Double?
    
    
    var formattedCalories: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
}
