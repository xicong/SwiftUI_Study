
//
//  Learnp.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnPicker: View {
    
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    let leftSource = (0..<10).map { $0%2 == 0 ? "整除\($0)":"不整除\($0)" }
    let rightSource = (11...36).map { String($0 - 1, radix: $0).uppercased() }
    
    var body: some View {
        List (){
            VStack (alignment: .center, spacing: 0){
                Text("选择的结果为:\(self.leftSource[self.leftIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Picker(selection: $leftIndex, label: Text("")) {
                    ForEach(0..<leftSource.count) {
                        Text(self.leftSource[$0]).tag($0)
                    }
                }
//                .frame(width: UIScreen.main.bounds.width)
            }
            VStack (alignment: .center, spacing: 0){
                Text("选择的结果为:\(self.rightSource[self.rightIndex])")
                    .foregroundColor(.black)
                    .bold()
                    .font(.largeTitle)
                Picker(selection: $rightIndex, label: Text("label:我也不知道干嘛用的,而且不写竟然会报错")) {
                    ForEach(0..<rightSource.count) {
                        Text(self.rightSource[$0]).tag($0)
                    }
                }
            }
        }
    }
}

struct Learnp_Previews: PreviewProvider {
    static var previews: some View {
        LearnPicker()
    }
}
