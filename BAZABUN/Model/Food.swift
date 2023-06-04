//
//  Food.swift
//  BAZABUN
//
//  Created by Артемий Дериглазов on 30.05.2023.
//

enum FoodTypes: String {
    case hotDogs
    case cornDogs
    case sides
    case drinks
    case salats
    case secrets
}


struct FoodItem {
    let type: FoodTypes
    let products: [Food]
    
    static func getProducts() -> [FoodItem] {
        [
            FoodItem(type: .cornDogs, products: [
                Food(
                    type: "КОРН-ДОГИ",
                    name: "БАЗАЧИЗ",
                    discription: "Моцарелла в фирменном тесте и панировке с добавдением авторской специи",
                    weight: "120г",
                    photo: "bazaCheese",
                    price: "220р"
                ),
                
                Food(
                    type: "КОРН-ДОГИ",
                    name: "БАЗАДОГ",
                    discription: "Большая сосиска в фирменном тесте и панировке с добавлением авторской специи",
                    weight: "120г",
                    photo: "bazaDog",
                    price: "220р"
                ),
                
                Food(
                    type: "КОРН-ДОГИ",
                    name: "МИКСДОГ",
                    discription: "Микс сыра и сосиски в фирменном тесте и панировке с добавлением авторской специи",
                    weight: "120г",
                    photo: "bazaDog",
                    price: "220р"
                ),
            ]),
            
            FoodItem(type: .hotDogs, products: [
                Food(
                    type: "ХОТ-ДОГИ",
                    name: "БАЗАБАН",
                    discription: "Картофельная булочка, соус, маринованные огурчики, хрустящий лук и сочная сосиска",
                    weight: "120г",
                    photo: "bazabun",
                    price: "220р"
                ),
                
                Food(
                    type: "ХОТ-ДОГИ",
                    name: "ДОГГО 25",
                    discription: "Большая сосиска, особый классический соус, картовельная булочка, хрустящий салат Коул Слоу и медово-горчичный соус",
                    weight: "120г",
                    photo: "doggo25",
                    price: "220р"
                ),
            ]),
            
            FoodItem(type: .sides, products: [
                Food(
                    type: "SIDES",
                    name: "КАРТОФЕЛЬ ФРИ",
                    discription: "Те самые French Fries с той самой авторской специей",
                    weight: "180г",
                    photo: "frenchFries",
                    price: "150р"
                ),
                
                Food(
                    type: "SIDES",
                    name: "КАРТОФЕЛЬНЫЕ ДОЛЬКИ",
                    discription: "Горячие снаружи, мягкие внутри, хрустящие картофельные дольки в специи",
                    weight: "180г",
                    photo: "uzbekianFries",
                    price: "180р"
                ),
                
                Food(
                    type: "SIDES",
                    name: "ЛУКОВЫЕ КОЛЬЦА",
                    discription: "Жареные луковые кольца в панировке",
                    weight: "120г",
                    photo: "onionRings",
                    price: "150р"
                )
            ]),
            
            FoodItem(type: .salats, products: [
                Food(
                    type: "САЛАТИКИ",
                    name: "КОУЛ СЛОУ",
                    discription: "Классический салат из белой, красной капусты и морковки, заправленный медово-горчичным соусом",
                    weight: "Безлимит",
                    photo: "coleslaw",
                    price: "49р"
                )
            ]),
            
            FoodItem(type: .drinks, products: [
                Food(
                    type: "НАПИТКИ",
                    name: "ДОМАШНИЙ ЛИМОНАД",
                    discription: "Только свежевыжатый лимонный сок, сахар, лед и мята",
                    weight: "Безлимит",
                    photo: "homeMadeLemonade",
                    price: "120р"
                )
            ]),
            
            FoodItem(type: .secrets, products: [
                Food(
                    type: "??",
                    name: "MYSTERY SECRET SPICE",
                    discription: "Та сама секретная специя, рецепт которой хранится в штаб квартире BAZABUN. Никто не знает полного списка всех ингредиентов...",
                    weight: "1г",
                    photo: "secretSpice",
                    price: "??"
                ),
                
                Food(
                    type: "??",
                    name: "ДВА БАНАНА ПО ЦЕНЕ ТРЕХ",
                    discription: "Два желтых тропических фрукта, залежавшиеся на полках штаб квартиры БАЗАБАН",
                    weight: "360г",
                    photo: "bananas",
                    price: "297р"
                )
            ])
        ]
    }
}



