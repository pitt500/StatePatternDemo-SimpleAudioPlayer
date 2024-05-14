//
//  SimpleAudioPlayer_StatePatternTest.swift
//  SimpleAudioPlayer_StatePatternTest
//
//  Created by Pedro Rojas on 13/05/24.
//

import XCTest
@testable import SimpleAudioPlayer_StatePattern

final class SimpleAudioPlayer_StatePatternTest: XCTestCase {
    var stateMachine: AudioPlayerStateMachine!
    
    override func setUp() {
        super.setUp()
        self.stateMachine = AudioPlayerStateMachine()
    }
    
    func testFromStopToPlay() {
        let expected = PlayState()
        
        stateMachine.handle(event: .playing)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? PlayState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromPlayToStop() {
        let expected = StopState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .stopping)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? StopState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromPlayToPause() {
        let expected = PauseState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .pausing)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? PauseState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromPauseToStop() {
        let expected = StopState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .pausing)
        stateMachine.handle(event: .stopping)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? StopState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromPauseToPlay() {
        let expected = PlayState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .pausing)
        stateMachine.handle(event: .playing)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? PlayState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromPlayToRewind() {
        let expected = RewindState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .rewinding)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? RewindState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    func testFromRewindToPlay() {
        let expected = PlayState()
        
        stateMachine.handle(event: .playing)
        stateMachine.handle(event: .rewinding)
        stateMachine.handle(event: .playing)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? PlayState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
    
    // MARK: Invalid States
    func testFromStopToPause() {
        let expected = StopState()
        
        stateMachine.handle(event: .pausing)
        let actual = stateMachine.currentState
        
        XCTAssertNotNil(actual as? StopState, "Invalid Transition found. This is a bug in your logic. The expected type is \(type(of: expected)).")
    }
}
