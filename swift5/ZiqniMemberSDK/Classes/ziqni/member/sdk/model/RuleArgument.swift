//
// RuleArgument.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RuleArgument: Codable, Hashable {

    public var argument: String
    public var value: String?
    public var type: String?
    public var order: Int?

    public init(argument: String, value: String? = nil, type: String? = nil, order: Int? = nil) {
        self.argument = argument
        self.value = value
        self.type = type
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case argument
        case value
        case type
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(argument, forKey: .argument)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

