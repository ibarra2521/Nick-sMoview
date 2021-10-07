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
    var genre: HomeGenre = .AllGenres
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var promotionHeadline: String?
    
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    var moreLikeThisMovies: [Movie]
    
    var episode: [Episode]?
    var movieType: MovieType {
        return episode == nil ? .movie : .tvShow
    }
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        guard let num = numberOfSeasons else { return "" }
        return num == 1 ? "1 season" : "\(num) seasons"
    }
    
    var episodeInfoDisplay: String {
        guard let current = currentEpisode else { return "S\(defaultEpisodeInfo.season):S\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)" }
        return "S\(current.season):S\(current.episode) \(current.episodeName)"
    }
    
    var episodeDescriptionDisplay: String {
        guard let current = currentEpisode else { return defaultEpisodeInfo.description }
        return current.description
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
