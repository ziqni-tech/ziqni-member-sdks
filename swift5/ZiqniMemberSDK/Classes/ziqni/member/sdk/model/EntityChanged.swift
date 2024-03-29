//
// EntityChanged.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityChanged: Codable, Hashable {

    public var entityId: String?
    public var entityType: String?
    public var changedAt: Date?
    public var typeOffChange: Int?
    public var changedBy: String?
    public var displayName: String?
    public var accountId: String?
    public var sequenceNumber: Int64?
    public var entityRefId: String?
    public var entityParentId: String?
    public var metadata: [String: AnyCodable]?

    public init(entityId: String? = nil, entityType: String? = nil, changedAt: Date? = nil, typeOffChange: Int? = nil, changedBy: String? = nil, displayName: String? = nil, accountId: String? = nil, sequenceNumber: Int64? = nil, entityRefId: String? = nil, entityParentId: String? = nil, metadata: [String: AnyCodable]? = nil) {
        self.entityId = entityId
        self.entityType = entityType
        self.changedAt = changedAt
        self.typeOffChange = typeOffChange
        self.changedBy = changedBy
        self.displayName = displayName
        self.accountId = accountId
        self.sequenceNumber = sequenceNumber
        self.entityRefId = entityRefId
        self.entityParentId = entityParentId
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entityId
        case entityType
        case changedAt
        case typeOffChange
        case changedBy
        case displayName
        case accountId
        case sequenceNumber
        case entityRefId
        case entityParentId
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityType, forKey: .entityType)
        try container.encodeIfPresent(changedAt, forKey: .changedAt)
        try container.encodeIfPresent(typeOffChange, forKey: .typeOffChange)
        try container.encodeIfPresent(changedBy, forKey: .changedBy)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(sequenceNumber, forKey: .sequenceNumber)
        try container.encodeIfPresent(entityRefId, forKey: .entityRefId)
        try container.encodeIfPresent(entityParentId, forKey: .entityParentId)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

