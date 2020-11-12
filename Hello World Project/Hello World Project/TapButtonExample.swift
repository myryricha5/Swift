//
//  TapButtonExample.swift
//  Hello World Project
//
//  Created by 安井梨沙子 on 2020/11/12.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct TapButtonExample: View {
    var body: some View {
        var showDetails = false
        return VStack{
            //Swift Uはビューが状態を持っていないので更新されない
            Button(action: {
                showDetails.toggle()
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
