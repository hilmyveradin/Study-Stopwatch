//
//  RecapView.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import SwiftUI

struct RecapView: View {
    var body: some View {
        VStack {
            // dialy focus time
            VStack {
                Text("Your Dialy Focus Time")
                Text("00 Minutes")
            }
            .padding(20)
            // yasterday focus time
            VStack {
                Text("Yasterday Focus Time")
                Text("00 Minutes")
            }
            .padding(20)
            // weekly focus time
            // monthly focus time
            HStack {
                VStack {
                    Text("Weekly Focus Time")
                    Text("00 Minutes")
                }
                Spacer()
                VStack {
                    Text("Monthly Focus Time")
                    Text("00 Minutes")
                }
            }
            .padding(20)
            VStack {
                Text("All time Focus Time")
                Text("00 Minutes")
            }
            .padding(20)
            // all time dialy focus time

        }
    }
}

struct RecapView_Previews: PreviewProvider {
    static var previews: some View {
        RecapView()
    }
}
