//
//  ContentView.swift
//  Chancey
//
//  Created by Meitar Basson on 03/07/2022.
//

import SwiftUI

@State private var numberOfGuesses = 3

let ranges = [100, 300 ,500]
let triesLeft = [3,5,10]

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Picker("Number Of Gueeses", selection: numberOfGuesses) {
                    ForEach(lengthTypes, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.segmented)
            } header: {
                Text("From:")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
