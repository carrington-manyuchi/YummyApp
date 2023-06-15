//
//  CategoryCollectionViewCell.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/14.
//

import UIKit
import Kingfisher


class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryCollectionViewCell"

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    
    func setup(category: DishCategory) {
        categoryTitleLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
    
}
