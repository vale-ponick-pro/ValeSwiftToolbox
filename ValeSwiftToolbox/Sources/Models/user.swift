//
//  user.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 28.01.2026.
//

import Foundation

/// 👤 Универсальная модель пользователя CLI
/// Готовый вывод через print(user.description)
public struct User {
    public let name: String
    public let surname: String
    public let weight: Double
    
    public var description: String {
        let formattedWeight = String(format: "%.1f kg", weight)
        return """
        \(name)
        \(surname)
        \(formattedWeight)
        """
    }
}
