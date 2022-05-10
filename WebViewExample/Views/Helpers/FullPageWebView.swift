//
//  FullPageWebView.swift
//  WebViewExample
//
//  Created by Russell Gordon on 2022-05-10.
//

import SwiftUI

struct FullPageWebView: View {
    
    // MARK: Stored properties
    @ObservedObject var webViewModel: WebViewModel
    
    // Should navigation be restricted to a given page or site?
    @State var restrictToAddressBeginningWith: String
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                WebViewContainer(webViewModel: webViewModel, restrictToAddressBeginningWith: restrictToAddressBeginningWith)
                
                // When the web page is loading, overlay a waiting indicator.
                if webViewModel.isLoading {
                    ProgressView()
                }
                
            }
            .navigationTitle(webViewModel.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    // If navigation has occured, and there is a page to go back to, allow this via a button
                    Button(action: {
                        
                        webViewModel.shouldGoBack.toggle()
                        
                    }, label: {
                        
                        if webViewModel.canGoBack {
                            Image(systemName: "arrow.left")
                                .frame(width: 44, height: 44, alignment: .center)
                                .foregroundColor(.black)
                        } else {
                            EmptyView()
                                .frame(width: 0, height: 0, alignment: .center)
                        }
                        
                    })
                    
                }
            }
        }
        
    }
    
    // MARK: Initializer
    init(address: String, restrictToAddressBeginningWith: String = "") {
        webViewModel = WebViewModel(url: address)
        self.restrictToAddressBeginningWith = restrictToAddressBeginningWith
    }
}

struct FullPageWebView_Previews: PreviewProvider {
    static var previews: some View {
        FullPageWebView(address: "https://www.russellgordon.ca")
    }
}
