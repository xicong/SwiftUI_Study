//
//  LearnNavigationLinkNewPage.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnNavigationLinkNewPage: View {
    var body: some View {
        VStack{
            Spacer()
            Text("我是NavigationLink跳转过来的新页面")
            Spacer()
        }.background(Color.yellow)
    }
}

struct LearnNavigationLinkNewPage_Previews: PreviewProvider {
    static var previews: some View {
        LearnNavigationLinkNewPage()
    }
}
