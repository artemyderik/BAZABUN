//
//  InfoAboutViewController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 31.05.2023.
//

import UIKit

class InfoAboutViewController: UIViewController {

    //MARK: Public Properties
    var foodItem: Food!
    
    //MARK: IB Outlets
    @IBOutlet var topPicture: UIImageView!
    @IBOutlet var photoOfFood: UIImageView!
    @IBOutlet var nameOfFood: UILabel!
    @IBOutlet var discriptionOfFood: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var addButton: UIButton!
    private var foodBasket = [Food]()
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupAddButton()
    }

    //MARK: IB Actions
    @IBAction func addButtonDidTapped() {
        foodBasket.append(foodItem)
        dismiss(animated: true)
    }
    
    //MARK: Private Methods
    private func setupViews() {
        view.backgroundColor = .black
        
        topPicture.image = UIImage(named: "bazabun_logo")
        photoOfFood.image = UIImage(named: foodItem.photo)
        
        setupTextOf(
            nameOfFood,
            foodItem.name,
                .white,
            UIFont(name: "Intro", size: 39)
        )
        
        setupTextOf(
            discriptionOfFood,
            foodItem.discription,
            discriptionColor,
            UIFont(name: "centurygothic", size: 22)
        )
        
        setupTextOf(
            priceLabel,
            foodItem.price,
            discriptionColor,
            UIFont(name: "Intro", size: 39))
    }
    
    private func setupTextOf(_ label: UILabel, _ text: String, _ color: UIColor, _ font: UIFont?) {
        label.text = text
        label.textColor = color
        label.font = font
    }
    
    private func setupAddButton() {
        addButton.tintColor = #colorLiteral(red: 0.9757878184, green: 0.6566575766, blue: 0, alpha: 1)
        addButton.backgroundColor = .clear
        
        addButton.layer.borderColor = #colorLiteral(red: 0.9757878184, green: 0.6566575766, blue: 0, alpha: 1)
        addButton.layer.borderWidth = 2
        addButton.layer.cornerRadius = 8
        
        addButton.setTitle("+", for: .normal)
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
    }
}


