//
//  Movie.swift
//  brainStationCodableWithMVVMtmdbProject
//
//  Created by MacBook on 17/7/22.
//

import Foundation
struct Movie: Codable, Equatable {
    
    let posterPath: String?
    let overview: String
    let title: String

    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case title
        case overview

    }
}
