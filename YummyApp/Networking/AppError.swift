//
//  AppError.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/16.
//

import Foundation


enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidURL
    case serverError(String)
    
    var errorDescription: String? {
        
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "Bruhhh I have no idea whats going on"
        case .invalidURL:
            return "Hey!!, give me a valid url"
        case .serverError(let error):
            return error
        }
    }
    
}
