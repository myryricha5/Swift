//
//  ToggleExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/13.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ToggleExample: View {
    
    @State var showText = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $showText){
                Text("テキストを表示する")
            }
            if showText {
                Text("Hello World!")
            }
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
