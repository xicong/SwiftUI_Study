//
//  LearnScrollVoew.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnScrollView: View {
    var body: some View {
        ScrollView() {
            Text("Hello World").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.red)
            Text("Hello World").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.yellow)
            Text("Hello World").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.blue)
            Text("Hello World").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.black)
        }.navigationBarTitle("ScrollView")
    }
}

struct LearnScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LearnScrollView()
    }
}
