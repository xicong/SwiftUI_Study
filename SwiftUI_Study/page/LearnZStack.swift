//
//  LearnZStack.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnZStack: View {
    var body: some View {
        ZStack {
            Text("Hello")
                .padding(10)
                .background(Color.red)
                .opacity(0.8)
            Text("World")
                .padding(20)
                .background(Color.red)
                .offset(x: 0, y: 40)
        }.navigationBarTitle("ZStack")
    }
}

struct LearnZStack_Previews: PreviewProvider {
    static var previews: some View {
        LearnZStack()
    }
}
