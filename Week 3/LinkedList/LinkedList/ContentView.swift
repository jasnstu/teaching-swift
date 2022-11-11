//
//  ContentView.swift
//  LinkedList
//
//  Created by Jason Stuemke on 11/8/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("stuff", action: { LinkedList<Int>.showLinkedList() })
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
