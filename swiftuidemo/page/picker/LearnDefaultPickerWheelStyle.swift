//
//  LearnDefaultPickerSegmente.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/14.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI


struct LearnDefaultPickerWheelStyle: View {
    
    @State var picker1 = 0
    @State var picker2 = 0
    @State var picker3 = 0
    @State var picker4 = 0
    
    private let arrs:Array=["q","n","c","j"]
    let leftSource = (0..<10).map {
        $0%2 == 0 ? "整除\($0)":"不整除\($0)"
    }
    let rightSource = (11...36).map {
        String($0 - 1, radix: $0).uppercased()
    }
    
    var body: some View {
        List{
            VStack{
                Text("选择结果为:\(picker1)")
                Picker(selection: $picker1, label:Text("picker1")
                    , content: {
                        Text("Value 1").tag(0)
                        Text("Value 2").tag(1)
                        Text("Value 3").tag(2)
                        Text("Value 4").tag(3)
                })
                .pickerStyle(WheelPickerStyle())
            }
            VStack{
                Text("选择结果为:\(picker2)")
                Picker("picker2",selection:$picker2){
                    ForEach(0..<arrs.count){ index in
                        Text(self.arrs[index]).tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            VStack (alignment: .center, spacing: 0){
                Text("选择的结果为:\(self.leftSource[self.picker3])")
                Picker(selection: $picker3, label: Text("picker3")) {
                    ForEach(0..<leftSource.count) {
                        Text(self.leftSource[$0]).tag($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                //.frame(width: UIScreen.main.bounds.width)
            }
            VStack (alignment: .center, spacing: 0){
                Text("选择的结果为:\(self.rightSource[self.picker4])")
                Picker(selection: $picker4, label: Text("picker4  label:我也不知道干嘛用的,而且不写竟然会报错")) {
                    ForEach(0..<rightSource.count) {
                        Text(self.rightSource[$0]).tag($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }
}

struct LearnDefaultPickerWheelStyle_Previews: PreviewProvider {
    static var previews: some View {
        LearnDefaultPickerDefaultStyle()
    }
}


