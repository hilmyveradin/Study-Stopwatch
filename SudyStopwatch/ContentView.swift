//
//  ContentView.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StopwatchView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            RecapView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
