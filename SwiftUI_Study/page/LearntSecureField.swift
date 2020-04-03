//
//  LearntTexts.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/12.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearntSecureField: View {
    
    @State
    private var password:String=""
    
    var body: some View {
        VStack{
            HStack{
                Text("密码:")
                SecureField("用来输入私密的内容，比如密码等",text: $password,onCommit:{
                    print("输入提交内容\(self.password)")
                })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 13))
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle("SecureField",displayMode: .inline)
    }
}

struct LearntTexts_Previews: PreviewProvider {
    static var previews: some View {
        LearntSecureField()
    }
}
