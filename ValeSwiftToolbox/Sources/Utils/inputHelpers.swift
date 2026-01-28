//
//  inputHelpers.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 28.01.2026.
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

