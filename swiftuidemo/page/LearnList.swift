//
//  LearnList.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnList: View {
    
    let names = ["John", "Apple", "Seed"]
    
    var body: some View {
        VStack{
            Text("列表1")
            List {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            
            Text("列表2")
            List {
                Text("Hello world")
                Image(systemName: "clock")
            }
            
//            Text("列表3")  //有问题会提示错误
//            List(names) { name in
//                Text(name)
//            }
            
            Text("列表4")
            List {
                Section(header: Text("UIKit"), footer: Text("We will miss you")) {
                    Text("UITableView")
                }

                Section(header: Text("SwiftUI"), footer: Text("A lot to learn")) {
                    Text("List")
                }
            }
            
            Text("列表5")
            List {
                Section(header: Text("UIKit"), footer: Text("We will miss you")) {
                    Text("UITableView")
                }

                Section(header: Text("SwiftUI"), footer: Text("A lot to learn")) {
                    Text("List")
                }
            }.listStyle(GroupedListStyle())
        }.navigationBarTitle("List")
    }
}

struct LearnList_Previews: PreviewProvider {
    static var previews: some View {
        LearnList()
    }
}
