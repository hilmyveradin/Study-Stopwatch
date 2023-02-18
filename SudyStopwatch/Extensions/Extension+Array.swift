//
//  Extension+Arrau.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 19/02/23.
//

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
