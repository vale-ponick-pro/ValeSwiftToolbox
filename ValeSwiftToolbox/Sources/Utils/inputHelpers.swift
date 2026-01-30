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
        print("❌ Incorrect number format")
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
        print("❌ Incorrect integer format")
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
        print("❌ Введите непустую строку!")
    }
}
