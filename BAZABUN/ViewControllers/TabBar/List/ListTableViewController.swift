//
//  ListTableViewController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 31.05.2023.
//
import UIKit

class ListTableViewController: UITableViewController {
        
    //MARK: Private properties
    private var foodByTypes = FoodItem.getProducts()
    
    //MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "food")
        setUpViews()
    }

    // MARK: UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        foodByTypes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodByTypes[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        
        let foodItem = foodByTypes[indexPath.section].products[indexPath.row]
        
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
        guard let infoAboutVC = storyboard.instantiateViewController(withIdentifier: "InfoAbout") as? InfoAboutViewController else { return }
        infoAboutVC.foodItem = foodByTypes[indexPath.section].products[indexPath.row]
        
        present(infoAboutVC, animated: true)
    }

}

//MARK: UITableViewDelegate
extension ListTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let foodTypeLabel = UILabel(
            frame: CGRect(
                x: 12,
                y: 0,
                width: view.frame.width,
                height: 40
            )
        )

        foodTypeLabel.text = foodByTypes[section].products[0].type
        foodTypeLabel.font = UIFont(name: "Progress-BoldItalic", size: 33)
        foodTypeLabel.textColor = lightLightBrandColor
        
        let contentView = UIView()
        contentView.addSubview(foodTypeLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = brandColor
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
