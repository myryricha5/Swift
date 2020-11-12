//
//  ImageButtonExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/13.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ImageButtonExample: View {
    
    @State var isRecording = false
    
    var body: some View {
        
        Button(action: {
            self.isRecording.toggle()
        }) {
            if isRecording{
                Image(systemName: "mic.fill")
                    .font(.system(size: 200))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "mic.slash.fill")
                    .font(.system(size: 200))
                    .foregroundColor(.secondary)
                    .offset(x: 1.5, y:0)
            }
        }
    }
}

struct ImageButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageButtonExample()
    }
}
