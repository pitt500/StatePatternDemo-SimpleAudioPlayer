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
        
        switch event {
        case .playing:
            print("Starting audio.")
            return PlayState()
        default:
            print("[Invalid Transition for \(self)] - \(event)")
            return self
        }
    }
}
