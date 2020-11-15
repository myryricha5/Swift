//
//  ForEachExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ForEachExample: View {
    var body: some View {
        VStack{
            VStack{
                Text("0")
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }.padding()
            
            ForEach(0...4, id: \.self){
                index in Text("\(index)")
            }
        }
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}
