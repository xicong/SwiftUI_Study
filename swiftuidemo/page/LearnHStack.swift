//
//  LearnHStack.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnHStack: View {
    var body: some View {
        HStack (alignment: .center, spacing: 20){
            Text("Hello")
            Divider()
            Text("World")
            Divider()
            Text("World")
        }.navigationBarTitle("HStack")
    }
}

struct LearnHStack_Previews: PreviewProvider {
    static var previews: some View {
        LearnHStack()
    }
}
