//
//  LearnDatePickerD.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import Combine

struct LearnDatePickerDefaultStyle: View {
    
    @ObservedObject var server = DateServer()
    var speaceDate: Range<Date>?
    
    //    @State var showSheet = false
    //    @State
    //    var pickerStyle:DatePickerStyle = DefaultDatePickerStyle()
    
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
            ).datePickerStyle(DefaultDatePickerStyle())
            //                       //                 .datePickerStyle(pickerStyle)
        }
        .padding(.top)
        //        .navigationBarItems(trailing:
        //            Text("切换样式")
        //                .fontWeight(.bold)
        //                .onTapGesture { self.showSheet = true }
        //                .actionSheet(isPresented: $showSheet, content: {sheet})
        //        )
    }
    
    //    private var sheet:ActionSheet{
    //        return ActionSheet(title: Text("选择样式"), buttons: [
    //            .default(Text("DefaultPickerStyle"), action:{
    //                pickerStyle = DefaultPickerStyle()
    //                self.showSheet = false
    //            }),
    //            .default(Text("SegmentedPickerStyle"), action:{
    //                pickerStyle = SegmentedPickerStyle()
    //                self.showSheet = false
    //            }),
    //
    //        ])
    //    }
}


class DateServer: ObservableObject {
    var didChange = PassthroughSubject<DateServer,Never>()
    var date: Date = Date() {
        didSet {
            didChange.send(self)
            print("Date Changed: \(date)")
        }
    }
    var spaceDate: ClosedRange<Date>  {
        let soon = Calendar.current.date(byAdding: .year,value: -1,to: date) ?? Date()
        let later = Calendar.current.date(byAdding: .year,value: 1,to: date) ?? Date()
        let speaceDate = soon...later
        return speaceDate
    }
}

struct LearnDatePickerDefaultStyle_Previews: PreviewProvider {
    static var previews: some View {
        LearnDatePickerDefaultStyle()
    }
}
