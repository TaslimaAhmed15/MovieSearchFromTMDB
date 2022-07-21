//
//  MovieResults.swift
//  brainStationCodableWithMVVMtmdbProject
//
//  Created by MacBook on 17/7/22.
//

import Foundation
struct MovieResults: Codable {
    
    let page: Int
    let results: [Movie]
    let totalPages: Int
    let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    
}
