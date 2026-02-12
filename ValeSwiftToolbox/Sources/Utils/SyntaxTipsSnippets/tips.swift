//
//  tips.swift 
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 12.02.2026.
//

import Foundation

// 🧠 TIPS: Syntax explanations & reminders

// MARK: - 🔑 Keypath Syntax

// \.isLetter = { $0.isLetter }
// ✅ Работает: .filter(\.isLetter)
// ❌ НЕ работает: .map(\.hasPrefix("A"))

// MARK: - ⚠️ Common Mistakes
// ❌ for name in 1...5  // переопределяет переменную!
// ✅ for _ in 1...5

// MARK: - 🧵 Strings
// "Hi!".filter(\.isLetter)  // "Hi"

// MARK: - 🔁 Loop Conventions

/* ✅ АКТИВНО ИСПОЛЬЗУЕМ:
for i in 1...7    // когда нужно число
for _ in 1...7        // когда нужно просто повторить
for char in text       // когда нужны символы
for (index, char) in text.enumerated()  // когда нужно и то, и то */

/* ❌ ИЗБЕГАЕМ:
let name = "Анна"
for name in 1...7 */    // shadowing! 🚫
