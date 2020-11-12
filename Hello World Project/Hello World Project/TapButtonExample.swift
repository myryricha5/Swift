//
//  TapButtonExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/12.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct TapButtonExample: View {
    
    //Swift Uはビューが状態を持っていないので更新されない
    //@Stateで状態を保持することができる（プロパティラッパーはローカル変数に対応していないのでプロパティにする必要あり）
    @State var showDetails = false
    
    var body: some View {
        
        VStack{
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("詳細表示")
            }
            if showDetails {
                Text("詳しくはWebで！")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
    }
}

struct TapButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        TapButtonExample()
    }
}
