//
//  LearnDivider.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnDivider: View {
    var body: some View {
        HStack {
            Image(systemName: "clock")
            Divider()
            Text("Time")
        }.fixedSize()
    }
}

struct LearnDivider_Previews: PreviewProvider {
    static var previews: some View {
        LearnDivider()
    }
}
