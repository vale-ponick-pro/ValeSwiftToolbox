//
//  birthYearTask.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 30.01.2026.
// Sources/Tasks/BirthYearTask.swift

import Foundation

public struct BirthYearTask {
    private static let minYear = 1900
    private static var currentYear: Int { Calendar.current.component(.year, from: Date()) }
    
    public static func runLevel1() {
        print("\n=== УРОВЕНЬ 1: Базовая проверка ===")
        print("Введите год рождения:")
        guard let input = readLine()?.trimmingCharacters(in: .whitespaces),
              !input.isEmpty, let year = Int(input),
              year >= minYear && year <= currentYear else {
            print("❌ Can't be!")
            return
        }
        print("✅ Fank you! (\(year))")
    }
    
    public static func runLevel2() {
        print("\n=== УРОВЕНЬ 2: С разделением логики ===")
        print("Введите год рождения:")
        
        guard let input = readLine()?.trimmingCharacters(in: .whitespaces),
              !input.isEmpty,
              let year = Int(input),
              validateYear(year) != nil else {
            print("❌ Can't be!")
            return
        }
        print("✅ Fank you! (\(year))")
    }
    
    private static func validateYear(_ year: Int) -> String? {
        year >= minYear && year <= currentYear ? "✅ Fank you! (\(year))" : nil
    }
    
    // ✅ ЭТО ВНУТРИ struct!
    public static func run() {
        print("\n🎯 Task16: BirthYearTask")
        print(String(repeating: "=", count: 40))
        
        runLevel1()
        print("\n" + String(repeating: "-", count: 30))
        runLevel2()
        
        print(String(repeating: "=", count: 40))
        print("✅ Все уровни завершены!")
    }
}
