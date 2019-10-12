//
//  LearnImageS.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnImageSectionHeader: View {
    
    private var name:String
    
    init(name:String) {
        self.name=name
    }
    
    var body: some View {
        HStack{
            Spacer()
            Text(name)
                .font(.system(size: 15))
                .foregroundColor(Color.black)
                .bold()
            Spacer()
        }
        .frame(height: 40)
        .background(Color.gray)
        
    }
}

struct LearnImageS_Previews: PreviewProvider {
    static var previews: some View {
        LearnImageSectionHeader(name: "")
    }
}
