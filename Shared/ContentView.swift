//
//  ContentView.swift
//  Shared
//
//  Created by aincc on 2022/05/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        // 웹뷰 테스트를 위한 링크
        NavigationView {
            HStack{
                NavigationLink(destination: MyWebView(urlToLoad: "https://api.ifree-dev.world/process/PK23Master003/regist.do")) {
                    Text("PK23Master003/regist.do")
                        .edgesIgnoringSafeArea(.all)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.black)
                        .cornerRadius(20, antialiased: true)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
