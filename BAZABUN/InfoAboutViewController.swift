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
    var delegate: listTableViewDelegate!
    
    
    @IBOutlet var topPicture: UIImageView!
    @IBOutlet var photoOfFood: UIImageView!
    @IBOutlet var nameOfFood: UILabel!
    @IBOutlet var discriptionOfFood: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullBeautySetup()
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
    }
    
    private func setupTextOf(_ label: UILabel, _ text: String, _ color: UIColor, _ font: UIFont?) {
        label.text = text
        label.textColor = color
        label.font = font
    }
}


