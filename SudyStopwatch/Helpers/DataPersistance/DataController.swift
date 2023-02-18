//
//  DataController.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import CoreData

class FocusSessionManager {
    static let shared = FocusSessionManager()

    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        return container
    }()

    private init() { }

    // MARK: - Create
    func createDailyFocusSession(focusTime: Int16, currentDate: Date) {
        let context = persistentContainer.viewContext
        let dailyFocusSession = DialyFocusSession(context: context)
        dailyFocusSession.focusTime = focusTime
        dailyFocusSession.currentDate = currentDate
        saveContext()
    }

    func createYesterdayFocusSession(focusTime: Int16, currentDate: Date) {
        let context = persistentContainer.viewContext
        let yesterdayFocusSession = YesterdayFocusSession(context: context)
        yesterdayFocusSession.focusTime = focusTime
        yesterdayFocusSession.currentDate = currentDate
        saveContext()
    }

    func createWeeklyFocusSession(focusTime: Int16, currentDate: Date) {
        let context = persistentContainer.viewContext
        let weeklyFocusSession = WeeklyFocusSession(context: context)
        weeklyFocusSession.focusTime = focusTime
        weeklyFocusSession.currentDate = currentDate
        saveContext()
    }

    func createMonthlyStreakFocusSession(focusTime: Int16, currentDate: Date) {
        let context = persistentContainer.viewContext
        let monthlyStreakFocusSession = MonthlyStreakFocusSession(context: context)
        monthlyStreakFocusSession.focusTime = focusTime
        monthlyStreakFocusSession.currentDate = currentDate
        saveContext()
    }

    // MARK: - Read
    func fetchDailyFocusSessions() -> [DialyFocusSession] {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<DialyFocusSession> = DialyFocusSession.fetchRequest()
        do {
            let results = try context.fetch(fetchRequest)
            return results
        } catch {
            print("Error fetching DailyFocusSession objects: \(error)")
            return []
        }
    }

    func fetchYesterdayFocusSessions() -> [YesterdayFocusSession] {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<YesterdayFocusSession> = YesterdayFocusSession.fetchRequest()
        do {
            let results = try context.fetch(fetchRequest)
            return results
        } catch {
            print("Error fetching YesterdayFocusSession objects: \(error)")
            return []
        }
    }

    func fetchWeeklyFocusSessions() -> [WeeklyFocusSession] {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<WeeklyFocusSession> = WeeklyFocusSession.fetchRequest()
        do {
            let results = try context.fetch(fetchRequest)
            return results
        } catch {
            print("Error fetching WeeklyFocusSession objects: \(error)")
            return []
        }
    }

    func fetchMonthlyStreakFocusSessions() -> [MonthlyStreakFocusSession] {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<MonthlyStreakFocusSession> = MonthlyStreakFocusSession.fetchRequest()
        do {
            let results = try context.fetch(fetchRequest)
            return results
        } catch {
            print("Error fetching MonthlyStreakFocusSession objects: \(error)")
            return []
        }
    }

    // MARK: - Update
    func updateDailyFocusSession(_ dailyFocusSession: DialyFocusSession, withFocusTime focusTime: Int16, currentDate: Date) {
        dailyFocusSession.focusTime = focusTime
        dailyFocusSession.currentDate = currentDate
        saveContext()
    }

    func updateYesterdayFocusSession(_ yesterdayFocusSession: YesterdayFocusSession, withFocusTime focusTime: Int16, currentDate: Date) {
        yesterdayFocusSession.focusTime = focusTime
        yesterdayFocusSession.currentDate = currentDate
        saveContext()
    }

    func updateWeeklyFocusSession(_ weeklyFocusSession: WeeklyFocusSession, withFocusTime focusTime: Int16, currentDate: Date) {
        weeklyFocusSession.focusTime = focusTime
        weeklyFocusSession.currentDate = currentDate
        saveContext()
    }

    func updateMonthlyStreakFocusSession(_ monthlyStreakFocusSession: MonthlyStreakFocusSession, withFocusTime focusTime: Int16, currentDate: Date) {
        monthlyStreakFocusSession.focusTime = focusTime
        monthlyStreakFocusSession.currentDate = currentDate
        saveContext()
    }

    // MARK: - Delete
    func deleteDailyFocusSession(_ dailyFocusSession: DialyFocusSession) {
        let context = persistentContainer.viewContext
        context.delete(dailyFocusSession)
        saveContext()
    }

    func deleteYesterdayFocusSession(_ yesterdayFocusSession: YesterdayFocusSession) {
        let context = persistentContainer.viewContext
        context.delete(yesterdayFocusSession)
        saveContext()
    }

    func deleteWeeklyFocusSession(_ weeklyFocusSession: WeeklyFocusSession) {
        let context = persistentContainer.viewContext
        context.delete(weeklyFocusSession)
        saveContext()
    }

    func deleteMonthlyStreakFocusSession(_ monthlyStreakFocusSession: MonthlyStreakFocusSession) {
        let context = persistentContainer.viewContext
        context.delete(monthlyStreakFocusSession)
        saveContext()
    }

    // MARK: - Helpers
    private func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let error = error as NSError
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
}
