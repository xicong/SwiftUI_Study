//
//  ContentView.swift
//  swiftuidemo
//
//  Created by xc on 2019/9/24.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {  //body里面必须有一个控件不然报错
        NavigationView {
            List {
                NavigationLink(destination: LearnImage()) {
                    HomeItems(title:"Image",subTitle:"一个用来显示图片信息的控件")
                }
                NavigationLink(destination: LearnText()) {
                    HomeItems(title:"Text",subTitle:"一个用来显示文本信息的控件")
                }
                NavigationLink(destination: LearntTextField()) {
                    HomeItems(title:"TextField",subTitle:"一个用来输入信息的输入框")
                }
                NavigationLink(destination: LearntSecureField()) {
                    HomeItems(title:"SecureField",subTitle:"一个用来输入私密信息的输入框")
                }
                NavigationLink(destination: LearneEditButton()) {
                    HomeItems(title:"EditButton",subTitle:"一个点击可以让列表显示删除操作的按钮")
                }
                NavigationLink(destination: LearnNavigationLink()) {
                    HomeItems(title:"NavigationLink",subTitle:"一个可以点击带titlebar动画去新页面的按钮")
                }
                NavigationLink(destination: LearnButton()) {
                    HomeItems(title:"Button",subTitle:"一个可以点击带按钮")
                }
                NavigationLink(destination: LearnDatePicker()) {
                    HomeItems(title:"DatePicker",subTitle:"一个用来选择日期的滚动控件")
                }
                NavigationLink(destination: LearnPicker()) {
                    HomeItems(title:"Picker",subTitle:"一个滚动选择器")
                }
                NavigationLink(destination: LearnToggle()) {
                    HomeItems(title:"Toggle",subTitle:"一个滑动开关")
                }

            }.navigationBarTitle(Text("SwiftUi学习之路").font(.title)) // Default to large title style
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
