//
//  Learn Spacer.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnSpacer: View {
    var body: some View {
        HStack {
            Image(systemName: "clock")
            Spacer()
            Text("Time")
        }.padding()
    }
}

struct LearnSpacer_Previews: PreviewProvider {
    static var previews: some View {
        LearnSpacer()
    }
}
