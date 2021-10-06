//
//  EpisodesView.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/28/21.
//

import SwiftUI

struct EpisodesView: View {
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    var episodes: [Episode]
    
    func getEpisodes(for season: Int) -> [Episode] {
        return episodes.filter { $0.season == season }
    }
    
    var body: some View {
        VStack(spacing: 14){
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            ForEach(getEpisodes(for: selectedSeason)) { episode in
                
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
//                        Spacer()
                        Image(systemName: "arrow.down.to.line")
                            .font(.system(size: 20))
                    }  
                    
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodesView(showSeasonPicker: .constant(false), selectedSeason: .constant(1), episodes: allExampleEpisodes)
        }
        
    }
}
