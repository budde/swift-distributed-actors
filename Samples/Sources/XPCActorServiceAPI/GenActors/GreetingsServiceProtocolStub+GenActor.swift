// ==== ------------------------------------------------------------------ ====
// === DO NOT EDIT: Generated by GenActors                     
// ==== ------------------------------------------------------------------ ====

// ==== ------------------------------------------------------------------ ====
// === DO NOT EDIT: Generated by GenActors                     
// ==== ------------------------------------------------------------------ ====

//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Distributed Actors open source project
//
// Copyright (c) 2019 Apple Inc. and the Swift Distributed Actors project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.md for the list of Swift Distributed Actors project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import DistributedActors
import DistributedActorsXPC
import NIO

// ==== ----------------------------------------------------------------------------------------------------------------
// MARK: DO NOT EDIT: Generated GreetingsServiceProtocolStub messages 

/// DO NOT EDIT: Generated GreetingsServiceProtocolStub messages
extension GreetingsServiceProtocolStub {

    public enum Message { 
        case logGreeting(name: String) 
        case greet(name: String, _replyTo: ActorRef<String>) 
        case greetingsServiceProtocol(/*TODO: MODULE.*/GeneratedActor.Messages.GreetingsServiceProtocol) 
    }
    
    /// Performs boxing of GeneratedActor.Messages.GreetingsServiceProtocol messages such that they can be received by Actor<GreetingsServiceProtocolStub>
    public static func _boxGreetingsServiceProtocol(_ message: GeneratedActor.Messages.GreetingsServiceProtocol) -> GreetingsServiceProtocolStub.Message {
        .greetingsServiceProtocol(message)
    } 
    
}
// ==== ----------------------------------------------------------------------------------------------------------------
// MARK: DO NOT EDIT: Generated GreetingsServiceProtocolStub behavior

extension GreetingsServiceProtocolStub {

    public static func makeBehavior(instance: GreetingsServiceProtocolStub) -> Behavior<Message> {
        fatalError("Behavior STUB for XPCActorableProtocol. Not intended to be instantiated.")
    }
}
