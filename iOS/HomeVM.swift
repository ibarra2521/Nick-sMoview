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
    
    public func getMovies(for category: String) -> [Movie] {
        movies[category] ?? []
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
