//
//  DetailView.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import SwiftUI
import WebKit
import SafariServices

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

 
