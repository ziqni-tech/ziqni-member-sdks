//
// ModelDefault.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ModelDefault: Codable, Hashable {

    /** Ziqni id of the model */
    public var id: String
    /** This is the space name which is linked to the account */
    public var spaceName: String?
    /** ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone */
    public var created: Date?

    public init(id: String, spaceName: String? = nil, created: Date? = nil) {
        self.id = id
        self.spaceName = spaceName
        self.created = created
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case spaceName
        case created
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(spaceName, forKey: .spaceName)
        try container.encodeIfPresent(created, forKey: .created)
    }
}
