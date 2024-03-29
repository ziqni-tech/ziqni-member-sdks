//
// EntityStateChanged.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EntityStateChanged: Codable, Hashable {

    public var entityId: String?
    public var entityType: String?
    public var changedAt: Date?
    public var changedBy: String?
    public var typeOffChange: Int?
    public var displayName: String?
    public var accountId: String?
    public var sequenceNumber: Int64?
    public var entityRefId: String?
    public var entityParentId: String?
    public var metadata: AnyCodable?
    public var previousState: Int?
    public var currentState: Int?

    public init(entityId: String? = nil, entityType: String? = nil, changedAt: Date? = nil, changedBy: String? = nil, typeOffChange: Int? = nil, displayName: String? = nil, accountId: String? = nil, sequenceNumber: Int64? = nil, entityRefId: String? = nil, entityParentId: String? = nil, metadata: AnyCodable? = nil, previousState: Int? = nil, currentState: Int? = nil) {
        self.entityId = entityId
        self.entityType = entityType
        self.changedAt = changedAt
        self.changedBy = changedBy
        self.typeOffChange = typeOffChange
        self.displayName = displayName
        self.accountId = accountId
        self.sequenceNumber = sequenceNumber
        self.entityRefId = entityRefId
        self.entityParentId = entityParentId
        self.metadata = metadata
        self.previousState = previousState
        self.currentState = currentState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entityId
        case entityType
        case changedAt
        case changedBy
        case typeOffChange
        case displayName
        case accountId
        case sequenceNumber
        case entityRefId
        case entityParentId
        case metadata
        case previousState
        case currentState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityType, forKey: .entityType)
        try container.encodeIfPresent(changedAt, forKey: .changedAt)
        try container.encodeIfPresent(changedBy, forKey: .changedBy)
        try container.encodeIfPresent(typeOffChange, forKey: .typeOffChange)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(sequenceNumber, forKey: .sequenceNumber)
        try container.encodeIfPresent(entityRefId, forKey: .entityRefId)
        try container.encodeIfPresent(entityParentId, forKey: .entityParentId)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(previousState, forKey: .previousState)
        try container.encodeIfPresent(currentState, forKey: .currentState)
    }
}

