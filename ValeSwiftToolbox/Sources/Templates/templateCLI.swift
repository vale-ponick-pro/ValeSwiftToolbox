//
//  templateCLI.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 09.02.2026.
//

import Foundation

// ✅ Новый templateCLI.swift (switch версия):

public func task_TEMPLATE() {
    print("📋 ЗАДАЧА TEMPLATE")
    
    // INPUT
    let input = "yes"  // 📱 Xcode (поменяй на "no"/"true"/"false")
    
    let cleanInput = input.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    
    // 🔥 SWITCH — ТВОЙ НОВЫЙ СТАНДАРТ!
    switch cleanInput {
    case "yes", "true", "1":      // ✅ Dark theme варианты
        print("✅ Dark🖤")
    case "no", "false", "0":      // ✅ Light theme варианты
        print("✅ Light☀️")
    default:
        print("❌ Error! Варианты: yes/no, true/false, 1/0")
    }
    
    print("\nНажмите Enter...", terminator: "")
    _ = readLine()
}

/*
 ✅ Множественные case ("yes", "true", "1") → Dark
✅ Множественные case ("no", "false", "0") → Light
✅ default ловит все ошибки
✅ templateCLI = универсален для Task28/29/30/... */
