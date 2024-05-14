//
//  AudioPlayerStateMachine.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

class AudioPlayerStateMachine {
    lazy private(set) var currentState: any State = StopState()
    
    func handle(event: AudioPlayerEvent) {
        let newState = currentState.apply(event: event)
        currentState = newState
    }
}
