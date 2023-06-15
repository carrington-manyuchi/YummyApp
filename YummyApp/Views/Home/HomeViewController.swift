//
//  HomeViewController.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/13.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialsCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "African Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish Two", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish Three", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish Four", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African Dish Five", image: "https://picsum.photos/100/200")
    ]
    
    var populars: [Dish] = [
     
        .init(id: "id1", name: "Garri", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 34.284673764),
        .init(id: "id2", name: "Indomi", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 105.765432345),
        .init(id: "id3", name: "Pizza", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 48.51543234)
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Fried Plantein", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 105.765432345),
        .init(id: "id2", name: "Beans and Garri", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 48.51543234)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        registerCells()
    }
    
    private func registerCells() {
        
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        specialsCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case specialsCollectionView:
            return specials.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as? DishPortraitCollectionViewCell else { return UICollectionViewCell() }
            cell.setup(dish: populars[indexPath.row])
            return cell
            
        case specialsCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as? DishLandscapeCollectionViewCell else { return UICollectionViewCell() }
            cell.setup(dish: specials[indexPath.row])
            return cell
        
        default: return UICollectionViewCell()
        }
    }
}
