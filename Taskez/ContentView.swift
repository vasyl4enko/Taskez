//
//  ContentView.swift
//  Taskez
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").fontTemplate(AppFontTemplate.body_l).foregroundColor(.colorful_7)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
