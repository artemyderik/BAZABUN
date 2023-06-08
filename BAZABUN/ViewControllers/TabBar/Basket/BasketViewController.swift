//
//  BasketViewController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 06.06.2023.
//

import UIKit

class BasketViewController: UIViewController, UITableViewDataSource {

    let baskeTableView = UITableView()
    
    var food = [Food(
        type: "SIDES",
        name: "КАРТОФЕЛЬ ФРИ",
        discription: "Те самые French Fries с той самой авторской специей",
        weight: "180г",
        photo: "frenchFries",
        price: "150р"
    )]
    var menu = FoodItem.getProducts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        view.addSubview(baskeTableView)
        setUpTableView()
        
        baskeTableView.dataSource = self
        baskeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "basketCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basketCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = food[indexPath.row].name
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    private func setUpTableView() {
        baskeTableView.translatesAutoresizingMaskIntoConstraints = false
        baskeTableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        baskeTableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        baskeTableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        baskeTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
    }
}
