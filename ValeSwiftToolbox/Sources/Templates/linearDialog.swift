//
//  linearDialog.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 03.02.2026.
//
// ШАБЛОН: Линейный диалог
// Копируй → Меняй → Запускай

import Foundation

// 1. ОБЪЯВИ ФУНКЦИЮ
func createDialog() {
    
    // 2. НАСТРОЙ ДИАЛОГ
    // Приветствие: ______
    // Вопрос: ______
    // Варианты: ______
    // Реакции: ______
    
    print("Приветствие")
    print("Вопрос: ", terminator: "")
    
    // 3. БЕЗОПАСНЫЙ ВВОД
    guard let input = readLine()?.trimmingCharacters(in: .whitespaces),
          !input.isEmpty else {
        print("Ошибка ввода")
        return
    }
    
    let answer = input.lowercased()
    
    // 4. ОБРАБОТКА
    switch answer {
    case "вариант1": print("Реакция1")
    case "вариант2": print("Реакция2")
    default: print("Неизвестно: \(input)")
    }
}

// 5. ВЫЗОВ
// createDialog()

// ПРИМЕР
func weatherDialog() {
    print("Привет!")
    print("Погода? (sunny/rainy/cloudy): ", terminator: "")
    
    guard let input = readLine()?.trimmingCharacters(in: .whitespaces),
          !input.isEmpty else {
        print("Введите sunny, rainy или cloudy")
        return
    }
    
    switch input.lowercased() {
    case "sunny": print("☀️ Возьми очки!")
    case "rainy": print("☔️ Возьми зонт!")
    case "cloudy": print("☁️ Возьми куртку!")
    default: print("🤔 Не знаю такую погоду")
    }
}

// weatherDialog()

/* полный цикл разработки:
 Идея → Код → Тестирование → Шаблон → Документация → Git → GitHub -> Это профессиональный workflow! 🏆 */
