//
//  Extensions+Date.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import Foundation

extension Date {
    func isNewDay(date: Date) -> Bool {
        return Calendar.current.compare(self, to: Date(), toGranularity: .day) == .orderedAscending
    }

    func isNewWeek(date: Date) -> Bool {
        return Calendar.current.compare(self, to: Date(), toGranularity: .weekOfMonth) == .orderedAscending
    }

    func isNewMonth(date: Date) -> Bool {
        return Calendar.current.compare(self, to: Date(), toGranularity: .month) == .orderedAscending
    }
}
