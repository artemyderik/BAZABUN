//
//  ListNavigationController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 06.06.2023.
//

import UIKit

class ListNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBarAppearance()
    }
    
    private func setNavBarAppearance() {
        let beauty = [
            NSAttributedString.Key.foregroundColor: lightLightBrandColor,
            NSAttributedString.Key.font: UIFont(name: "Intro", size: 21)!
        ]

        UINavigationBar.appearance().titleTextAttributes = beauty
    }
}
