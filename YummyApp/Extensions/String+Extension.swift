//
//  String+Extension.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import UIKit


extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
