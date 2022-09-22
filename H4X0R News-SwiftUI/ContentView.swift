//
//  ContentView.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
        
      
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


let posts = [
    Post(id: "1", title: "Hello1"),
    Post(id: "2", title: "Hello2"),
    Post(id: "3", title: "Hello3"),
    Post(id: "4", title: "Hello4"),
    Post(id: "5", title: "Hello5")
]
