//
//  DatePickerExample.swift
//  Hello World Project
//
//  Created by myryricha5 on 2020/11/15.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct DatePickerExample: View {
    
    @State var birthDate = Date()
    
    @State var selectDate = Date()
    var from: Date {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        return format.date(from: "2019-05-01")!
    }
    
    var body: some View {
        VStack{
            DatePicker(selection: $birthDate,
                       displayedComponents: [.date],
                       label: {Text("生年月日")} )
            Text("\(birthDate)")
            
            /*制限を設ける場合*/
            DatePicker(selection: $selectDate,
                       in: from...Date(),
                       displayedComponents: [.date],
                       label:{ Text("令和") })
            Text("\(selectDate)")
        }
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}
