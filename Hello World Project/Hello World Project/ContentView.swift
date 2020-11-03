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
                .foregroundColor(.white)
                .background(Color.black)
                .padding(50)
                .background(Color.yellow)
                .font(.largeTitle)
                .clipShape(Circle())
                .overlay(
                    Color.green
                        .offset(x:10, y:10))
                .overlay(
                    Text("Hacking to the Swift")
                        .background(Color.pink)
                        .offset(x:20,y:20))
                
            Button(action:{self.labelText = "Yes Tapped!"}){
                Text("Let's Tap!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray, width: 2)
            }
            Text(String(repeating: "Hello World ", count: 20))
                .lineLimit(3)//表示行数を指定
                .truncationMode(.middle)//省略位置を指定
                .lineSpacing(20)//行間を調整
            Image(systemName: "circle.grid.hex.fill")
                .font(.largeTitle)
                .foregroundColor(.orange)
            Image("setting")
                .resizable()
                .scaledToFill()
                .frame(width:100, height: 50)
                .clipped()
                        
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
