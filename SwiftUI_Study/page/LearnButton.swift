//
//  LearnB.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnButton: View {
    
    var body: some View {
        Button(action:{
            print("点击了按钮")
        }){
            Text("我是一个按钮")
                .font(.system(size:15, design: .serif))
        }.navigationBarTitle("Button")
    }
}

struct LearnB_Previews: PreviewProvider {
    static var previews: some View {
        LearnButton()
    }
}
