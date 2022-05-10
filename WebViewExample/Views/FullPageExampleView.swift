//
//  FullPageExampleView.swift
//  WebViewExample
//
//  Created by Russell Gordon on 2022-05-10.
//

import SwiftUI

struct FullPageExampleView: View {
    var body: some View {
        
        // This will take up the full screen
        // Navigation is not restricted
        WebView(address: "https://www.russellgordon.ca/",
                restrictToAddressBeginningWith: "")

    }
}

struct FullPageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FullPageExampleView()
    }
}
