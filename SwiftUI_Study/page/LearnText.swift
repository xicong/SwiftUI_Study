//
//  SwiftUIView.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/9/28.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnText: View {
    
    @State
    var textStr: String = "SwiftUI 是一种为任何 Apple 平台声明用户界面的现代化方式。以前所未有的速度，创建漂亮、动态的应用程序。"
    
    @State
    var textColor: Color = Color.black
    
    @State
    var textBackGround: Color = Color.white
    
    @State
    var textPadding: CGFloat = 10.0
    
    @State
    var textFontSize: CGFloat = 15.0
    
    @State
    var textLineSpacing: CGFloat = 5.0
    
    @State
    var textKerning:CGFloat = 0.0
    
    @State
    var textBaselineOffset:CGFloat = 0.0
    var textBaselineOffsetArr:[CGFloat]=[0.0,15.0,-15.0]
    
    @State
    var textbBold:Bool = false
    
    
    var body: some View {
        Group{
            VStack(alignment: .leading, spacing: 0){
                HStack(alignment: .center, spacing: 0){
                    Text(textStr)
                        //                        .bold() //字体加粗
                        .fontWeight(textbBold ? .bold : .none)  //替代bold()的绝佳方案
                        .italic() //斜体文字
                        .baselineOffset(textBaselineOffset)
                        .kerning(textKerning)
                        .font(.system(size: textFontSize))
                        .foregroundColor(textColor)
                        .background(textBackGround)
                        .lineSpacing(textLineSpacing)
                        .padding(textPadding)
                }
                .border(Color.blue,width: 5)
                .cornerRadius(10, antialiased: true)
                .padding(EdgeInsets.init(top: 20, leading: 10, bottom: 20, trailing: 10))
                
                List(){
                    HStack(){
                        Text("Text(设置文字内容)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textStr=="Text"){
                            self.textStr="修改文字成功"
                        }else{
                            self.textStr="Text"
                        }
                    }
                    HStack(){
                        Text("foregroundColor(设置文字颜色)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textColor==Color.black){
                            self.textColor=Color.yellow
                        }else{
                            self.textColor=Color.black
                        }
                    }
                    HStack(){
                        Text("background(设置文字背景颜色)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textBackGround==Color.white){
                            self.textBackGround=Color.yellow
                        }else{
                            self.textBackGround=Color.white
                        }
                    }
                    HStack(){
                        Text("padding(设置文字内容的边距)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textPadding==10.0){
                            self.textPadding=0.0
                        }else{
                            self.textPadding=10.0
                        }
                    }
                    HStack(){
                        Text("font(设置文字的字体和大小，默认使用系统的字体)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textFontSize==15.0){
                            self.textFontSize=30.0
                        }else{
                            self.textFontSize=15.0
                        }
                    }
                    HStack(){
                        Text("lineSpacing(设置行距)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textLineSpacing==5.0){
                            self.textLineSpacing=30.0
                        }else{
                            self.textLineSpacing=5.0
                        }
                    }
                    HStack(){
                        Text("kerning(设置文字间距)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textKerning==0.0){
                            self.textKerning=10.0
                        }else{
                            self.textKerning=0.0
                        }
                    }
                    HStack(){
                        Text("baselineOffset(相对于基线向上向下移动文本)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textBaselineOffset==0.0){
                            self.textBaselineOffset=self.textBaselineOffsetArr[Int(arc4random()%3)]
                        }else{
                            self.textBaselineOffset=0.0
                        }
                    }
                    HStack(){
                        Text("fontWeight(设置文字粗体)").font(.system(size: 15))
                        Spacer()
                    }
                    .onTapGesture {
                        if(self.textbBold){
                            self.textbBold=false
                        }else{
                            self.textbBold=true
                        }
                    }
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
        }
        .navigationBarTitle("Text",displayMode: .inline)
        .navigationBarItems(
            trailing:Text("恢复默认")
                .font(.system(size: 12))
                .bold()
                .onTapGesture {
                    self.textStr = "SwiftUI 是一种为任何 Apple 平台声明用户界面的现代化方式。以前所未有的速度，创建漂亮、动态的应用程序。"
                    self.textColor = Color.black
                    self.textBackGround = Color.white
                    self.textPadding = 10.0
                    self.textFontSize = 15.0
                    self.textLineSpacing = 5.0
                    self.textKerning = 0.0
                    self.textBaselineOffset = 0.0
                    self.textbBold = false
            }
        ).navigationBarHidden(false)
    }
}

struct LearnText_Previews: PreviewProvider {
    static var previews: some View {
        LearnText()
    }
}


