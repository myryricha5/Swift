//
//  PickerExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct PickerExample: View {
    
    @State var weather = 1
    
    var body: some View {
        
        VStack{
            Picker(selection: $weather,
                   label: Text("Weather : \(weather)")){
                    Text("Sunny").tag(1)
                    Text("Cloudy").tag(2)
                    Text("Rainy").tag(3)
            }
            
            Picker(selection: $weather,
                   label: Text("Weather : \(weather)")){
                    Text("Sunny").tag(1)
                    Text("Cloudy").tag(2)
                    Text("Rainy").tag(3)
            }.pickerStyle(SegmentedPickerStyle())
        }
        
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
