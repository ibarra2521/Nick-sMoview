//
//  GlobalHelpers.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/26/21.
//

import SwiftUI

// MARK: - Just for testing propuse

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 1, promotionHeadline: "New episodes coming soon", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 7, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 1, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 1, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Nick", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds")

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Ending ending ending", description: "Beging and Ending...Beging and Ending...Beging and Ending...Beging and Ending...Beging and Ending...", season: 2, episode: 1)

let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


extension LinearGradient {
    static let blackOpacity = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
