//
//  inputHelpers.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 28.01.2026.
//
import Foundation

// MARK: - safeDoubleInput
public func safeDoubleInput(prompt: String) -> Double? {
    print(prompt, terminator: "")
    fflush(stdout)
    guard let input = readLine(),
          let value = Double(input.trimmingCharacters(in: .whitespaces)) else {
        print("❌ Invalid number format!")
        return nil
    }
    return value
}

// MARK: - safeIntInput
public func safeIntInput(prompt: String) -> Int? {
    print(prompt, terminator: "")
    fflush(stdout)
    guard let input = readLine(),
          let value = Int(input.trimmingCharacters(in: .whitespaces)) else {
        print("❌ Invalid integer format!")
        return nil
    }
    return value
}

// MARK: - safeStringInput
public func safeStringInput(prompt: String) -> String? {
    while true {
        print(prompt, terminator: "")
        fflush(stdout)
        if let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines),
           !input.isEmpty {
            return input
        }
        print("❌ Invalid input!")
    }
}

// MARK: - String Comparisons (новый раздел)
public extension String {
    /// Проверка Swift игнорируя регистр (unicode-safe)
    var isSwift: Bool {
        caseInsensitiveCompare("swift") == .orderedSame
    }
    
    /// Универсальное сравнение без учета регистра
    func isEqual(to other: String) -> Bool {
        caseInsensitiveCompare(other) == .orderedSame
    }
}

// MARK: - Language Checker
/// Проверяет любимый язык программирования
/// - Parameter language: Ввод пользователя
/// - Returns: "SWIFT" если Swift, иначе "OTHER"
public func chooseFavoriteLanguage(_ language: String) -> String {
    language.isSwift ? "SWIFT" : "OTHER"
}
