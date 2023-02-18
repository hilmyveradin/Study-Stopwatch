//
//  Extension+Int.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 19/02/23.
//

import Foundation

extension Int {
    func minutesInt16() -> Int16 {
        let minutes = self / 60
        return Int16(minutes)
    }
}
