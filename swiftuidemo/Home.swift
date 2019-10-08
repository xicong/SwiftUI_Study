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
                NavigationLink(destination: LearnText()) {
                    Text("Text")
                }
            }
            .navigationBarTitle(Text("SwiftUi学习之路")) // Default to large title style
        }
        
        
        
//        VStack (alignment: .leading){
//            Text("111")
//            Text("111")
//            Text("11111111111111111111111111")
//            Text("111")
//            Text("111")
//            Text("111")
//            HStack(){
//                Text("横向")
//                Spacer()
//                Text("横向*********************88")
//                Spacer()
//                Text("横向")
//            }
//        }.padding()
        
            
//        Text("Hello World ***")
//            .bold() //字体加粗
//            .italic() //斜体文字
////            .font(.system(size: 50))  //设置字体为系统字体,并设置大小
//            .font(.custom("Zapfino", size: 30))
//            .kerning(0)  //文本中字符之间的距离
////            .lineSpacing(100)  设置行之间的间距
////            .baselineOffset(-50)   //相对于基线向上或者向下移动文本
//            .foregroundColor(Color.yellow) //文字颜色
////            .underline() //设置文字下划线，默认颜色为文字颜色
//            .underline(true, color: Color.green)  //设置文字下划线true显示false隐藏，并设置颜色
////            .strikethrough() //设置文字删除线 颜色默认为文字的颜色
//            .strikethrough(true, color: Color.red) //设置文字删除线true显示false隐藏，并设置颜色
//            .padding()
//            .background(Color.blue)  //设置文字的背景色
//            .padding()  //设置边距，在当前视图之外去实现新的属性  ==.padding(.all)
//            .background(Color.red)
//            .padding()
//            .background(Color.yellow)
//            .padding()
//            .background(Color.gray)
//            .padding()
//            .background(Color.green)
//            .padding()
//            .background(Color.black)
////            .allowsTightening(true)  //设置此视图中的文本是否在必要时可以压缩字符之间的空格以使文本适合一行。
////            .cornerRadius(50) //设置当前view的圆角大小
//            .cornerRadius(50, antialiased: false)
//            .padding()
//            .border(Color.green, width: 10)  //设置该视图的边框颜色 宽度
//            .opacity(1.0)  //设置view的透明度
////            .multilineTextAlignment(.trailing)  //设置多行文字的时候文字对齐的方式，左，右，居中
////            .lineLimit(1)  //设置文字行数
////            .border(Color.red, width: 4, cornerRadius: 16)
////            .font(.title)
////            .font(.body)
////            .fontWeight(.light)  //文字粗细 个人感觉变化一点都不明显
////            .colorMultiply(.white)  //颜色相乘
////            .colorInvert()  //颜色反转
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
