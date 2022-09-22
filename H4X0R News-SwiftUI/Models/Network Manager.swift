//
//  Network Manager.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import Foundation


class NetworkManager{
    
    func fetchData(){
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else {return}
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard error == nil else {return}
            guard let safeData = data else {return}
            let decoder = JSONDecoder()
            do{
                let results = try decoder.decode(Results.self, from: safeData)
            }
            catch{
                print(error.localizedDescription)
            }
           
            
        }
        
        task.resume()
        
        
    }
}
