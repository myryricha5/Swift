//
//  StepperExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/16.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct StepperExample: View {
    
    @State var age = 18
    
    var body: some View {
     
        VStack{
            Stepper(value: $age, in: 0...130){
                Text("年齢を入力してください")
            }
            Text("あなたの年齢:\(age)")
            
            Stepper(
                onIncrement:{
                    self.age += 10
                },
                onDecrement:{
                    self.age -= 10
                })
            {
                Text("年代を入力してください")
            }
            Text("あなたは\(age)歳代")
        }
        
    }
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}
