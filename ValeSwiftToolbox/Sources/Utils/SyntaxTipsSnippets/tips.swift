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
