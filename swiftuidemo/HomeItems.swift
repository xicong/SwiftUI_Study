//
//  HomeItems.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/11.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct HomeItems: View {
    
    private var title:String
    private var subTitle:String
    
    init(title:String,subTitle:String) {
        self.title=title
        self.subTitle=subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(title)
                .font(.system(size: 20))
                .foregroundColor(Color.black)
                .fontWeight(.bold)
            Text(subTitle)
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
        }
    }
}

struct HomeItems_Previews: PreviewProvider {
    static var previews: some View {
        HomeItems(title: "title",subTitle: "描述")
    }
}
