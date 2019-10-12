//
//  LearnDatePicker.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import Combine

struct LearnDatePicker: View {
    
    @ObservedObject var server = DateServer()
    
    var speaceDate: Range<Date>?
    
    init() {
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: server.date) ?? Date()
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: server.date) ?? Date()
        speaceDate = soon..<later
    }
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text("日期选择").bold()
                DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date
                    , label: {Text("label，不写还是报错")}
                )
            }
            .padding(.top)
        }
    }
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
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: date) ?? Date()
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: date) ?? Date()
        let speaceDate = soon...later
        return speaceDate
    }
}


struct LearnDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        LearnDatePicker()
    }
}
