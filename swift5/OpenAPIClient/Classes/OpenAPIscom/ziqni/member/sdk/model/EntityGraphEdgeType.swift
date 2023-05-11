//
// EntityGraphEdgeType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The type of link */
public enum EntityGraphEdgeType: String, Codable, CaseIterable {
    case root = "ROOT"
    case must = "MUST"
    case should = "SHOULD"
    case mustNot = "MUST_NOT"
    case unknown = "UNKNOWN"
    case broken = "BROKEN"
}
