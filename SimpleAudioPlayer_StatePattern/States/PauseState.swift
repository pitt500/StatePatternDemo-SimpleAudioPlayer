//
//  PauseState.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

struct PauseState: State {
    let id = "Pause"
    
    func apply(event: AudioPlayerEvent) -> any State {
        switch event {
        case .playing:
            print("Resuming Audio")
            return PlayState()
        case .stopping:
            print("Stopping Audio")
            return StopState()
        default:
            print("[Invalid Transition for \(self)] - \(event)")
            return self
        }
    }
}
