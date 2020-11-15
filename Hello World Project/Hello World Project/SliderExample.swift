//
//  SliderExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SliderExample: View {
    
    @State var pound: Double = 0
    
    var body: some View {
        VStack{
            Slider(value: $pound, in: -100...100, step:0.1)
            Text("\(pound)pound is \(pound * 0.45359237) Kg")
        }.padding()
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}
