//
//  SwiftUIView.swift
//  swiftuidemo
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
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(){
                Text(textStr)
                .bold()
                .italic()
                .foregroundColor(textColor)
                .background(textBackGround)
                    .padding(textPadding)
            }
            .border(Color.blue,width: 5)
            
            List(){
                HStack(){
                    Text("Text(设置文字内容)")
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
                    Text("foregroundColor(设置文字颜色)")
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
                    Text("background(设置文字背景颜色)")
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
                    Text("padding(设置文字内容的边距)")
                    Spacer()
                }
                .onTapGesture {
                    if(self.textPadding==10.0){
                        self.textPadding=0.0
                    }else{
                        self.textPadding=10.0
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LearnText()
    }
}
