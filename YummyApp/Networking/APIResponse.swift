//
//  APIResponse.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/16.
// This is going to be the structure of the data that we will be getting from the backend

import Foundation


struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}


