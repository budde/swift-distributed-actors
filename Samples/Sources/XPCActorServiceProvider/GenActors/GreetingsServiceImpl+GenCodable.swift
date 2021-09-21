// ==== ------------------------------------------------------------------ ====
// === DO NOT EDIT: Generated by GenActors                     
// ==== ------------------------------------------------------------------ ====



import DistributedActors
import NIO
import XPCActorServiceAPI

// ==== ----------------------------------------------------------------------------------------------------------------
// MARK: DO NOT EDIT: Codable conformance for GreetingsServiceImpl.Message
// TODO: This will not be required, once Swift synthesizes Codable conformances for enums with associated values 

extension GreetingsServiceImpl.Message {
    // TODO: Check with Swift team which style of discriminator to aim for
    public enum DiscriminatorKeys: String, Decodable {
        case _boxGreetingsService

    }

    public enum CodingKeys: CodingKey {
        case _case
        case _boxGreetingsService

    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        switch try container.decode(DiscriminatorKeys.self, forKey: CodingKeys._case) {
        case ._boxGreetingsService:
            let boxed: GeneratedActor.Messages.GreetingsService = try container.decode(GeneratedActor.Messages.GreetingsService.self, forKey: CodingKeys._boxGreetingsService)
            self = .greetingsService(boxed)

        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .greetingsService(let boxed):
            try container.encode(DiscriminatorKeys._boxGreetingsService.rawValue, forKey: CodingKeys._case)
            try container.encode(boxed, forKey: CodingKeys._boxGreetingsService)

        }
    }
}