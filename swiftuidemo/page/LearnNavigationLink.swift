//
//  LearnB.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnNavigationLink: View {
    var body: some View {
        NavigationLink(destination: LearnNavigationLinkNewPage()){
            Text("点击我可以去一个新的页面")
        }
        .navigationBarTitle(Text("联动动画"))
    }
}

struct LearnNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        LearnNavigationLink()
    }
}
