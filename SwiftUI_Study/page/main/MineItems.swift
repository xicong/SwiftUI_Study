//
//  MineItems.swift
//  SwifUIdemo
//
//  Created by xc on 2020/4/2.
//  Copyright © 2020 xc. All rights reserved.
//

import SwiftUI

struct MineItems: View {
    
    private var url:String
    
    private var name:String
    
    private var icon:String
    
    init(url:String,name:String,icon:String){
        self.url = url
        self.name = name
        self.icon = icon
    }
    
    var body: some View {
        NavigationLink(destination: LearnWebView(url:self.url)) {
                 HStack(){
                    Image(systemName: self.icon)
                     .resizable()
                     .frame(width: 25, height: 25, alignment: .center)
                     .foregroundColor(Color.gray)
                     .padding(EdgeInsets.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                    Text(self.name)
                        .font(Font.system(size: 14))
                        .foregroundColor(Color.black)
                 Spacer()
                 //Image(systemName: "chevron.right")

             }
        }

    }
}

struct MineItems_Previews: PreviewProvider {
    static var previews: some View {
        MineItems(url: "https://github.com/xicong/SwiftUI_Study",name: "github",icon: "book.circle")
    }
}
