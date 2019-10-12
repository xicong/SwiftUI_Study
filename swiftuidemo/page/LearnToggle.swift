//
//  LearnToggle.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnToggle: View {
    
    @State var isOpen = false
    
    var body: some View {
        Toggle(isOn: $isOpen) {
            Text("State: \(self.isOpen == true ? "开":"关")")
        }.padding()
    }
}

struct LearnToggle_Previews: PreviewProvider {
    static var previews: some View {
        LearnToggle()
    }
}
