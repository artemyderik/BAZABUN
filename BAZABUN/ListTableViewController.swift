//
//  ListTableViewController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 31.05.2023.
//
import UIKit

class ListTableViewController: UITableViewController {
    var delegate: listTableViewDelegate!
        
    private var menu = Food.getMenu()
    private var food = FoodItem.getProducts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "food")
        setUpViews()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        food.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        food[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        
        let foodItem = food[indexPath.section].products[indexPath.row]
        
        var content = cell.defaultContentConfiguration()

        cell.backgroundColor = brandColor
        
        content.text = foodItem.name
        
        content.textProperties.font = UIFont(name: "Intro", size: 21) ?? UIFont.systemFont(ofSize: 20)
        content.textProperties.color = .white
        
        content.image = UIImage(named: foodItem.photo) ?? UIImage(named: "bazabun_logo")
        content.imageProperties.maximumSize.width = 80
        
        cell.contentConfiguration = content
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "InfoAbout", bundle: nil)
        guard let infoAbout = storyboard.instantiateViewController(withIdentifier: "InfoAbout") as? InfoAboutViewController else { return }
        infoAbout.foodItem = food[indexPath.section].products[indexPath.row]
        
        present(infoAbout, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = brandColor
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
}

//MARK: UITableViewDelegate
extension ListTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let foodTypeLabel = UILabel(
            frame: CGRect(
                x: 12,
                y: 0,
                width: view.frame.width,
                height: 40
            )
        )
        
        switch food[section].type {
        case .hotDogs:
            foodTypeLabel.text = " ХОТ-ДОГИ"
        case .cornDogs:
            foodTypeLabel.text = " КОРН-ДОГИ"
        case .sides:
            foodTypeLabel.text = " ЗАКУСКИ"
        case .drinks:
            foodTypeLabel.text = " НАПИТКИ"
        case .salats:
            foodTypeLabel.text = " САЛАТИКИ"
        default:
            foodTypeLabel.text = " ??"
        }
        
        foodTypeLabel.font = UIFont(name: "Progress-BoldItalic", size: 33)
        foodTypeLabel.textColor = lightLightBrandColor
        
        let contentView = UIView()
        contentView.addSubview(foodTypeLabel)
        
        return contentView
    }
}

//MARK: SetUpViews Method
extension ListTableViewController {
    private func setUpViews() {
        setUpTableView()
        setUpNavBar()
        setUp(tabBar: tabBarController?.tabBar)
    }
    
    private func setUpTableView() {
        tableView.backgroundColor = brandColor
        tableView.rowHeight = 100
    }

    private func setUpNavBar() {
        navigationItem.title = "МЕНЮ"
        navigationController?.navigationBar.barTintColor = brandColor
    }
    
    private func setUp(tabBar: UITabBar?) {
        tabBar?.tintColor = lightLightBrandColor
        tabBar?.unselectedItemTintColor = .white
        tabBar?.backgroundColor = .brown
        tabBar?.barTintColor = .brown
    }
}
