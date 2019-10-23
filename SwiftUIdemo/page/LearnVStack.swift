//
//  LearnVStack.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnVStack: View {
    var body: some View {
       VStack (alignment: .center, spacing: 20){
            Text("Hello")
            Divider()
            Text("World")
            Divider()
            Text("World")
        }
    }
}

struct LearnVStack_Previews: PreviewProvider {
    static var previews: some View {
        LearnVStack()
    }
}
