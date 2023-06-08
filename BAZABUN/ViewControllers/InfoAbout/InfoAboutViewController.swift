//
//  InfoAboutViewController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 31.05.2023.
//

import UIKit

protocol listTableViewDelegate {
    func setNewValue(from foodItem: Food)
}

class InfoAboutViewController: UIViewController {
    var foodItem: Food!    
    
    @IBOutlet var topPicture: UIImageView!
    @IBOutlet var photoOfFood: UIImageView!
    @IBOutlet var nameOfFood: UILabel!
    @IBOutlet var discriptionOfFood: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullBeautySetup()
        setupAddButton()
    }

    @IBAction func addButtonDidTapped() {
        
        dismiss(animated: true)
    }
    
    private func fullBeautySetup() {
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
        addButton.tintColor = .white
        addButton.backgroundColor = brandColor
        addButton.setTitle("+", for: .normal)
        addButton.layer.cornerRadius = 8
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
    }
}


