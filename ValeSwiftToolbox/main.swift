//
//  main.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 27.01.2026.
//

import Foundation

// MARK: - Безопасный ввод Double с подсказкой

public func safeDoubleInput(prompt: String) -> Double? {
    print(prompt)
    guard let input = readLine(),
          let value = Double(input.trimmingCharacters(in: .whitespaces)) else {
        print("❌ Incorrect number format")
        return nil
    }
    return value
}

// MARK: - Безопасный ввод Int с подсказкой
public func safeIntInput(prompt: String) -> Int? {
    print(prompt)
    guard let input = readLine(),
          let value = Int(input.trimmingCharacters(in: .whitespaces)) else {
        print("❌ Incorrect integer format")
        return nil
    }
    return value
}

// MARK: - Безопасный ввод непустой строки
public func safeStringInput(prompt: String) -> String? {
    print(prompt)
    guard let input = readLine(),
          !input.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("❌ Пустая строка недопустима")
        return nil
    }
    return input.trimmingCharacters(in: .whitespaces)
}

// MARK: - Полный демо toolbox'а
print("🚀 === ValeSwiftToolbox v1.0 ===\n")

let name = safeStringInput(prompt: "👋 Имя: ")
if let userName = name {
    print("✅ Привет, \(userName)!")
}

let age = safeIntInput(prompt: "📅 Возраст: ")
if let years = age {
    print("✅ Тебе \(years) лет")
}

let price = safeDoubleInput(prompt: "💰 Цена: ")
if let cost = price {
    print("✅ Итого: \(cost) руб.")
}

print("\n✨ Все функции протестированы!")
print("🛠️ Готово к копипасту в любой Swift проект!")
