//
//  PartialPageExampleView.swift
//  WebViewExample
//
//  Created by Russell Gordon on 2022-05-10.
//

import SwiftUI

struct PartialPageExampleView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vestibulum mauris quis elit condimentum egestas. Morbi molestie feugiat velit et finibus. Curabitur vitae est sit amet velit auctor aliquet et in nulla.\n\nNavigation is restricted on this web view.")
                    .multilineTextAlignment(.leading)
                
                // Navigation is restricted
                WebView(address: "https://www.russellgordon.ca/",
                        restrictToAddressBeginningWith: "www.russellgordon.ca")
                .border(.black, width: 1.0)
                // A height must be specified if content is below the web view.
                .frame(height: 250)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vestibulum mauris quis elit condimentum egestas. Morbi molestie feugiat velit et finibus. Curabitur vitae est sit amet velit auctor aliquet et in nulla.")
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .navigationTitle("Partial page")
        }
    }
}

struct PartialPageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PartialPageExampleView()
    }
}
