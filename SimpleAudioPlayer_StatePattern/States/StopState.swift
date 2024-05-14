//
//  StopState.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

struct StopState: State {
    let id = "Stop"
    
    func apply(event: AudioPlayerEvent) -> any State {
        print("Starting audio.")
        
        return switch event {
        case .playing:
            PlayState()
        default:
            self
        }
    }
}
