//
//  NewsAPIResponse.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import Foundation

struct NewsAPIResponse: Decodable {
    
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
}
