//
//  VideoPreviewImage.swift
//  Nick'sMovie
//
//  Created by Nivardo Ibarra on 9/27/21.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    @State private var showingVideoPlayer = false
    
    var imageURL: URL
    var videoURL: URL
        
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                VideoView(url: videoURL)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL1, videoURL: exampleVideoURL)
    }
}
