//
//  VideoPlayerSwiftUIView.swift
//  AVPlayerAft
//
//  Created by Afina R. Vinci on 07/04/22.
//
/*
 1. Import AVKit
 2.
 3. Create AVPlayer variable
 4. Get video file URL
 5. Create AVPlayerViewController
 6. Play!
 */
import SwiftUI
// 1.
import AVKit

struct VideoPlayerSwiftUIView: View {
    let url = URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "MOV")!)


    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: url))
        }
    }
}

struct VideoPlayerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerSwiftUIView()
    }
}
