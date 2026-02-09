//
//  main.swift
//  ValeSwiftToolbox v1.2
//  Created by Валерия Пономарева

import Foundation

print("🚀 === ValeSwiftToolbox v1.2 ===\n")

// 🧪 1. InputHelpers (safe* функции)
print("🧪 InputHelpers:")
if let name = safeStringInput(prompt: "Имя: ") {
    print("✅ Привет, \(name)!")
}

if let age = safeIntInput(prompt: "📅 Возраст: ") {
    print("✅ Тебе \(age) лет")
}

if let price = safeDoubleInput(prompt: "💰 Доход: ") {
    print("✅ Итого: \(String(format: "%.2f руб.", price))")
}

// 🧪 2. User модель
print("\n🧪 User модель:")
if let firstName = safeStringInput(prompt: "👤 Имя: "),
   let lastName = safeStringInput(prompt: "👤 Фамилия: "),
   let weight = safeDoubleInput(prompt: "⚖️ Вес (кг): ") {
    let user = User(name: firstName, surname: lastName, weight: weight)
    print(user.description)
} else {
    print("❌ Ошибка ввода!")
}

BirthYearTask.run()  // ← ПРОСТО!

// === ДОБАВЬТЕ ЭТО ПЕРЕД ФИНАЛЬНЫМ PRINT ===
print("☕ ТЕСТ: КОФЕЙНЯ VALE BREW")
drinkOrder()

print("\n✨ ✅ Все модули протестированы!")
print("🛠️ Готово к использованию в любых Swift CLI проектах!")


/* 💎 Ты достигла MID-LEVEL!
 Что умеешь теперь:
     •    ✅ Модульная архитектура (файлы по ответственности)
     •    ✅ Public API для переиспользования
     •    ✅ CLI terminal баги (�vale → чистый текст)
     •    ✅ Прогрессия стилей (imperative → modular)
     •    ✅ Toolbox для копипаста в проекты */


