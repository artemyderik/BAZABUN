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
        tableView.backgroundColor = brandColor
        tableView.rowHeight = 100
        navigationItem.titleView?.backgroundColor = .black
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        food.count
       // Food.getTypes().count
    }
    
     /*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch food[section].type {
        case .hotDogs:
            return "ХОТ-ДОГИ"
        case .cornDogs:
            return "КОРН-ДОГИ"
        case .sides:
            return "SIDES"
        case .drinks:
            return "НАПИТКИ"
        case .salats:
            return "САЛАТИКИ"
        default:
            return "??"

        }
        //return result
        //Food.getTypes()[section]
    }
      */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        food[section].products.count
        //return menu.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        
        let foodItem = food[indexPath.section].products[indexPath.row]
        
       // let foodItem = menu[indexPath.row]
        var content = cell.defaultContentConfiguration()

        cell.backgroundColor = brandColor
        
        content.text = foodItem.name
        
        //content.textProperties.font = UIFont(name: "centurygothic", size: 18) ?? UIFont.systemFont(ofSize: 20)
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
        let infoAbout = storyboard.instantiateViewController(withIdentifier: "InfoAbout")

        self.present(infoAbout, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoAboutVC = segue.destination as? InfoAboutViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoAboutVC.delegate = self
        infoAboutVC.foodItem = food[indexPath.section].products[indexPath.row]
        //infoAboutVC.foodItem = menu[indexPath.row]
    } 
}

//MARK: listTableViewDelegate
extension ListTableViewController: listTableViewDelegate {
    func setNewValue(from foodItem: Food) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        menu[indexPath.row] = foodItem
    }
}

//MARK: UITableViewDelegate
extension ListTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let foodTypeLabel = UILabel(
            frame: CGRect(
                x: 15,
                y: 0,
                width: view.frame.width,
                height: 40
            )
        )
        
        switch food[section].type {
        case .hotDogs:
            foodTypeLabel.text = "ХОТ-ДОГИ"
        case .cornDogs:
            foodTypeLabel.text = "КОРН-ДОГИ"
        case .sides:
            foodTypeLabel.text = "SIDES"
        case .drinks:
            foodTypeLabel.text = "НАПИТКИ"
        case .salats:
            foodTypeLabel.text = "САЛАТИКИ"
        default:
            foodTypeLabel.text = "??"
        }
        
        foodTypeLabel.font = UIFont(name: "Progress-BoldItalic", size: 33)
        foodTypeLabel.textColor = lightBrandColor
        foodTypeLabel.backgroundColor = brandColor
        
        let contentView = UIView()
        contentView.addSubview(foodTypeLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        //view.backgroundColor = .black
    }
    
    
}
