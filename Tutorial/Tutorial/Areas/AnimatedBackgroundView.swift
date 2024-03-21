//
//  AnimatedBackgroundView.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI
import AVKit

//struct AnimatedBackgroundView: View {
//    var body: some View {
////        GeometryReader { geometry in
////            WebView(urlString: Bundle.main.url(forResource: "hyperspace", withExtension: "gif")!.absoluteString)
////                .frame(width: geometry.size.width, height: geometry.size.height)
////                .edgesIgnoringSafeArea(.all)
////                .background(Color(.red))
////        }
//            WebView(urlString: Bundle.main.url(forResource: "hyperspace", withExtension: "gif")!.absoluteString)
//                .scaledToFit()
//                .frame(width: 1000, height: 1000)
//                .background(Color(.red))
//        
//    }
//}
//
//struct WebView: UIViewRepresentable {
//    let urlString: String
//    
//    func makeUIView(context: Context) -> WKWebView {
//        let webView = WKWebView()
//        if let url = URL(string: urlString) {
//            let request = URLRequest(url: url)
//            webView.load(request)
//        }
//    
//        webView.frame =  CGRect(x: 0, y: 0, width: 1000, height: 1000)
//        webView.contentMode = .scaleToFill
//        return webView
//    }
//    
//    func updateUIView(_ uiView: WKWebView, context: Context) {}
//}

//struct AnimatedBackgroundView: UIViewRepresentable {
//    var videoURL: URL
//
//    func makeUIView(context: Context) -> UIView {
//        let player = AVPlayer(url: videoURL)
//        let playerLayer = AVPlayerLayer(player: player)
//        playerLayer.videoGravity = .resizeAspectFill
//        player.play()
//
//        let view = UIView(frame: CGRect.zero)
//        view.layer.addSublayer(playerLayer)
//
//        // Ensure the video remains visible and plays in the background
//        playerLayer.frame = view.bounds
//        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: nil) { _ in
//            player.seek(to: .zero)
//            player.play()
//        }
//        
//        return view
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {
//        // Update the view if needed
//    }
//}
//
//#Preview {
//    AnimatedBackgroundView(videoURL: Bundle.main.url(forResource: "DemoVideo", withExtension: "mp4")!)
//}
struct AmbienceVid: UIViewRepresentable {
   func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AmbienceVid>) {
   }

   func makeUIView(context: Context) -> UIView {
     return PlayerUIView(frame: .zero)
   }
 }

class PlayerUIView: UIView {
    private var playerLooper: AVPlayerLooper?
    private var playerLayer = AVPlayerLayer()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Load the resource
        let fileUrl = Bundle.main.url(forResource: "HyperSpace", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
         
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)

        // Start the movie
        player.volume = 0.0
        player.play()
    }

    override func layoutSubviews() {
            super.layoutSubviews()
            playerLayer.frame = bounds
    }
}

#Preview {
    AmbienceVid()
}
