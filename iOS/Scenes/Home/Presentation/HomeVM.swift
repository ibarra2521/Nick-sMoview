//
//  HomeVM.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/26/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies = [String: [Movie]]()
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovies(for category: String, withHomeRow homeTopRow: HomeTopRow, withGenre genre: HomeGenre) -> [Movie] {
        switch homeTopRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            return (movies[category] ?? []).filter { $0.movieType == .movie && $0.genre == genre }
        case .tvShows:
            return (movies[category] ?? []).filter { $0.movieType == .tvShow && $0.genre == genre }
        case .myList:
            return []
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-up commedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Science"] = exampleMovies.shuffled()
        movies["Documentary"] = exampleMovies.shuffled()
    }
}
