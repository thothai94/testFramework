//
//  ContentView.swift
//  TestFrameworkExamples
//
//  Created by Võ Toàn on 08/05/2023.
//

import SwiftUI
import testFramework

struct ContentView: View {
    let logger: CustomLog = CustomLog()
    var body: some View {
        HStack (spacing: 20) {
            Button {
                logger.log("Logger log")
            } label: {
                HStack {
                    Image(systemName: "arrow.right.circle")
                    Text("Log text")
                }
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.orange))
            }
            
            Button {
                logger.log(["Log 1", "Log 2"])
            } label: {
                HStack {
                    Image(systemName: "arrow.right.circle")
                    Text("Log array")
                }
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.blue))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
