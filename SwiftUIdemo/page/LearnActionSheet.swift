//
//  LearnActionSheet.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnActionSheet: View {
    
    @State var isSheet: Bool = false
    
    @State var sheetDetail: SheetDetail?
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Action"),
                    message: Text("Description"),
                    buttons: [
                        .default(Text("OK"), action: {
                            
                        }),
                        .destructive(Text("Delete"), action: {
                            
                        })
            ]
        )
    }
    
    
    var body: some View {
        VStack{
            Button("Action Sheet") {
                self.isSheet = true
            }.actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
            
            Divider()
            
            Button("Action Sheet  传参数过去的打开方式") {
                self.sheetDetail = SheetDetail(body: "Detail")
            }.actionSheet(item: $sheetDetail, content: { detail in
                self.sheet(detail: detail.body)
            })
        }
        
    }
    
    func sheet(detail: String) -> ActionSheet {
        ActionSheet(title: Text("Action"),
                    message: Text("传过来的参数：\(detail)"),
                    buttons: [
                        .default(Text("OK"), action: {
                            
                        }),
                        .destructive(Text("Delete"), action: {
                            
                        })
            ]
        )
    }
    
    struct SheetDetail: Identifiable {
        var id: String {
            return body
        }
        
        let body: String
    }
}

struct LearnActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        LearnActionSheet()
    }
}
