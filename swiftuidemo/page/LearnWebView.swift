//
//  LearnWebView.swift
//  swiftuidemo
//
//  Created by xc on 2019/10/15.
//  Copyright © 2019 xc. All rights reserved.
//

import SwiftUI
import WebKit

struct LearnWebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let urlRequest = URLRequest(url: URL(string: "https://github.com/xicong/SwiftUIDemo")!)
        uiView.load(urlRequest)
    }
}

struct LearnWebView_Previews: PreviewProvider {
    static var previews: some View {
        LearnWebView()
    }
}
