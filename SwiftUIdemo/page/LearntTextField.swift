//
//  Learnt.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearntTextField: View {
    
    @State
    private var inputData:String=""  //同步输入的内容
    
    var body: some View {
        VStack{
            HStack{
                Text("用户名：")
                TextField("用户名没有限制",text: $inputData,onEditingChanged:{ (changed) in
                    print("监听输入框的d焦点：\(changed)")
                },onCommit:{
                    print("输入提交")
                    KeyUtils.keyWindow?.endEditing(true)
                }).background(Color.white)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            Spacer()
        }.navigationBarTitle("",displayMode: .inline)
    }
}

struct Learnt_Previews: PreviewProvider {
    static var previews: some View {
        LearntTextField()
    }
}
