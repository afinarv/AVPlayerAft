//
//  ContentView.swift
//  AVPlayerAft
//
//  Created by Afina R. Vinci on 07/04/22.
//

import SwiftUI
// 1.
import AVFoundation
// 3.
var audioPlayer: AVAudioPlayer?

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                playAudio()
            } label: {
                Text("play")
            }
            Button {
                pauseAudio()
            } label: {
                Text("pause")
            }
            Button {
                stopAudio()
            } label: {
                Text("stop")
            }
        }
        
    }
    
    func playAudio() {
        //4.
        let path = Bundle.main.path(forResource: "audio1", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        //5.
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url)
        } catch {
            print("Can't play audio, error: \(error)")
        }
        audioPlayer?.play()
        
    }
    func pauseAudio() {
        audioPlayer?.pause()
    }
    func stopAudio() {
        audioPlayer?.stop()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
