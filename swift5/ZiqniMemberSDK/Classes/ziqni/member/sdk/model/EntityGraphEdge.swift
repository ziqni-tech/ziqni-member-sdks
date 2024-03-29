//
// EntityGraphEdge.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityGraphEdge: Codable, Hashable {

    public var ordering: Int
    public var constraints: [String]?
    /** X the tail of the edge  */
    public var tailEntityId: String?
    /** Y the head of the edge. */
    public var headEntityId: String?
    public var graphEdgeType: EntityGraphEdgeType?

    public init(ordering: Int, constraints: [String]? = nil, tailEntityId: String? = nil, headEntityId: String? = nil, graphEdgeType: EntityGraphEdgeType? = nil) {
        self.ordering = ordering
        self.constraints = constraints
        self.tailEntityId = tailEntityId
        self.headEntityId = headEntityId
        self.graphEdgeType = graphEdgeType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ordering
        case constraints
        case tailEntityId
        case headEntityId
        case graphEdgeType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ordering, forKey: .ordering)
        try container.encodeIfPresent(constraints, forKey: .constraints)
        try container.encodeIfPresent(tailEntityId, forKey: .tailEntityId)
        try container.encodeIfPresent(headEntityId, forKey: .headEntityId)
        try container.encodeIfPresent(graphEdgeType, forKey: .graphEdgeType)
    }
}

