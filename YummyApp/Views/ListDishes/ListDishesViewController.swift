//
//  ListDishesViewController.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
        
        .init(id: "id1", name: "Garri", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 34.284673764),
        .init(id: "id2", name: "Indomi", descrption: "This is the best i have tasted. This is the best i have tasted This is the best i have tasted This is the best i have tasted This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 105.765432345),
        .init(id: "id3", name: "Pizza", descrption: "This is the best i have tasted", image: "https://picsum.photos/100/200", calories: 48.51543234)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = category.name
        tableView.delegate = self
        tableView.dataSource = self
        
        registerCells()
    }
 
    private func registerCells() {
        
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}




extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as? DishListTableViewCell else { return UITableViewCell() }
        
        cell.setup(dish: dishes[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
