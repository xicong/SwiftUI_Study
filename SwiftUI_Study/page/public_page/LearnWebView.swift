//
//  LearnWebView.swift
//  SwiftUIdemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import WebKit


struct LearnWebView: View {
    
    private var url:String;
    
    init(url:String){
        self.url = url
    }
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string:self.url)!))
            //.navigationBarTitle(Text("联动动画"))
            .navigationBarTitle("WebView",displayMode: .inline)
    }
    
}

struct LearnWebView_Previews: PreviewProvider {
    static var previews: some View {
        LearnWebView(url: "https://github.com/xicong/SwiftUI_Study")
    }
}

struct WebView : UIViewRepresentable {
    
    let request : URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        let wKWebView = WKWebView();
        return wKWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}
