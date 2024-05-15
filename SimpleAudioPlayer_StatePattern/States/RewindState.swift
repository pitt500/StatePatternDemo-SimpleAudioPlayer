//
//  RewindState.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 14/05/24.
//

import Foundation

struct RewindState: State {
    let id = "Rewind"
    
    func apply(event: AudioPlayerEvent) -> any State {

        switch event {
        case .playing:
            print("Resume Audio")
            return PlayState()
        default:
            print("[Invalid Transition for \(self)] - \(event)")
            return self
        }
    }
}
