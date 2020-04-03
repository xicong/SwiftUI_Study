//
//  LearnDatePickerS.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import Combine

struct LearnDatePickerWheelDate: View {
    
    @ObservedObject var server = DateServer()
     var speaceDate: Range<Date>?
    
    
    init() {
        let soon = Calendar.current.date(byAdding: .year,value: -1,to: server.date) ?? Date()
        let later = Calendar.current.date(byAdding: .year,value: 1,to: server.date) ?? Date()
        speaceDate = soon..<later
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("日期选择").bold()
            DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date
                , label: {Text("label，不写还是报错")}
            ).datePickerStyle(WheelDatePickerStyle())
        }
        .padding(.top)
    }
}

struct LearnDatePickerWheelDate_Previews: PreviewProvider {
    static var previews: some View {
        LearnDatePickerWheelDate()
    }
}

