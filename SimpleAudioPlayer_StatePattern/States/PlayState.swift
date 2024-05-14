//
//  PlayState.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

struct PlayState: State {
    let id = "Play"
    
    func apply(event: AudioPlayerEvent) -> any State {
        switch event {
        case .stopping:
            print("Stopping Audio")
            return StopState()
        case .pausing:
            print("Pausing Audio")
            return PauseState()
        case .rewinding:
            print("Rewinding...")
            return RewindState()
        default:
            return self
        }
    }
}
