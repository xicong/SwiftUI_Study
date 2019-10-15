//
//  LearnTabView.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnTabView: View {
    var body: some View {
        
        TabView {
            Text("First View")
                .font(.title)
                .tabItem({
                    Image(systemName: "circle")
                    Text("First")
                })
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem({
                   Image(systemName: "circle")
                    Text("Second")
                })
                .tag(1)
        }
    }
}

struct LearnTabView_Previews: PreviewProvider {
    static var previews: some View {
        LearnTabView()
    }
}
