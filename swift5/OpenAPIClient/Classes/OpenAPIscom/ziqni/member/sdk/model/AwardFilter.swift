//
// AwardFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AwardFilter: Codable, Hashable {

    public var productIds: [String]?
    public var tags: [String]?
    public var ids: [String]?
    public var statusCode: NumberRange?
    public var sortBy: [QuerySortBy]?
    public var skip: Int?
    public var limit: Int?
    public var constraints: [String]?
    /** Achievement, Contest or Competition */
    public var entityIds: [String]?

    public init(productIds: [String]? = nil, tags: [String]? = nil, ids: [String]? = nil, statusCode: NumberRange? = nil, sortBy: [QuerySortBy]? = nil, skip: Int? = nil, limit: Int? = nil, constraints: [String]? = nil, entityIds: [String]? = nil) {
        self.productIds = productIds
        self.tags = tags
        self.ids = ids
        self.statusCode = statusCode
        self.sortBy = sortBy
        self.skip = skip
        self.limit = limit
        self.constraints = constraints
        self.entityIds = entityIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productIds
        case tags
        case ids
        case statusCode
        case sortBy
        case skip
        case limit
        case constraints
        case entityIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(productIds, forKey: .productIds)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(sortBy, forKey: .sortBy)
        try container.encodeIfPresent(skip, forKey: .skip)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(constraints, forKey: .constraints)
        try container.encodeIfPresent(entityIds, forKey: .entityIds)
    }
}

