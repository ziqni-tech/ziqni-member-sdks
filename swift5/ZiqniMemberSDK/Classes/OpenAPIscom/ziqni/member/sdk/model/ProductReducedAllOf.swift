//
// ProductReducedAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductReducedAllOf: Codable, Hashable {

    /** The name of the product */
    public var name: String?
    /** The reference to this product in your system. The reference identifier can not be changed after the product has been created */
    public var productRefId: String?

    public init(name: String? = nil, productRefId: String? = nil) {
        self.name = name
        self.productRefId = productRefId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case productRefId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(productRefId, forKey: .productRefId)
    }
}
