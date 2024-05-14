//
//  FastForwardState.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 14/05/24.
//

import Foundation

struct FastForwardState: State {
    var id = "FastForward"
    
    func apply(event: AudioPlayerEvent) -> any State {

        switch event {
        case .playing:
            print("Resume Audio")
            return PlayState()
        default:
            return self
        }
    }
}
