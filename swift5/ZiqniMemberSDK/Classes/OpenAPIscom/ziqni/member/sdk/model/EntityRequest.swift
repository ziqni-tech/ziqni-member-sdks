//
// EntityRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityRequest: Codable, Hashable {

    /** The language codes can be found in the settings/transalations section of the back office */
    public var languageKey: String?
    public var entityFilter: [EntityFilter]?
    public var sortBy: [QuerySortBy]?
    public var skip: Int?
    public var limit: Int?

    public init(languageKey: String? = nil, entityFilter: [EntityFilter]? = nil, sortBy: [QuerySortBy]? = nil, skip: Int? = nil, limit: Int? = nil) {
        self.languageKey = languageKey
        self.entityFilter = entityFilter
        self.sortBy = sortBy
        self.skip = skip
        self.limit = limit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case languageKey
        case entityFilter
        case sortBy
        case skip
        case limit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(languageKey, forKey: .languageKey)
        try container.encodeIfPresent(entityFilter, forKey: .entityFilter)
        try container.encodeIfPresent(sortBy, forKey: .sortBy)
        try container.encodeIfPresent(skip, forKey: .skip)
        try container.encodeIfPresent(limit, forKey: .limit)
    }
}
