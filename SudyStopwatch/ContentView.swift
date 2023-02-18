//
//  ContentView.swift
//  SudyStopwatch
//
//  Created by Hilmy Veradin on 18/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Spacer()
            HStack{
                Spacer()
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text("Foobar")
                }
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text("Foobar")
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Text("Foobar")
                }
                Spacer()
            }
            .padding(50)
            HStack {
                Spacer()
                    .frame(maxWidth: 100)
                
                Button("ABC") {
                    
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
