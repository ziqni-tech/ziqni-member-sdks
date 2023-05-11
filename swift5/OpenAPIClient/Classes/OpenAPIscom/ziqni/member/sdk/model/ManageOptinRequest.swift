//
// ManageOptinRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ManageOptinRequest: Codable, Hashable {

    /** The system identifier for the entity */
    public var entityId: String?
    /** Achievement, Competition, or Contest  */
    public var entityType: String?
    public var action: OptinAction

    public init(entityId: String? = nil, entityType: String? = nil, action: OptinAction) {
        self.entityId = entityId
        self.entityType = entityType
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entityId
        case entityType
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityType, forKey: .entityType)
        try container.encode(action, forKey: .action)
    }
}

