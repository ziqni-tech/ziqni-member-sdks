//
// MessageAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MessageAllOf: Codable, Hashable {

    public var eventRefType: EventRefType?
    /** The reference ID of the event object */
    public var eventRefId: String?
    public var messageType: MessageType?
    /** The title of the message */
    public var subject: String?
    /** The context of the message */
    public var body: String?
    public var status: MessageStatus?
    /** The time that the message will disappear after. ISO8601 timestamp */
    public var expiry: Date?
    /** The reference ID of the event object */
    public var memberIds: [String]?
    public var memberTags: [String]?
    public var id: String

    public init(eventRefType: EventRefType? = nil, eventRefId: String? = nil, messageType: MessageType? = nil, subject: String? = nil, body: String? = nil, status: MessageStatus? = nil, expiry: Date? = nil, memberIds: [String]? = nil, memberTags: [String]? = nil, id: String) {
        self.eventRefType = eventRefType
        self.eventRefId = eventRefId
        self.messageType = messageType
        self.subject = subject
        self.body = body
        self.status = status
        self.expiry = expiry
        self.memberIds = memberIds
        self.memberTags = memberTags
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventRefType
        case eventRefId
        case messageType
        case subject
        case body
        case status
        case expiry
        case memberIds
        case memberTags
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(eventRefType, forKey: .eventRefType)
        try container.encodeIfPresent(eventRefId, forKey: .eventRefId)
        try container.encodeIfPresent(messageType, forKey: .messageType)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(expiry, forKey: .expiry)
        try container.encodeIfPresent(memberIds, forKey: .memberIds)
        try container.encodeIfPresent(memberTags, forKey: .memberTags)
        try container.encode(id, forKey: .id)
    }
}
