//
//  State.swift
//  SimpleAudioPlayer_StatePattern
//
//  Created by Pedro Rojas on 13/05/24.
//

import Foundation

protocol State: Equatable, Identifiable {
    var id: ID { get }

    func apply(event: AudioPlayerEvent) -> any State
}

extension State {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}
