//
//  SliderLabelSample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SliderLabelSample: View {
    
    @State var pound: Double = 0
    @State var isChanged = false;
    
    var body: some View {
        VStack{
            Slider(value: $pound, in:-100...100, step: 0.1,
                   onEditingChanged: {changed in self.isChanged = changed},
            minimumValueLabel: Text("-100"),
            maximumValueLabel: Text("100"),
            label: {EmptyView() })
            
            if !isChanged {
                Text("\(pound) pound is \(pound*0.45359237) Kg")
            } else {
                Text("\(pound)")
            }
        }.padding()
    }
}

struct SliderLabelSample_Previews: PreviewProvider {
    static var previews: some View {
        SliderLabelSample()
    }
}
