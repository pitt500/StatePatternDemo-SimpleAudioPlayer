//
//  SimpleAudioPlayer.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

class SimpleAudioPlayer {
    private var machine = AudioPlayerStateMachine()
    
    func play() {
        machine.handle(event: .playing)
    }
    
    func stop() {
        machine.handle(event: .stopping)
    }
    
    func pause() {
        machine.handle(event: .pausing)
    }
    
    func rewind() {
        machine.handle(event: .rewinding)
    }
}
