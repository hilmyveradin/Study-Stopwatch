//
//  StopwatchView.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import SwiftUI

struct StopwatchView: View {
    @State var counter = 0
    @State var isTimeRunning = false
    @State var buttomText = "Start"
    @State private var timer: Timer?

    var body: some View {
        VStack {

            Spacer()
            HStack {
                Spacer()
                ZStack {

                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text(timeComponents(time: counter).hours)
                        .frame(width: 100, height: 100)
                        .font(.system(size: 50))
                }

                ZStack {

                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text(timeComponents(time: counter).minutes)
                        .frame(width: 100, height: 100)
                        .font(.system(size: 50))
                }

                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text(timeComponents(time: counter).seconds)
                        .frame(width: 100, height: 100)
                        .font(.system(size: 50))
                }
                Spacer()
            }
            .padding(50)
            HStack {
                Spacer()
                    .frame(maxWidth: 100)

                Button(buttomText) {
                    if isTimeRunning {
                        DataManager.shared.createDailyFocusSession(focusTime: counter.minutesInt16(), currentDate: Date())
                        buttomText = "Start"
                        resetTimer()
                    } else {
                        buttomText = "Stop"
                        startTimer()
                    }
                    isTimeRunning.toggle()
                }
                .frame(maxWidth: .infinity, minHeight: 40)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .font(.headline)
                .clipShape(Capsule())
                Spacer()
                    .frame(maxWidth: 100)
            }

            Spacer()
        }

    }

    func timeComponents(time: Int) -> (hours: String, minutes: String, seconds: String) {
        let hours = String(format: "%02d", time / 3600)
        let minutes = String(format: "%02d", (time % 3600) / 60)
        let seconds = String(format: "%02d", time % 60)
        return (hours, minutes, seconds)
    }

    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            counter += 1
        }
    }

    func resetTimer() {
        timer?.invalidate()
        timer = nil
        counter = 0
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
