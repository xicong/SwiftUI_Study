//
//  LearnModal.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnModal: View {
    
    @State var isModal: Bool = false
    
    @State var detail: ModalDetail?
    
    
    var modal: some View {
        Text("这是一个新的视图")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.yellow)
    }
    
    func modal(detail: String) -> some View {
        Text("带过来的参数：\(detail)").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).background(Color.blue)
    }

    struct ModalDetail: Identifiable {
        var id: String {
            return body
        }
        
        let body: String
    }
    
    var body: some View {
        VStack{
            
            Button("Modal") {
                self.isModal = true
            }.sheet(isPresented: $isModal, content: {
                self.modal
            })
            
            Divider()
            
            Button("Modal  传参数过去的跳转方式") {
                self.detail = ModalDetail(body: "Detail")
            }.sheet(item: $detail, content: { detail in
                self.modal(detail: detail.body)
            })
        }
       
    }
}

struct LearnModal_Previews: PreviewProvider {
    static var previews: some View {
        LearnModal()
    }
}
