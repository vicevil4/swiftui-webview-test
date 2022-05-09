//
//  SwiftUIView.swift
//  sample-webview
//
//  Created by aincc on 2022/05/09.
//

import SwiftUI
import WebKit
 
struct MyWebView: UIViewRepresentable {
   
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        var urlRequest = URLRequest(url: url)
        
        // POST 요청 테스트
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let json = ["user_code": "test", "enc_name": "OK", "enc_ci": "ci-1234"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
        urlRequest.httpBody = jsonData
        
        webView.load(urlRequest)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
 
// Canvas 미리보기용
struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
