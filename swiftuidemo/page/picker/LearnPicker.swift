
//
//  Learnp.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnPicker: View {
    
    var body: some View {
        List{
            
            NavigationLink(destination: LearnDefaultPicker()) {
                HomeItems(title:"Picker",subTitle:"一个默认的滚动选择器")
            }
            
            NavigationLink(destination: LearnDatePicker()) {
                HomeItems(title:"DatePicker",subTitle:"一个日期滚动选择器")
            }
            
        }.navigationBarTitle("Picker")
        
    }
}
struct Learnp_Previews: PreviewProvider {
    static var previews: some View {
        LearnPicker()
    }
}
