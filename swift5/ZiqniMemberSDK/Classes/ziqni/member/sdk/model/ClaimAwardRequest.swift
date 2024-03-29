//
// ClaimAwardRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ClaimAwardRequest: Codable, Hashable {

    /** The language codes can be found in the settings/transalations section of the back office */
    public var languageKey: String?
    public var awardIds: [String]?

    public init(languageKey: String? = nil, awardIds: [String]? = nil) {
        self.languageKey = languageKey
        self.awardIds = awardIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case languageKey
        case awardIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(languageKey, forKey: .languageKey)
        try container.encodeIfPresent(awardIds, forKey: .awardIds)
    }
}

