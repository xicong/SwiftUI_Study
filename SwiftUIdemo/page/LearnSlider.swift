//
//  Learn1.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/14.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnSlider: View {
    
    @State var progress: Float = 0.0
    
    var body: some View {
        VStack{
            
            Text("选取结果:\(progress)")
            
            HStack {
                Image(systemName: "sun.min")
                Slider(value: $progress)
                Image(systemName: "sun.max.fill")
            }
            
            //不知道为啥用文档上的写法会报错
//            Slider(value: $progress, from: 0.0, through: 100.0, by: 5.0)
            
        }.padding()
        
    }
}

struct Learn1_Previews: PreviewProvider {
    static var previews: some View {
        LearnSlider()
    }
}
