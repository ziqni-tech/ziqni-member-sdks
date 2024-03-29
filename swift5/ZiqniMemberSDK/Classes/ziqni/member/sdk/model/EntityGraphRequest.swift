//
// EntityGraphRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityGraphRequest: Codable, Hashable {

    /** The identifier of the node to create a connected graph for */
    public var ids: [String]
    /** Specify the constraints that need to be applied to the filter. */
    public var constraints: [String]?
    public var traversal: EntityGraphTraversal?
    /** The language codes can be found in the settings/transalations section of the back office */
    public var languageKey: String?
    /** What objects to include from the entity in this response. For achievement the following can be included; description, memberTagsFilter, scheduling, and termsAndConditions */
    public var includes: [String]?
    public var entityType: EntityType

    public init(ids: [String], constraints: [String]? = nil, traversal: EntityGraphTraversal? = nil, languageKey: String? = nil, includes: [String]? = nil, entityType: EntityType) {
        self.ids = ids
        self.constraints = constraints
        self.traversal = traversal
        self.languageKey = languageKey
        self.includes = includes
        self.entityType = entityType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ids
        case constraints
        case traversal
        case languageKey
        case includes
        case entityType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ids, forKey: .ids)
        try container.encodeIfPresent(constraints, forKey: .constraints)
        try container.encodeIfPresent(traversal, forKey: .traversal)
        try container.encodeIfPresent(languageKey, forKey: .languageKey)
        try container.encodeIfPresent(includes, forKey: .includes)
        try container.encode(entityType, forKey: .entityType)
    }
}

