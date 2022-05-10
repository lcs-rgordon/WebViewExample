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
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    Text("This is an example of a view within an app that includes a live web page as a smaller sub-component of the view.")
                        .multilineTextAlignment(.leading)
                    
                    // Navigation is restricted
                    WebView(address: "https://www.russellgordon.ca/",
                            restrictToAddressBeginningWith: "www.russellgordon.ca")
                    .border(.black, width: 1.0)
                    // A height must be specified if additional content is placed below the web view.
                    .frame(height: 250)
                    
                    Text("Note that a frame height must be specified on the WebView when additional content is placed below the WebView.")
                        .multilineTextAlignment(.leading)
                    
                    Text("Additionally, observe that you cannot navigate to another website while using this subview. To allow un-restricted browsing – when the user can go to any site after from the initial web page – just pass an empty string for the **restrictToAddressBeginningWith** parameter of the WebView.")
                        .multilineTextAlignment(.leading)

                    Text("The other tab within this app is an example of loading a WebView and having it take up all of the available space in a view.")
                        .multilineTextAlignment(.leading)
                    
                }
                
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
