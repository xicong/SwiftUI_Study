//
//  LearnAlert.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI

struct LearnAlert: View {

    @State var isError: Bool = false
    @State var error: AlertError?
    
    func alert(reason: String) -> Alert {
        Alert(title: Text("Error"),
                message: Text(reason),
                dismissButton: .default(Text("OK"))
        )
    }

    struct AlertError: Identifiable {
        var id: String {
            return reason
        }
        
        let reason: String
    }
    
    var body: some View {
        VStack{
            Button("Alert") {
                self.isError = true
            }.alert(isPresented: $isError, content: {
                Alert(title: Text("Error"), message: Text("Error Reason"), dismissButton: .default(Text("OK")))
            })
            
            Divider()
            
            Button("Alert Error") {
                self.error = AlertError(reason: "Reason")
            }.alert(item: $error, content: { error in
                alert(reason: error.reason)
            })
        }
        
    }
}

struct LearnAlert_Previews: PreviewProvider {
    static var previews: some View {
        LearnAlert()
    }
}
