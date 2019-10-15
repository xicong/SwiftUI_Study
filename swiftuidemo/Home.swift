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
                
                Section(header:Text("基础控件")){
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
                }
                
                Section(header:Text("选择控件")){
                    NavigationLink(destination: LearnPicker()) {
                        HomeItems(title:"Picker",subTitle:"一个滚动选择器")
                    }
                    NavigationLink(destination: LearnToggle()) {
                        HomeItems(title:"Toggle",subTitle:"一个滑动开关")
                    }
                    NavigationLink(destination: LearnSlider()) {
                        HomeItems(title:"Slider",subTitle:"一个滑动选择取值的控件")
                    }
                    NavigationLink(destination: LearnStepper()) {
                        HomeItems(title:"Stepper",subTitle:"一个类似购物车页面点击增加，减少商品数量的控件")
                    }
                }
                
                Section(header:Text("布局控件")){
                    NavigationLink(destination: LearnVStack()) {
                        HomeItems(title:"VStack",subTitle:"一个可以将子视图以竖向依次排列在垂直线上的布局")
                    }
                    NavigationLink(destination: LearnHStack()) {
                        HomeItems(title:"HStack",subTitle:"一个可以将子视图以竖向依次排列在水平线上的布局")
                    }
                    NavigationLink(destination: LearnZStack()) {
                        HomeItems(title:"ZStack",subTitle:"一个可以将子视图以重叠的方式，在xy轴上对齐的布局")
                    }
                    NavigationLink(destination: LearnList()) {
                        HomeItems(title:"List",subTitle:"一个可以将子视图以List列表的形式依次排列显示的布局")
                    }
                    NavigationLink(destination: LearnScrollView()) {
                        HomeItems(title:"ScrollView",subTitle:"一个可以将子视图能具备滚动的布局")
                    }
                    NavigationLink(destination: LearnForm()) {
                        HomeItems(title:"Form",subTitle:"用于对用于数据输入的控件进行分组的容器，如在设置或检查器中。您可以将几乎任何内容放入此表单，它将为表单呈现适当的样式。")
                    }
                    NavigationLink(destination: LearnSpacer()) {
                        HomeItems(title:"Spacer",subTitle:"主要用于在两个轴上灵活的扩展空间")
                    }
                    NavigationLink(destination: LearnDivider()) {
                        HomeItems(title:"Divider",subTitle:"一条分割线用于在视觉上分割两个元素")
                    }
                    NavigationLink(destination: LearnNavigationView()) {
                        HomeItems(title:"NavigationView",subTitle:"用于创建包含顶部导航栏的视图容器")
                    }
                    NavigationLink(destination: LearnTabView()) {
                        HomeItems(title:"TabView",subTitle:"类似于微信主页按钮切换中间视图的效果")
                    }
                }
                
                Section(header:Text("布局控件")){
                    NavigationLink(destination: LearnAlert()) {
                        HomeItems(title:"Alert",subTitle:"用于常见的删除等操作的二次确认弹窗")
                    }
                    NavigationLink(destination: LearnModal()) {
                        HomeItems(title:"Modal",subTitle:"用于弹出一个视图")
                    }
                    NavigationLink(destination: LearnActionSheet()) {
                        HomeItems(title:"ActionSheet",subTitle:"用于从底部弹出一个选择确认框")
                    }
                }
                
                Section(header:Text("特殊控件")){
                    NavigationLink(destination: LearnWebView()) {
                        HomeItems(title:"WebView",subTitle:"用于显示一个网页的控件")
                    }
                    NavigationLink(destination: ControllerPage<UIKitController>()) {
                        HomeItems(title:"UIViewController",subTitle:"打开 UIViewController")

                    }
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
