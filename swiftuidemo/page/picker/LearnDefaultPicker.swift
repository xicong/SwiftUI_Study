//
//  SwiftUIView.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/14.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnDefaultPicker: View {
    
    var body: some View {
        List (){
            Text("⚠️ PickerStyle：不知道为什么我尝试很多次想用弹窗通过@state动态去切换，可是一直报错，所以只能用这种繁琐的方式去展示了")
                .bold()
        
            NavigationLink(destination: LearnDefaultPickerDefaultStyle()) {
                HomeItems(title:"DefaultPickerStyle",subTitle:"默认的样式")
            }
            NavigationLink(destination: LearnDefaultPickerSegmentedStyle()) {
                HomeItems(title:"SegmentedPickerStyle",subTitle:"ios13中的另一种样式")
            }
            NavigationLink(destination: LearnDefaultPickerWheelStyle()) {
                HomeItems(title:"WheelPickerStyle",subTitle:"轮子的样式")
            }
        }
        .navigationBarTitle("pickerStyle")
    }
}

struct LearnDefaultPicker_Previews: PreviewProvider {
    static var previews: some View {
        LearnDefaultPicker()
    }
}