struct Food {
    let type: String
    let name: String
    let discription: String
    let weight: String
    let photo: String
    let price: String
    
    static func getMenu() -> [Food] {
        [
            Food(
                type: "КОРН-ДОГИ",
                name: "БАЗАЧИЗ",
                discription: "Моцарелла в фирменном тесте и панировке с добавдением авторской специи",
                weight: "120г",
                photo: "bazaCheese",
                price: "220р"
            ),
            
            Food(
                type: "КОРН-ДОГИ",
                name: "БАЗАДОГ",
                discription: "Большая сосиска в фирменном тесте и панировке с добавлением авторской специи",
                weight: "120г",
                photo: "bazaDog",
                price: "220р"
            ),
            
            Food(
                type: "КОРН-ДОГИ",
                name: "МИКСДОГ",
                discription: "Микс сыра и сосиски в фирменном тесте и панировке с добавлением авторской специи",
                weight: "120г",
                photo: "bazaDog",
                price: "220р"
            ),
            
            Food(
                type: "ХОТ-ДОГИ",
                name: "БАЗАБАН",
                discription: "Картофельная булочка, соус, маринованные огурчики, хрустящий лук и сочная сосиска",
                weight: "120г",
                photo: "bazabun",
                price: "220р"
            ),
            
            Food(
                type: "ХОТ-ДОГИ",
                name: "ДОГГО 25",
                discription: "Большая сосиска, особый классический соус, картовельная булочка, хрустящий салат Коул Слоу и медово-горчичный соус",
                weight: "120г",
                photo: "bazabun_logo",
                price: "220р"
            ),
            
            Food(
                type: "SIDES",
                name: "КАРТОФЕЛЬ ФРИ",
                discription: "Те самые French Fries с той самой авторской специей",
                weight: "180г",
                photo: "frenchFries",
                price: "150р"
            ),
            
            Food(
                type: "SIDES",
                name: "КАРТОФЕЛЬНЫЕ ДОЛЬКИ",
                discription: "Горячие снаружи, мягкие внутри, хрустящие картофельные дольки в специи",
                weight: "180г",
                photo: "uzbekianFries",
                price: "180р"
            ),
            
            Food(
                type: "SIDES",
                name: "ЛУКОВЫЕ КОЛЬЦА",
                discription: "Жареные луковые кольца в панировке",
                weight: "120г",
                photo: "onionRings",
                price: "150р"
            ),
            
            Food(
                type: "НАПИТКИ",
                name: "ДОМАШНИЙ ЛИМОНАД",
                discription: "Только свежевыжатый лимонный сок, сахар, лед и мята",
                weight: "Безлимит",
                photo: "homeMadeLemonade",
                price: "120р"
            ),
            
            Food(
                type: "САЛАТИКИ",
                name: "КОУЛ СЛОУ",
                discription: "Классический салат из белой, красной капусты и морковки, заправленный медово-горчичным соусом",
                weight: "Безлимит",
                photo: "bazabun_logo",
                price: "49р"
            ),
            
            Food(
                type: "??",
                name: "MYSTERY SECRET SPICE",
                discription: "Та сама секретная специя, рецепт которой хранится в штаб квартире BAZABUN. Никто не знает полного списка всех ингредиентов...",
                weight: "1г",
                photo: "secretSpice",
                price: "??"
            )
        ]
    }
    static func getTypes() -> [String] {
        let menu = Food.getMenu()
        var result = [String]()
        for item in menu {
            result.append(item.type)
        }
        return result.uniqued()
    }
}


extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}


