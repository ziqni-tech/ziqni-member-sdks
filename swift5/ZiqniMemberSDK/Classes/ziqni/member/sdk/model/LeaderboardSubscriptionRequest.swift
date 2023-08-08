//
// LeaderboardSubscriptionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LeaderboardSubscriptionRequest: Codable, Hashable {

    public enum Action: String, Codable, CaseIterable {
        case subscribe = "Subscribe"
        case unsubscribe = "Unsubscribe"
    }
    public var leaderboardFilter: LeaderboardFilter?
    /** Either the competition, contest, tournament or match identifier */
    public var entityId: String
    /** Either subscribe or unsubscribe from the data feed */
    public var action: Action

    public init(leaderboardFilter: LeaderboardFilter? = nil, entityId: String, action: Action) {
        self.leaderboardFilter = leaderboardFilter
        self.entityId = entityId
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case leaderboardFilter
        case entityId
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(leaderboardFilter, forKey: .leaderboardFilter)
        try container.encode(entityId, forKey: .entityId)
        try container.encode(action, forKey: .action)
    }
}

