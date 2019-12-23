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
//sa
//===----------------------------------------------------------------------===//

import DistributedActors
import DistributedActorsXPC

// ==== ----------------------------------------------------------------------------------------------------------------
// MARK: DO NOT EDIT: Codable conformance for XPCEchoServiceProtocolStub.Message
// TODO: This will not be required, once Swift synthesizes Codable conformances for enums with associated values 

extension XPCEchoServiceProtocolStub.Message: Codable {
    // TODO: Check with Swift team which style of discriminator to aim for
    public enum DiscriminatorKeys: String, Decodable {
        case _boxXPCEchoServiceProtocol

    }

    public enum CodingKeys: CodingKey {
        case _case
        case _boxXPCEchoServiceProtocol

    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        switch try container.decode(DiscriminatorKeys.self, forKey: CodingKeys._case) {
        case ._boxXPCEchoServiceProtocol:
            let boxed = try container.decode(GeneratedActor.Messages.XPCEchoServiceProtocol.self, forKey: CodingKeys._boxXPCEchoServiceProtocol)
            self = .xPCEchoServiceProtocol(boxed)

        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .xPCEchoServiceProtocol(let boxed):
            try container.encode(DiscriminatorKeys._boxXPCEchoServiceProtocol.rawValue, forKey: CodingKeys._case)
            try container.encode(boxed, forKey: CodingKeys._boxXPCEchoServiceProtocol)

        }
    }
}
