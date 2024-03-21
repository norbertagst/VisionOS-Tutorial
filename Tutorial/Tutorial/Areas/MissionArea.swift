//
//  MissionArea.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI
import AVKit

struct MissionArea: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "DemoVideo", withExtension: "mp4")!)
    @State var isPlaying = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding(5)
            }
            .padding(10)
        }
        .glassBackgroundEffect()
        .onAppear() {
            isPlaying = false
        }
        .onDisappear() {
            player.pause()
        }
    }
}

#Preview {
    MissionArea()
}
