//
//  DishDetailViewController.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var caloriesLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.descrption
    }
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
    }
    
}
