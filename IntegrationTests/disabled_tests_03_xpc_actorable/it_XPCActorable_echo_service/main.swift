//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Distributed Actors open source project
//
// Copyright (c) 2019-2020 Apple Inc. and the Swift Distributed Actors project authors
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
import Files
import it_XPCActorable_echo_api

private let _file = try! Folder(path: "/tmp").file(named: "xpc.txt")

try! _file.append("service starting...\n")

let system = ActorSystem("it_XPCActorable_echo_service") { settings in
    settings.transports += .xpcService

    settings.cluster.swim.pingTimeout = .seconds(3)

//    settings.serialization.register(GeneratedActor.Messages.XPCEchoServiceProtocol.self, underId: 10001)
//    settings.serialization.register(XPCEchoService.Message.self, underId: 10002)
//    settings.serialization.register(Result<String, Error>.self, underId: 10003)
}

try! _file.append("service booted...\n")

let service = try XPCActorableService(system, XPCEchoService.init)

service.park()
try! system.park() // TODO: system park should invoke the service park, we only need to park once for XPC to kickoff dispatch_main
// unreachable, park never exits