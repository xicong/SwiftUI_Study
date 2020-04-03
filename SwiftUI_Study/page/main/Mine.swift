//
//  Mine.swift
//  SwifUIdemo
//
//  Created by xc on 2020/4/2.
//  Copyright © 2020 xc. All rights reserved.
//

import SwiftUI

struct Mine: View {

    
    var body: some View {
        List{
            HStack(alignment:.center){
                
                Image(systemName: "person.circle.fill")
                    .resizable()  //设置大小之前要先设置这个，不然不起作用
                    .frame(width: 70, height: 70, alignment: .center)
                    .foregroundColor(Color.gray)
                    .padding(EdgeInsets.init(top: 40, leading: 0, bottom: 40, trailing: 10))
                
                VStack(alignment: .leading){
                    
                    Text("SwiftUI")
                        .font(Font.system(size: 20))
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(EdgeInsets.init(top: 6, leading: 0, bottom: 6, trailing: 0))
                    
                    Text("SwiftUI 是一种非常简单的创新方法，可以利用 Swift 的强大能力在所有苹果设备平台上构建用户界面。通过 SwiftUI，开发者仅使用一组工具和 API 就能为所有苹果设备构建用户界面。SwiftUI 使用易于阅读和编写的声明式 Swift 语法，可与新的 Xcode 设计工具无缝协作，使你的代码和设计完美同步。SwiftUI 自动支持动态类型、黑暗模式、本地化和可访问性，你的 SwiftUI 代码将成为你写过的最强大的 UI 代码。")
                        .lineLimit(1)  //设置单行显示
                        .foregroundColor(Color.black)
                        .font(Font.system(size: 13))
                        .padding(EdgeInsets.init(top: 6, leading: 0, bottom:6, trailing: 0))
                }
                
                Spacer()
                
            }
            //.background(Color.yellow)

            MineItems(url: "https://github.com/xicong",name: "GitHub主页",icon: "person.crop.circle")
            
            MineItems(url: "https://github.com/xicong/SwiftUI_Study",name: "SwiftUI_Study源码",icon: "book.circle")
            
            MineItems(url: "https://developer.apple.com/xcode/swiftui/",name: "SwiftUI官网",icon: "tv.circle")
            
        }
        //        .lineSpacing(20)
        //        .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        //        .padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}

//预览视图专用函数
struct Mine_Previews: PreviewProvider {
    static var previews: some View {
        Mine()
    }
}
