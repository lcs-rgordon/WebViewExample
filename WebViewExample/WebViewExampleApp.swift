//
//  WebViewExampleApp.swift
//  WebViewExample
//
//  Created by Russell Gordon on 2022-05-10.
//

import SwiftUI

// SOURCE: https://blog.devgenius.io/webviews-in-swiftui-d5b1229e37ba
// SEE ALSO: https://www.hackingwithswift.com/articles/112/the-ultimate-guide-to-wkwebview

@main
struct WebViewExampleApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                
                FullPageWebView(address: "https://www.russellgordon.ca/")
                    .tabItem {
                        Text("Full Page")
                        Image(systemName: "text.justify")
                    }
                
            }
        }
    }
}
