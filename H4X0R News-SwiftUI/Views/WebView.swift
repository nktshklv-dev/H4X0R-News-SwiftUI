//
//  WebView.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString else {return}
        guard let url = URL(string: safeString) else {return}
        
        uiView.load(URLRequest(url: url))
        
        
    }
    
    
}
