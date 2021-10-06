//
//  GlobalHelpers.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/26/21.
//

import SwiftUI

// MARK: - Just for testing propuse

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "New episodes coming soon", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7], episode: allExampleEpisodes, trailers: exampleTrailers)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 7, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], episode: allExampleEpisodes, trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 1, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], episode: allExampleEpisodes, trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 1, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Nick", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Nick", thumbnailURL: URL(string: "https://picsum.photos/200/307")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2021, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bran Bo Odam, Jant Ruser", cast: "Freied Hordfma, Oliver ASkids, Moids Derds", moreLikeThisMovies: [], trailers: exampleTrailers)

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Ending ending ending", description: "Beging and Ending...Beging and Ending...Beging and Ending...Beging and Ending...Beging and Ending...", season: 2, episode: 1)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL1 = URL(string: "https://picsum.photos/220/341")!
let exampleImageURL2 = URL(string: "https://picsum.photos/220/342")!
let exampleImageURL3 = URL(string: "https://picsum.photos/220/343")!

var randomExampleImageURL: URL {
    return [exampleImageURL1, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL1
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Beginning and Endings", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/200/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 53, videoURL: exampleVideoURL)
let episode2 = Episode(name: "Beginning and Endings", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/202/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 54, videoURL: exampleVideoURL)
let episode3 = Episode(name: "Beginning and Endings", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/203/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 56, videoURL: exampleVideoURL)

let episode4 = Episode(name: "Beginning and Endings", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/290/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 53, videoURL: exampleVideoURL)
let episode5 = Episode(name: "Beginning and Endings", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/291/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 54, videoURL: exampleVideoURL)
let episode6 = Episode(name: "Beginning and Endings", season: 2, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/292/307", description: "whatever whatever whatever whatever whatever whatever whatever whateverwhatever whatever whatever whatever whatever whatever", length: 56, videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode6, episode6]

extension LinearGradient {
    static let blackOpacity = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
