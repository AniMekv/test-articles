//
//  NewsResponse.swift
//  Lecture 25
//
//  Created by Nika Kirkitadze on 03.06.21.
//

import Foundation

struct ArticlesResponse: Codable {
    let articlesList: [Articles]
    
    enum CodingKeys: String, CodingKey {
        case articlesList = "articles"
    }
}
