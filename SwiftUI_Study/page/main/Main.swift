//
//  Main.swift
//  SwifUIdemo
//
//  Created by xc on 2020/4/2.
//  Copyright © 2020 xc. All rights reserved.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView{
            TabView {
                Home()
                    .tabItem({
                        Image(systemName: "house")
                        Text("首页")
                    }).tag(0)
                Mine()
                    .tabItem({
                        Image(systemName: "person")
                        Text("我的")
                    }).tag(1)
            }.navigationBarTitle(Text("SwiftUI学习").font(.title)) // Default to large title style  //这个要设置在子view后面才会显示
        }
    }
    
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
