//
//  ContentView.swift
//  SwiftUITeachings
//
//  Created by Jason Stuemke on 10/26/22.
//

import SwiftUI

var textLabel: String = "Hello, world!"

struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Spacer()
            Text(textLabel)
            Spacer()
            Button(action: { textLabel = "+" }) { Text("Add to the Label") }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
