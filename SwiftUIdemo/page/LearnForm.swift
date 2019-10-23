//
//  LearnForm.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnForm: View {
    
    @State var quantity = 0
    @State var selection = 0
    @State var selectedDate = Date()
    
    var body: some View {
        Form {
            Section {
                Text("Plain Text")
                Stepper(value: $quantity, in: 0...10, label: { Text("Quantity:\(quantity)") })
            }
            Section {
                DatePicker(selection: $selectedDate, label: { Text("Due Date") })
                Picker(selection: $selection, label:
                    Text("Picker Name:\(selection)")
                    , content: {
                        Text("Value 1").tag(0)
                        Text("Value 2").tag(1)
                        Text("Value 3").tag(2)
                        Text("Value 4").tag(3)
                })
            }
        }
    }
}

struct LearnForm_Previews: PreviewProvider {
    static var previews: some View {
        LearnForm()
    }
}
