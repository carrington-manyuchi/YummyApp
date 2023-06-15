//
//  ListOrdersViewController.swift
//  YummyApp
//
//  Created by DA MAC M1 157 on 2023/06/15.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var orders: [Order] = [
        .init(id: "id1", name: "Carrington Manyuchi", dish: .init(id: "id1", name: "Pap and Samp", descrption: "Best meal ever", image: "https://picsum.photos/100/200", calories: 48.51543234)),
        
        .init(id: "id2", name: "Kamila", dish: .init(id: "id4", name: "Rice and Chicken", descrption: "Modern Receipe best meal ever", image: "https://picsum.photos/100/200", calories: 48.51543234)),
        
        .init(id: "id3", name: "Josy Manyuchi", dish: .init(id: "id3", name: "Rice and Goat", descrption: "Traditional foon and best meal ever", image: "https://picsum.photos/100/200", calories: 48.51543234))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        registerCells()
        
        title = "Orders"
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}



extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as? DishListTableViewCell else { return UITableViewCell() }
        
        cell.setup(order: orders[indexPath.row])
        return cell 
    }
}
