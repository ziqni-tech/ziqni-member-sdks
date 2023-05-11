//
// AchievementRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AchievementRequest: Codable, Hashable {

    public var achievementFilter: AchievementFilter?
    /** The language codes can be found in the settings/transalations section of the back office */
    public var languageKey: String?

    public init(achievementFilter: AchievementFilter? = nil, languageKey: String? = nil) {
        self.achievementFilter = achievementFilter
        self.languageKey = languageKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case achievementFilter
        case languageKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(achievementFilter, forKey: .achievementFilter)
        try container.encodeIfPresent(languageKey, forKey: .languageKey)
    }
}
