//
//  WebView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/14.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let url: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: url) else {
            return
        }
        uiView.load(URLRequest(url: url))
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: "https://google.com")
    }
}
