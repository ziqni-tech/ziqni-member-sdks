//
// Achievement.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Achievement: Codable, Hashable {

    public var name: String?
    public var description: String?
    public var termsAndConditions: String?
    /** Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards] */
    public var constraints: [String]?
    /** Maximum number of issued achievements */
    public var maxNumberOfIssues: Int?
    public var scheduling: Scheduling?
    /** Achievement status */
    public var status: String?
    public var statusCode: Int?
    public var memberTagsFilter: DependantOn?
    public var achievementDependencies: DependantOn?
    public var productTagsFilter: DependantOn?
    /** Ziqni id of the model */
    public var id: String
    /** This is the space name which is linked to the account */
    public var spaceName: String?
    /** ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone */
    public var created: Date?
    public var customFields: [String: AnyCodable]?
    /** A list of id's used to tag models */
    public var tags: [String]?
    public var metadata: [String: String]?

    public init(name: String? = nil, description: String? = nil, termsAndConditions: String? = nil, constraints: [String]? = nil, maxNumberOfIssues: Int? = nil, scheduling: Scheduling? = nil, status: String? = nil, statusCode: Int? = nil, memberTagsFilter: DependantOn? = nil, achievementDependencies: DependantOn? = nil, productTagsFilter: DependantOn? = nil, id: String, spaceName: String? = nil, created: Date? = nil, customFields: [String: AnyCodable]? = nil, tags: [String]? = nil, metadata: [String: String]? = nil) {
        self.name = name
        self.description = description
        self.termsAndConditions = termsAndConditions
        self.constraints = constraints
        self.maxNumberOfIssues = maxNumberOfIssues
        self.scheduling = scheduling
        self.status = status
        self.statusCode = statusCode
        self.memberTagsFilter = memberTagsFilter
        self.achievementDependencies = achievementDependencies
        self.productTagsFilter = productTagsFilter
        self.id = id
        self.spaceName = spaceName
        self.created = created
        self.customFields = customFields
        self.tags = tags
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case termsAndConditions
        case constraints
        case maxNumberOfIssues
        case scheduling
        case status
        case statusCode
        case memberTagsFilter
        case achievementDependencies
        case productTagsFilter
        case id
        case spaceName
        case created
        case customFields
        case tags
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(termsAndConditions, forKey: .termsAndConditions)
        try container.encodeIfPresent(constraints, forKey: .constraints)
        try container.encodeIfPresent(maxNumberOfIssues, forKey: .maxNumberOfIssues)
        try container.encodeIfPresent(scheduling, forKey: .scheduling)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(memberTagsFilter, forKey: .memberTagsFilter)
        try container.encodeIfPresent(achievementDependencies, forKey: .achievementDependencies)
        try container.encodeIfPresent(productTagsFilter, forKey: .productTagsFilter)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(spaceName, forKey: .spaceName)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(customFields, forKey: .customFields)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}
