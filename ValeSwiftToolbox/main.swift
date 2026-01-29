//
//  main.swift
//  ValeSwiftToolbox
import Foundation

print("🚀 === ValeSwiftToolbox v1.1 ===\n")

// 🧪 Тесты с НОВЫМИ именами переменных
// Замени блок тестов InputHelpers:
print("🧪 InputHelpers:")
let inputName = safeStringInput(prompt: "👋 Имя: ")
if let resultName = inputName?.trimmingCharacters(in: .whitespaces) {
    print("✅ Привет, \(resultName)!")
}

let inputAge = safeIntInput(prompt: "📅 Возраст: ")
if let resultAge = inputAge { print("✅ Тебе \(resultAge) лет") }

let inputPrice = safeDoubleInput(prompt: "💰 Цена: ")
if let resultPrice = inputPrice {
    let formattedPrice = String(format: "%.2f руб.", resultPrice)
    print("✅ Итого: \(formattedPrice)")
}

// 🧪 User тест (firstName/lastName НЕ конфликтуют)
print("\n🧪 User модель:")
guard let firstName = safeStringInput(prompt: "👤 Имя: "),
      let lastName = safeStringInput(prompt: "👤 Фамилия: "),
      let weight = safeDoubleInput(prompt: "⚖️ Вес (кг): ") else {
    print("❌ Ошибка!")
    exit(1)
}

let user = User(name: firstName, surname: lastName, weight: weight)
print(user.description)

print("\n✨ Готово!")

