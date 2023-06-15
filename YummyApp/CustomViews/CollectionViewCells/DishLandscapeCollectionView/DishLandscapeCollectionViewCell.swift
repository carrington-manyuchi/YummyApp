//
//  DishLandscapeCollectionViewCell.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = "DishLandscapeCollectionViewCell"

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.formattedCalories
    }
    
    
}
