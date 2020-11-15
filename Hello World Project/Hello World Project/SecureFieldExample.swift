//
//  SecureFieldExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SecureFieldExample: View {
    
     @State var pwd = ""
    
    var body: some View {
       
        VStack{
            SecureField("パスワードを入力してください", text: $pwd)
            Text("パスワードは\(pwd)")
        }.padding()
    }
}

struct SecureFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExample()
    }
}
