//
//  DishCategory.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import Foundation

struct DishCategory: Decodable {
    let id: String?
    let name: String?
    let image: String?
    
    enum CodingKeys:String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
