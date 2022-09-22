//
//  ContentView.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
        
        .onAppear(perform: networkManager.fetchData)
      
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 
