//
//  PickerImageExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct PickerImageExample: View {
    
    @State var weatherStr = "曇り時々晴れ"
    var sushi = ["まぐろ", "サーモン", "いくら", "エビ", "穴子"]
    @State var selected = 0
    
    var images = [
        (systemName: "sun.max.fill", tag: "晴れ"),
        (systemName: "cloud.fill", tag: "曇り"),
        (systemName: "cloud.sun.fill", tag: "曇り時々晴れ"),
        (systemName: "umbrella.fill", tag: "雨"),
        (systemName: "snow", tag: "雪"),
    ]
    @State var weatherId = 1
    
    var body: some View {
        VStack{
            Picker(selection: $weatherStr,
                   label: Text("Weather : \(weatherStr)")) {
                    Image(systemName: "sun.max.fill")
                        .tag("晴れ")
                    Image(systemName: "cloud.fill")
                        .tag("曇り")
                    Image(systemName: "cloud.sun.fill")
                        .tag("曇り時々晴れ")
                    Image(systemName: "umbrella.fill")
                        .tag("雨")
                    Image(systemName: "snow")
                        .tag("雪")
            }
            
            
            Picker(selection: $weatherId,
                   label: Text("Weather")){
                    ForEach(0..<images.count){
                        Image(systemName: self.images[$0].systemName)
                    }
            }.pickerStyle(SegmentedPickerStyle())
            Text("\(images[weatherId].tag)")
            
            
            Picker(selection: $selected,
                   label: Text("寿司ネタを選択してください"))
            {
                    ForEach(0..<sushi.count){
                        Text(self.sushi[$0])
                    }
            }
            Text("あなたの寿司 : \(sushi[selected])")
            

        }
        
    }
}

struct PickerImageExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerImageExample()
    }
}
