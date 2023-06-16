//
//  Route.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/16.
//

import Foundation


enum Route {
    
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchCategoryDishes(String)
    case fetchOrders
    
    var description: String {
        
        switch self {
            
        case .fetchAllCategories:
            return  "/dish-categories"
            
        case .placeOrder(let dishId):
            return  "/order/\(dishId)"
            
        case .fetchCategoryDishes(let categoryId):
            return  "/dishes/\(categoryId)"
            
        case .fetchOrders:
            return "/orders"
        }
    }
}
