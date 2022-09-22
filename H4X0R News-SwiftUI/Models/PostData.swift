//
//  PostData.swift
//  H4X0R News-SwiftUI
//
//  Created by Nikita  on 9/22/22.
//

import Foundation



struct Results: Codable{
    var hits: [Post]
}


struct Post: Codable, Identifiable{
    var id: String{
        return objectID
    }
    let points: Int
    let title: String
    let url: String
    
    let objectID: String
}
