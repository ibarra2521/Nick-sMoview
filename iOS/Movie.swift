//
//  Movie.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/26/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
