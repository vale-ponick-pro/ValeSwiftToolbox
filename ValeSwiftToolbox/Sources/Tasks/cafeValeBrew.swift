//
//  cafeValeBrew.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

func drinkOrder() {
    print("Task: CafeValeBrew - shaw menu 5 drinks -> enter user order -> offer toppings -> issue final order")
   
   // 1. хранение данных
    struct Drink {
        let name: String
        let price: Double
        let category: String
        let hasCaffeine: Bool
    }
    
    let menu = [
        Drink(name: "Cappuccino", price: 212.5, category: "coffee", hasCaffeine: true),
        Drink(name: "Green Tea", price: 102.8, category: "tea", hasCaffeine: false),
        Drink(name: "Espresso", price: 196.1, category: "coffee", hasCaffeine: true),
        Drink(name: "Fresh orange juice", price: 312.9, category: "juice", hasCaffeine: false),
        Drink(name: "Black Tea", price: 112.3, category: "tea", hasCaffeine: false)
    ]
    // 2. Меню с эмодзи
    for (index, drink) in menu.enumerated() {
        let emoji = drink.category == "coffee" ? "☕" :
                    drink.category == "tea" ? "🍵" : "🍊"
        print("\(index + 1) \(emoji) \(drink.name)")
    }
    
    // 3. Выбор напитка
    print("\nHi! Choose drink - enter it's number (1-5): ", terminator: "")
      guard let input = readLine(),
            let number = Int(input),
            (1...5).contains(number) else {
          print("❌ Invalid input")
          return
      }
    
    // 4. Получить напиток
    let selectedDrink = menu[number - 1]
    print("✅ Your choice: \(selectedDrink.name)")
}




