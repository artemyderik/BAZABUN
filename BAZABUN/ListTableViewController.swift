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

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .black
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        let foodItem = menu[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        cell.backgroundColor = .black
        
        content.text = foodItem.name
        content.textProperties.font = UIFont(name: "Intro", size: 18) ?? UIFont.systemFont(ofSize: 20)
        content.textProperties.color = .white
        
        content.image = UIImage(named: foodItem.photo)
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
        infoAboutVC.foodItem = menu[indexPath.row]
    } 
}

extension ListTableViewController: listTableViewDelegate {
    func setNewValue(from foodItem: Food) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        menu[indexPath.row] = foodItem
    }
}
