//
//  main.swift
//  ValeSwiftToolbox
import Foundation

print("🚀 === ValeSwiftToolbox v1.1 ===\n")

// 🧪 Тесты с НОВЫМИ именами переменных
print("🧪 InputHelpers:")
let inputName = safeStringInput(prompt: "👋 Имя: ")
if let resultName = inputName { print("✅ Привет, \(resultName)!") }

let inputAge = safeIntInput(prompt: "📅 Возраст: ")
if let resultAge = inputAge { print("✅ Тебе \(resultAge) лет") }

let inputPrice = safeDoubleInput(prompt: "💰 Цена: ")
if let resultPrice = inputPrice { print("✅ Итого: \(resultPrice) руб.") }

// 🧪 User тест (firstName/lastName НЕ конфликтуют)
print("\n🧪 User модель:")
guard let firstName = safeStringInput(prompt: "👤 Имя:"),
      let lastName = safeStringInput(prompt: "👤 Фамилия:"),
      let weight = safeDoubleInput(prompt: "⚖️ Вес:"), weight > 0 else {
    print("❌ Ошибка!")
    exit(1)
}

let user = User(name: firstName, surname: lastName, weight: weight)
print(user.description)

print("\n✨ Готово!")

