//
//  MainTabBarController.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 06.06.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()

    }

    private func generateTabBar() {
        viewControllers = [
            generateVC(viewController: ListNavigationController(rootViewController: ListTableViewController()), title: "МЕНЮ", image: UIImage(systemName: "takeoutbag.and.cup.and.straw.fill")),
            generateVC(viewController: PromoViewController(), title: "АКЦИИ", image: UIImage(systemName: "star.circle.fill")),
            generateVC(viewController: BasketViewController(), title: "КОРЗИНА", image: UIImage(systemName: "basket.fill")),
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
            viewController.tabBarItem.title = title
            viewController.tabBarItem.image = image
        
            return viewController
        }
    }

