//
//  TextFieldExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct TextFieldExample: View {
    
    @State var name = "";
    
    var body: some View {
        VStack{
            TextField("氏名を入力してください", text: $name)
            Text("こんにちは！\(name)")
            
            TextField("氏名を入力してください", text:$name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("氏名を入力してください",text:$name)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
        }
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
