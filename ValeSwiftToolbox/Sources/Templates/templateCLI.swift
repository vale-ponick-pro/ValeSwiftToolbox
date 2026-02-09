//
//  templateCLI.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 09.02.2026.
//

import Foundation

// 📱 XCODE CONSOLE: HARDCODE (НЕ зависает!)
// 🖥️ TERMINAL: раскомментируй safeStringInput()

public func task_TEMPLATE() {
    // printHeader() → замена:
    print("📋 ЗАДАЧА TEMPLATE: Описание задачи")
    
    // ✅ PRIMER: Task29 Black Theme
    
    // INPUT - XCODE: раскомментируй ЭТУ строку
    let input = "true" // ← поменяй для теста Light
    // 🖥️ TERMINAL: раскомментируй ЭТУ
    // let input = safeStringInput(prompt: "Темная тема? ")
    
    // ОЧИСТКА
    let cleanInput = input.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    
    // ТВОЯ ЛОГИКА (пример Task29):
     let isDark = cleanInput == "true"
     print("✅ Тема: \(isDark ? "Темная🖤" : "Светлая☀️")")
     
     print("\nНажмите Enter...", terminator: "")
     _ = readLine()
 }

/* КАК ИСПОЛЬЗОВАТЬ:
1️⃣ Xcode → let input = "true"     ← АКТИВНО (без коммента)
2️⃣ Terminal → let input = safe... ← В КОММЕНТАРИИ
3️⃣ Меняй только ЛОГИКУ между trim и print → готово! 🚀 */


