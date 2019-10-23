//
//  LearnDatePicker.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI


struct LearnDatePicker: View {
    
   @State var selectedDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        
        List{
            Text("⚠️ datePickerStyle：不知道为什么我尝试很多次想用弹窗通过@state动态去切换，可是一直报错，所以只能用这种繁琐的方式去展示了")
            .bold()
            
            NavigationLink(destination: LearnDatePickerDefaultStyle()) {
                HomeItems(title:"DefaultDatePickerStyle",subTitle:"默认的样式")
            }
            NavigationLink(destination: LearnDatePickerWheelDate()) {
                HomeItems(title:"WheelDataPickerStyle",subTitle:"轮子的样式")
            }
            
            
            DatePicker(
                selection: $selectedDate,
                in: dateClosedRange,
                displayedComponents: .date,
                label: { Text("Due Date") }
            )
            
            DatePicker(
                selection: $selectedDate,
                in: dateClosedRange,
                displayedComponents: [.hourAndMinute, .date],
                label: { Text("Due Date") }
            )
            
            DatePicker("Due Date",
            selection: $selectedDate,
            in: dateClosedRange,
            displayedComponents: [.hourAndMinute, .date])
            
            
            DatePicker("Minimum Date",
            selection: $selectedDate,
            in: Date()...,
            displayedComponents: [.date])
            
            
            DatePicker("Maximum Date",
            selection: $selectedDate,
            in: ...Date(),
            displayedComponents: [.date])
            
        }
    }
}


struct LearnDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        LearnDatePicker()
    }
}
