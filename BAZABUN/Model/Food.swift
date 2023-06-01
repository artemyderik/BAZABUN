//
//  Food.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 30.05.2023.
//

struct Food {
    let type: String
    let name: String
    let discription: String
    let weight: String
    let photo: String
    
    static func getMenu() -> [Food] {
        [
            Food(
                type: "КОРН-ДОГИ",
                name: "БАЗАЧИЗ",
                discription: "Моцарелла в фирменном тесте и панировке с добавдением авторской специи",
                weight: "120г",
                photo: "bazabun_logo"
            ),
            
            Food(
                type: "КОРН-ДОГИ",
                name: "БАЗАДОГ",
                discription: "Большая сосиска в фирменном тесте и панировке с добавлением авторской специи",
                weight: "120г",
                photo: "bazabun_logo"
            ),
            
            Food(
                type: "КОРН-ДОГИ",
                name: "МИКСДОГ",
                discription: "Микс сыра и сосиски в фирменном тесте и панировке с добавлением авторской специи",
                weight: "120г",
                photo: "bazabun_logo"
            ),
            
            Food(
                type: "ХОТ-ДОГИ",
                name: "БАЗАБАН",
                discription: "Картофельная булочка, соус, маринованные огурчики, хрустящий лук и сочная сосиска",
                weight: "120г",
                photo: "bazabun"
            ),
            
            Food(
                type: "SIDES",
                name: "КАРТОФЕЛЬ ФРИ",
                discription: "Те самые French Fries с той самой авторской специей",
                weight: "180г",
                photo: "frenchFries"
            ),
            
            Food(
                type: "SIDES",
                name: "КАРТОФЕЛЬНЫЕ ДОЛЬКИ",
                discription: "Горячие снаружи, мягкие внутри, хрустящие картофельные дольки в специи",
                weight: "180г",
                photo: "uzbekianFries"
            )
        ]
    }
}
