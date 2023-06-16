//
//  AllDishes.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/16.
//

import Foundation



struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
