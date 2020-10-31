//
//  ContentView.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/10/31.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello SwiftUI!"
    
    var body: some View {
        VStack {
            Text(labelText)
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Button(action:{self.labelText = "Yes Tapped!"}){
                Text("Let's Tap!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
