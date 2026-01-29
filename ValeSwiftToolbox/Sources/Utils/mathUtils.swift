//
//  mathUtils.swift
//  ValeSwiftToolbox
//
//  Created by Валерия Пономарева on 29.01.2026.
//

import Foundation

// MARK: - Сравнение чисел

/// Сравнивает два числа и возвращает их в порядке убывания
public func compareNumbers(_ a: Double, _ b: Double) -> (larger: Double, smaller: Double) {
    return a >= b ? (a, b) : (b, a)
}

/// Сравнивает два целых числа
public func compareNumbers(_ a: Int, _ b: Int) -> (larger: Int, smaller: Int) {
    return a >= b ? (a, b) : (b, a)
}
